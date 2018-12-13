unit uSangForSDK;


interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,


  {$IFDEF ANDROID}
  Androidapi.Helpers,
  FMX.Platform.Android,
  FMX.Helpers.Android,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.App,
  Androidapi.JNI.Os,
  Androidapi.JNI.Widget,
  Androidapi.NativeActivity,
  Androidapi.JNI.Telephony,
  Androidapi.JNI.Provider,
  Androidapi.JNI.Java.Net,

  Androidapi.JNI.Embarcadero,
  Androidapi.JNI.GraphicsContentViewText,

  Androidapi.JNI.SangforSDK,
  {$ENDIF}


  {$IFDEF IOS}
  iOSapi.Foundation,
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
  iOSApi.CoreTelephony,
  iOSApi.Security,
  Macapi.Helpers,

  AuthHelper_iOSApi,
  sdkheader_iOSApi,
//  sslvpnnb_iOSApi,

  Posix.NetDB,
  Posix.ArpaInet,
  System.Net.Socket,
  Posix.NetinetIn,
  Posix.SysSocket,
  Posix.SysSelect,

  {$ENDIF}


  FMX.Types;




type
  {$IFDEF ANDROID}
  TOnvpnCallbackEvent=procedure(vpnResult: Integer; authType: Integer) of object;
  TOnreloginCallbackEvent=procedure(P1: Integer; P2: Integer) of object;
  TOnvpnRndCodeCallbackEvent=procedure(P1: TJavaArray<Byte>) of object;


  TJIVpnDelegate = class(TJavaLocal, JIVpnDelegate)
    { Property Methods }
    OnvpnCallback:TOnvpnCallbackEvent;
    OnreloginCallback:TOnreloginCallbackEvent;
    OnvpnRndCodeCallback:TOnvpnRndCodeCallbackEvent;
    { methods }
    procedure vpnCallback(vpnResult: Integer; authType: Integer); cdecl;
    procedure reloginCallback(P1: Integer; P2: Integer); cdecl;
    procedure vpnRndCodeCallback(P1: TJavaArray<Byte>); cdecl;
    { Property }
  end;
  {$ENDIF}






  //VPN验证成功事件
  TVPNAuthSuccEvent=procedure(Sender:TObject;AAuthType:Integer) of object;

  TSangForSDK = class
  private
    {$IFDEF ANDROID}
    sfauth:JSangforAuth;
    delegate:TJIVpnDelegate;
    procedure DovpnCallback(vpnResult: Integer; authType: Integer);
    procedure DoreloginCallback(P1: Integer; P2: Integer);
    procedure DovpnRndCodeCallback(P1: TJavaArray<Byte>);
    {$ENDIF}
    { Private declarations }
  public
    {$IFDEF IOS}
    FAuthHelper:AuthHelper;
    delegate:TSangforSDKDelegate;
    procedure Do_OnonCallBackauthType(const vpnErrno: VPN_RESULT_NO;const authType: int);
    procedure Do_OnonReloginCallbackresult(const status: int;const result: int);
    function Do_OnonSelectIdentitycount(const vector: PIdentityData{*};count:int):Integer;
    procedure Do_OnonRndCodeCallBack(data:NSData{*});
    {$ENDIF}
  protected
    procedure DoInitVPNSucc;virtual;
    procedure DoInitVPNFail;virtual;
    procedure DoVPNAuthFail;virtual;
    procedure DoVPNAuthSucc(AAuthType:Integer);virtual;
    procedure DoVPNLogout;virtual;
  public
    //初始失败事件
    OnInitVPNFail:TNotifyEvent;
    //初始成功事件
    OnInitVPNSucc:TNotifyEvent;
    //验证失败事件
    OnVPNAuthFail:TNotifyEvent;
    //验证成功事件
    OnVPNAuthSucc:TVPNAuthSuccEvent;
    //注销事件
    OnVPNLogout:TNotifyEvent;


    //初始VPN
    procedure InitSDK;
    //初始服务器
    procedure InitSSLVpn(AHost: String; APort: Integer);
    //登录VPN
    procedure VpnLogin(AAuthType: Integer;
                        AUserName:String;
                        APassword:String
                        //;
//                        ACertPassword:String;
//                        ACertFileName:String;
//                        ASmsCode:String
                        );
    //登录
    procedure VpnLogout;
    function GetVpnError:String;
  public
    constructor Create;
    destructor Destroy;override;
    { Public declarations }
  end;


implementation


{ TSangForSDK }

procedure TSangForSDK.DoVPNAuthFail;
begin
  if Assigned(OnVPNAuthFail) then
  begin
    OnVPNAuthFail(Self);
  end;
end;

procedure TSangForSDK.DoVPNAuthSucc(AAuthType: Integer);
begin
  if Assigned(OnVPNAuthSucc) then
  begin
    OnVPNAuthSucc(Self,AAuthType);
  end;
end;

procedure TSangForSDK.DoVPNLogout;
begin
  if Assigned(OnVPNLogout) then
  begin
    OnVPNLogout(Self);
  end;
end;

function TSangForSDK.GetVpnError: String;
begin
  Result:='';
  {$IFDEF IOS}
  Result:=NSStrToStr(FAuthHelper.getVpnError);
  {$ENDIF}

  {$IFDEF ANDROID}
  Result:=JStringToString(sfauth.vpnGeterr());
  {$ENDIF}

end;

procedure TSangForSDK.InitSDK;
begin
  //初始
  FMX.Types.Log.d('OrangeUI TSangForSDK.InitSDK');


  {$IFDEF IOS}
  if FAuthHelper=nil then
  begin
      FAuthHelper:=TAuthHelper.OCClass.getInstance;

      delegate:=TSangforSDKDelegate.Create;

      delegate.OnonCallBackauthType:=Self.Do_OnonCallBackauthType;
      delegate.OnonReloginCallbackresult:=Self.Do_OnonReloginCallbackresult;
      delegate.OnonSelectIdentitycount:=Self.Do_OnonSelectIdentitycount;
      delegate.OnonRndCodeCallBack:=Self.Do_OnonRndCodeCallBack;
  end;
  {$ENDIF}


  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  begin
      try

        if sfauth=nil then
        begin
          delegate:=TJIVpnDelegate.Create;
          delegate.OnvpnCallback:=Self.DovpnCallback;
          delegate.OnreloginCallback:=Self.DoreloginCallback;
          delegate.OnvpnRndCodeCallback:=Self.DovpnRndCodeCallback;


          FMX.Types.Log.d('OrangeUI TJSangforAuth.JavaClass.getInstance');
          //初始
          sfauth:=TJSangforAuth.JavaClass.getInstance;
          FMX.Types.Log.d('OrangeUI TJSangforAuth.JavaClass.getInstance End');

          FMX.Types.Log.d('OrangeUI sfauth.init');
          sfauth.init(SharedActivity.getApplicationContext,
                      delegate,
                      TJSangforAuth.JavaClass.AUTH_MODULE_EASYAPP
                      );

          FMX.Types.Log.d('OrangeUI sfauth.init End');
        end;

      except
        on E:Exception do
        begin
          FMX.Types.Log.d('OrangeUI sfauth.init Exception'+E.Message);
        end;
      end;
  end);
  {$ENDIF}

end;

procedure TSangForSDK.InitSSLVpn(AHost:String;APort:Integer);
begin
  FMX.Types.Log.d('OrangeUI TSangForSDK.InitSSLVpn');

  {$IFDEF IOS}
  FAuthHelper.setHostportdelegate(
                NSStr(AHost),
                APort,
                (delegate as ILocalObject).GetObjectID
                );
  {$ENDIF}


  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  var
    iAddr:JInetAddress;
    host:Int64;
  begin
      try
          FMX.Types.Log.d('OrangeUI TJInetAddress.JavaClass.getByName');
          iAddr:=TJInetAddress.JavaClass.getByName(StringToJString(AHost));

          if iAddr<>nil then
          begin

              FMX.Types.Log.d('OrangeUI sfauth.vpnInit '+JStringToString(iAddr.getHostAddress));
              host:=TJVpnCommon.JavaClass.ipToLong(iAddr.getHostAddress);
              FMX.Types.Log.d('OrangeUI sfauth.vpnInit host '+IntToStr(host));

              FMX.Types.Log.d('OrangeUI sfauth.vpnInit Begin');
              if sfauth.vpnInit(host,APort) then
              begin
                FMX.Types.Log.d('OrangeUI sfauth.vpnInit Succ');

              end
              else
              begin
                FMX.Types.Log.d('OrangeUI sfauth.vpnInit Fail');

                Self.DoInitVPNFail;

              end;

          end;

      except
        on E:Exception do
        begin
          FMX.Types.Log.d('OrangeUI InitSSLVpn Exception'+E.Message);
        end;
      end;

  end);
  {$ENDIF}

end;

procedure TSangForSDK.VpnLogout;
begin
  //退出
  FMX.Types.Log.d('OrangeUI VpnLogin VpnLogout');

  {$IFDEF IOS}
  FAuthHelper.logoutVpn;
  {$ENDIF}

  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  begin
    TJSangforAuth.JavaClass.getInstance.vpnLogout;
  end);
  {$ENDIF}
end;

constructor TSangForSDK.Create;
begin

end;

destructor TSangForSDK.Destroy;
begin
  {$IFDEF IOS}
  if FAuthHelper<>nil then
  begin
    delegate.OnonCallBackauthType:=nil;
    delegate.OnonReloginCallbackresult:=nil;
    delegate.OnonSelectIdentitycount:=nil;
    delegate.OnonRndCodeCallBack:=nil;
    FAuthHelper.setDelegate(nil);
    FAuthHelper:=nil;
    FreeAndNil(delegate);
  end;
  {$ENDIF}

  {$IFDEF ANDROID}
  if sfauth<>nil then
  begin
    sfauth:=nil;
    delegate.OnvpnCallback:=nil;
    delegate.OnreloginCallback:=nil;
    delegate.OnvpnRndCodeCallback:=nil;
    FreeAndNil(delegate);
  end;
  {$ENDIF}

  inherited;
end;

procedure TSangForSDK.DoInitVPNFail;
begin
  if Assigned(OnInitVPNFail) then
  begin
    OnInitVPNFail(Self);
  end;
end;

procedure TSangForSDK.DoInitVPNSucc;
begin
  if Assigned(OnInitVPNSucc) then
  begin
    OnInitVPNSucc(Self);
  end;
end;

procedure TSangForSDK.VpnLogin(AAuthType: Integer;
                                AUserName:String;
                                APassword:String
//                                ;
//                                ACertPassword:String;
//                                ACertFileName:String;
//                                ASmsCode:String
                                );
begin
  //登录
  FMX.Types.Log.d('OrangeUI VpnLogin AAuthType '+IntToStr(AAuthType));

  {$IFDEF IOS}

  //密码登录
  if AAuthType=SSL_AUTH_TYPE_PASSWORD then
  begin
    FAuthHelper.setAuthParamparam(NSStr(PORPERTY_NamePasswordAuth_NAME),NSStr(AUserName));

    FAuthHelper.setAuthParamparam(NSStr(PORPERTY_NamePasswordAuth_PASSWORD),NSStr(APassword));

    FAuthHelper.loginVpn(SSL_AUTH_TYPE_PASSWORD);
  end
//  //短信登录
//  else
//  if AAuthType=SSL_AUTH_TYPE_SMS then
//  begin
//    FAuthHelper.setAuthParamparam(SMS_AUTH_CODE,ASmsCode);
//    FAuthHelper.loginVpn(SSL_AUTH_TYPE_SMS);
//  end
  else
  begin
      FMX.Types.Log.d('OrangeUI VpnLogin default authType '+IntToStr(AAuthType));
  end;


  {$ENDIF}

  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  var
    ret:Boolean;
  begin

      ret:=False;

//      if AAuthType=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_CERTIFICATE then
//      begin
//          sfAuth.setLoginParam(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.CERT_PASSWORD,
//                              StringToJString(ACertPassword));
//          sfAuth.setLoginParam(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.CERT_P12_FILE_NAME,
//                              StringToJString(ACertFileName));
//          ret:=sfAuth.vpnLogin(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_CERTIFICATE);
//      end
//      else
      if AAuthType=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_PASSWORD then
      begin
          sfAuth.setLoginParam(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.PASSWORD_AUTH_USERNAME,
                              StringToJString(AUserName));
          sfAuth.setLoginParam(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.PASSWORD_AUTH_PASSWORD,
                              StringToJString(APassword));
          ret:=sfAuth.vpnLogin(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_PASSWORD);
      end
//      else
//      if AAuthType=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_SMS then
//      begin
//          sfAuth.setLoginParam(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.SMS_AUTH_CODE,
//                              StringToJString(ASmsCode));
//          ret:=sfAuth.vpnLogin(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_SMS);
//      end
//      else
//      if AAuthType=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_SMS1 then
//      begin
//          ret:=sfAuth.vpnLogin(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_SMS1);
//      end
      else
      begin
          FMX.Types.Log.d('OrangeUI VpnLogin default authType '+IntToStr(AAuthType));
      end;;

      if ret=True then
      begin
          FMX.Types.Log.d('OrangeUI VpnLogin success to call login method');
      end
      else
      begin
          FMX.Types.Log.d('OrangeUI VpnLogin fail to call login method');
      end;

  end);
  {$ENDIF}

end;











  {$IFDEF ANDROID}

procedure TSangForSDK.DoreloginCallback(P1, P2: Integer);
begin
  FMX.Types.Log.d('OrangeUI TSangForSDK.DoreloginCallback');

end;

procedure TSangForSDK.DovpnCallback(vpnResult, authType: Integer);
begin
  FMX.Types.Log.d('OrangeUI TJIVpnDelegate.DovpnCallback');


  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_INIT_FAIL then
  begin
      //初始化vpn失败
      FMX.Types.Log.d('OrangeUI RESULT_VPN_INIT_FAIL, error is '
                      +JStringToString(sfauth.vpnGeterr()));
      CallInUIThread(
      procedure
      begin
        DoInitVPNFail;
      end);
  end
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_INIT_SUCCESS then
  begin
      //初始化vpn成功，接下来就需要开始认证工作了
      FMX.Types.Log.d('OrangeUI RESULT_VPN_INIT_SUCCESS, current vpn status is '
                      +IntToStr(sfauth.vpnQueryStatus()));

      CallInUIThread(
      procedure
      begin
        DoInitVPNSucc;
      end);
  end



  ////////////////////////////////////
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_AUTH_FAIL then
  begin
      //认证失败，有可能是传入参数有误，具体信息可通过sfAuth.vpnGeterr()获取
      FMX.Types.Log.d('OrangeUI RESULT_VPN_AUTH_FAIL, error is '
                      +JStringToString(sfauth.vpnGeterr()));
      CallInUIThread(
      procedure
      begin
        DoVPNAuthFail;
      end);

  end
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_AUTH_SUCCESS then
  begin
      //认证成功，认证成功有两种情况，
      //一种是认证通过，可以使用sslvpn功能了，
      //另一种是前一个认证（如：用户名密码认证）通过，
      //但需要继续认证（如：需要继续证书认证）
      FMX.Types.Log.d('OrangeUI RESULT_VPN_AUTH_SUCCESS');




      CallInUIThread(
      procedure
      begin
        DoVPNAuthSucc(authType);
      end);

      if (authType = Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_NONE) then
      begin
          FMX.Types.Log.d('OrangeUI welcom to sangfor sslvpn!');

          // 若为L3vpn流程，认证成功后开启自动开启l3vpn服务
          if (TJSangforAuth.JavaClass.getInstance().getModuleUsed() = TJSangforAuth.JavaClass.AUTH_MODULE_EASYAPP) then
          begin
              //EasyApp流程，认证流程结束，可访问资源。
              FMX.Types.Log.d('OrangeUI doResourceRequest!');
              //Self.doResourceRequest();
          end
          else
          begin
               FMX.Types.Log.d('OrangeUI other flow!');
          end;

      end;

//      if (authType = Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_NONE) then
//      begin
//          FMX.Types.Log.d('OrangeUI welcom to sangfor sslvpn!');
//
//          // 若为L3vpn流程，认证成功后开启自动开启l3vpn服务
//          if (TJSangforAuth.JavaClass.getInstance().getModuleUsed() = TJSangforAuth.JavaClass.AUTH_MODULE_EASYAPP) then
//          begin
//              //EasyApp流程，认证流程结束，可访问资源。
//              Self.doResourceRequest();
//          end;
//
//      end
//      else
//      begin
//          FMX.Types.Log.d('OrangeUI auth success, and need next auth, next auth type is  '
//                          +IntToStr(authType));
//
//          if (authType = Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_SMS) then
//          begin
//              // 输入短信验证码
//              FMX.Types.Log.d('OrangeUI you need send sms code.');
//              //Toast.makeText(this, "you need send sms code.", Toast.LENGTH_LONG).show();
//          end
//          else
//          begin
//              //VpnLogin(authType);
//              Self.VpnLogin(authType,
//                                Self.edtUserName.Text,
//                                Self.edtPassword.Text,
//                                '','',
//                                ''
//                                );
//          end;
//
//      end;

  end
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_AUTH_CANCEL then
  begin
      FMX.Types.Log.d('OrangeUI RESULT_VPN_AUTH_CANCEL');
  end
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_AUTH_LOGOUT then
  begin
      //主动注销（自己主动调用logout接口）或者被动注销（通过控制台把用户踢掉）均会调用该接口
      FMX.Types.Log.d('OrangeUI RESULT_VPN_AUTH_LOGOUT');

      CallInUIThread(
      procedure
      begin
        DoVPNLogout;
      end);

  end



  ////////////////////////
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_L3VPN_FAIL then
  begin
      //L3vpn启动失败，有可能是没有l3vpn资源，具体信息可通过sfAuth.vpnGeterr()获取
      FMX.Types.Log.d('OrangeUI RESULT_VPN_L3VPN_FAIL, error is '
                      +JStringToString(sfauth.vpnGeterr()));
  end
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_L3VPN_SUCCESS then
  begin
      //L3vpn启动成功
      FMX.Types.Log.d('OrangeUI RESULT_VPN_L3VPN_SUCCESS');
  end


  ////////////////////
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.VPN_STATUS_ONLINE then
  begin
      //与设备连接建立
      FMX.Types.Log.d('OrangeUI VPN_STATUS_ONLINE');
  end
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.VPN_STATUS_OFFLINE then
  begin
      //与设备连接断开
      FMX.Types.Log.d('OrangeUI VPN_STATUS_OFFLINE');
  end
  else
  begin
      FMX.Types.Log.d('OrangeUI default result, vpn result is '+IntToStr(vpnResult));
  end;

end;

procedure TSangForSDK.DovpnRndCodeCallback(P1: TJavaArray<Byte>);
begin
  FMX.Types.Log.d('OrangeUI TJIVpnDelegate.DovpnRndCodeCallback');
end;

  {$ENDIF}






  {$IFDEF IOS}


procedure TSangForSDK.Do_OnonCallBackauthType(const vpnErrno: VPN_RESULT_NO;const authType: int);
begin
  FMX.Types.Log.d('OrangeUI TSangForSDK.Do_OnonCallBackauthType vpnErrno='+IntToStr(vpnErrno)+' authType='+IntToStr(authType));

  if vpnErrno=Ord(RESULT_VPN_INIT_FAIL) then
  begin
      FMX.Types.Log.d('OrangeUI Vpn Init failed! '+Self.GetVpnError);

      DoInitVPNFail;

  end
  else
  if vpnErrno=Ord(RESULT_VPN_INIT_SUCCESS) then
  begin
      FMX.Types.Log.d('OrangeUI vpn init success!');

      DoInitVPNSucc;

  end
  else
  if vpnErrno=Ord(RESULT_VPN_AUTH_FAIL) then
  begin
      FMX.Types.Log.d('OrangeUI vpn auth failed! '+Self.GetVpnError);
      FAuthHelper.clearAuthParam(NSStr(SET_RND_CODE_STR));
      FAuthHelper.queryVpnStatus;

      DoVPNAuthFail;

  end
  else
  if vpnErrno=Ord(RESULT_VPN_AUTH_SUCCESS) then
  begin
      FMX.Types.Log.d('OrangeUI vpn auth success!');

      FMX.Types.Log.d('OrangeUI start other auth! authType='+IntToStr(authType));

      DoVPNAuthSucc(authType);


//      //二次验证
//      if authType=SSL_AUTH_TYPE_PASSWORD then
//      begin
//          FMX.Types.Log.d('OrangeUI Start Password Name Auth!!!');
//
//          FAuthHelper.setAuthParamparam(PORPERTY_NamePasswordAuth_NAME,Self.edtUserName.Text);
//          FAuthHelper.setAuthParamparam(PORPERTY_NamePasswordAuth_PASSWORD,Self.edtPassword.Text);
//
//          FAuthHelper.loginVpn(authType);
//      end
//      else
//      if (authType=SSL_AUTH_TYPE_SMS) then
//      begin
//          FMX.Types.Log.d('OrangeUI Start SMS Auth!!!');
//
//          ShowMessage('需要短信二次验证!');
//      end
//      else
//      if (authType=SSL_AUTH_TYPE_RADIUS) then
//      begin
//          FMX.Types.Log.d('OrangeUI Start Radius Auth!!!');
//
//          ShowMessage('需要Radius二次验证!');
//      end
//      else
//      if (authType=SSL_AUTH_TYPE_TOKEN) then
//      begin
//          FMX.Types.Log.d('OrangeUI Start Token Auth!!!');
//
//          ShowMessage('需要Token二次验证!');
//      end
//      else
//      if authType=SSL_AUTH_TYPE_NONE then
//      begin
//          FMX.Types.Log.d('OrangeUI vpn auth success!');
//
//      end
//      else
//      begin
//          FMX.Types.Log.d('Other failed!!!');
//
//      end
//      ;

  end
  else
  if vpnErrno=Ord(RESULT_VPN_AUTH_LOGOUT) then
  begin
      FMX.Types.Log.d('OrangeUI Vpn logout success!');

      DoVPNLogout;

  end
  else
  if vpnErrno=Ord(RESULT_VPN_OTHER) then
  begin
      FMX.Types.Log.d('Vpn relogin failed, maybe network error!');
  end
  ;

end;

procedure TSangForSDK.Do_OnonReloginCallbackresult(const status: int;const result: int);
begin
  FMX.Types.Log.d('OrangeUI TSangForSDK.Do_OnonReloginCallbackresult');

  if status=START_RECONNECT then
  begin
    FMX.Types.Log.d('OrangeUI vpn relogin start reconnect ...');
  end
  else
  if status=END_RECONNECT then
  begin
    FMX.Types.Log.d('OrangeUI vpn relogin end ...');
    if result=SUCCESS then
    begin
      FMX.Types.Log.d('OrangeUI Vpn relogin success!');
    end
    else
    begin
      FMX.Types.Log.d('OrangeUI Vpn relogin failed');
    end;
  end;

end;

function TSangForSDK.Do_OnonSelectIdentitycount(const vector: PIdentityData{*};count:int):Integer;
begin
  FMX.Types.Log.d('OrangeUI TSangForSDK.Do_OnonSelectIdentitycount');

  Result:=-1;
end;

procedure TSangForSDK.Do_OnonRndCodeCallBack(data:NSData{*});
begin
  FMX.Types.Log.d('OrangeUI TSangForSDK.Do_OnonRndCodeCallBack');

end;
  {$ENDIF}






  {$IFDEF ANDROID}

{ TJIVpnDelegate }

procedure TJIVpnDelegate.reloginCallback(P1, P2: Integer);
begin
  FMX.Types.Log.d('OrangeUI TJIVpnDelegate.reloginCallback');

  if Assigned(OnreloginCallback) then
  begin
    OnreloginCallback(P1,P2);
  end;
end;

procedure TJIVpnDelegate.vpnCallback(vpnResult, authType: Integer);
begin
  FMX.Types.Log.d('OrangeUI TJIVpnDelegate.vpnCallback');

  if Assigned(OnvpnCallback) then
  begin
    OnvpnCallback(vpnResult,authType);
  end;

end;

procedure TJIVpnDelegate.vpnRndCodeCallback(P1: TJavaArray<Byte>);
begin
  FMX.Types.Log.d('OrangeUI TJIVpnDelegate.vpnRndCodeCallback');

  if Assigned(OnvpnRndCodeCallback) then
  begin
    OnvpnRndCodeCallback(P1);
  end;

end;
  {$ENDIF}



end.

