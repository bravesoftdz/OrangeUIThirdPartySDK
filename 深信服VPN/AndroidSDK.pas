unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,


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


  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;




type
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



  TForm1 = class(TForm)
    btnInit: TButton;
    btnLogin: TButton;
    edtHost: TEdit;
    edtPort: TEdit;
    edtUserName: TEdit;
    edtPassword: TEdit;
    btnLogout: TButton;
    procedure btnInitClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
  private
    sfauth:JSangforAuth;
    delegate:TJIVpnDelegate;
    procedure DovpnCallback(vpnResult: Integer; authType: Integer);
    procedure DoreloginCallback(P1: Integer; P2: Integer);
    procedure DovpnRndCodeCallback(P1: TJavaArray<Byte>);

  private
    //��ʼVPN
    procedure InitSSLVpn(AHost: String; APort: Integer);
    //��¼VPN
    procedure doVpnLogin(AAuthType: Integer;
                        AUserName:String;
                        APassword:String;
                        ACertPassword:String;
                        ACertFileName:String;
                        ASmsCode:String);
    //������Դ
    procedure doResourceRequest();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

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

{ TForm1 }

procedure TForm1.btnInitClick(Sender: TObject);
begin

  CallInUIThread(
  procedure
  begin
      FMX.Types.Log.d('OrangeUI TJSangforAuth.JavaClass.getInstance');
      //��ʼ
      sfauth:=TJSangforAuth.JavaClass.getInstance;
      FMX.Types.Log.d('OrangeUI TJSangforAuth.JavaClass.getInstance End');


      delegate:=TJIVpnDelegate.Create;
      delegate.OnvpnCallback:=Self.DovpnCallback;
      delegate.OnreloginCallback:=Self.DoreloginCallback;
      delegate.OnvpnRndCodeCallback:=Self.DovpnRndCodeCallback;


      try

          FMX.Types.Log.d('OrangeUI sfauth.init');
          sfauth.init(SharedActivity.getApplicationContext,
                      delegate,
                      TJSangforAuth.JavaClass.AUTH_MODULE_EASYAPP
                      );
          FMX.Types.Log.d('OrangeUI sfauth.init End');

      except
        on E:Exception do
        begin
          FMX.Types.Log.d('OrangeUI sfauth.init Exception'+E.Message);
        end;
      end;
  end);
end;

procedure TForm1.InitSSLVpn(AHost:String;APort:Integer);
begin

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

              end;

          end;

      except
        on E:Exception do
        begin
          FMX.Types.Log.d('OrangeUI InitSSLVpn Exception'+E.Message);
        end;
      end;

  end);

end;

procedure TForm1.btnLoginClick(Sender: TObject);
begin
  InitSSLVpn(Self.edtHost.Text,StrToInt(Self.edtPort.Text));
end;

procedure TForm1.btnLogoutClick(Sender: TObject);
begin
  TJSangforAuth.JavaClass.getInstance.vpnLogout;
end;

procedure TForm1.DoreloginCallback(P1, P2: Integer);
begin
  FMX.Types.Log.d('OrangeUI TForm1.DoreloginCallback');

end;

procedure TForm1.doResourceRequest;
begin
  FMX.Types.Log.d('OrangeUI TForm1.doResourceRequest');

end;

procedure TForm1.DovpnCallback(vpnResult, authType: Integer);
var
  sfAuth:JSangforAuth;
begin
  FMX.Types.Log.d('OrangeUI TJIVpnDelegate.DovpnCallback');



  //��ʼ
  sfauth:=TJSangforAuth.JavaClass.getInstance;



  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_INIT_FAIL then
  begin
      //��ʼ��vpnʧ��
      FMX.Types.Log.d('OrangeUI RESULT_VPN_INIT_FAIL, error is '
                      +JStringToString(sfauth.vpnGeterr()));
  end
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_INIT_SUCCESS then
  begin
      //��ʼ��vpn�ɹ�������������Ҫ��ʼ��֤������
      FMX.Types.Log.d('OrangeUI RESULT_VPN_INIT_SUCCESS, current vpn status is '
                      +IntToStr(sfauth.vpnQueryStatus()));
      doVpnLogin(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_PASSWORD,
                  Self.edtUserName.Text,
                  Self.edtPassword.Text,
                  '','',
                  '');
  end



  ////////////////////////////////////
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_AUTH_FAIL then
  begin
      //��֤ʧ�ܣ��п����Ǵ���������󣬾�����Ϣ��ͨ��sfAuth.vpnGeterr()��ȡ
      FMX.Types.Log.d('OrangeUI RESULT_VPN_AUTH_FAIL, error is '
                      +JStringToString(sfauth.vpnGeterr()));
  end
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_AUTH_SUCCESS then
  begin
      //��֤�ɹ�����֤�ɹ������������һ������֤ͨ��������ʹ��sslvpn�����ˣ���һ����ǰһ����֤���磺�û���������֤��ͨ����
      //����Ҫ������֤���磺��Ҫ����֤����֤��
      FMX.Types.Log.d('OrangeUI RESULT_VPN_AUTH_SUCCESS');

      if (authType = Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_NONE) then
      begin
          FMX.Types.Log.d('OrangeUI welcom to sangfor sslvpn!');

          // ��ΪL3vpn���̣���֤�ɹ������Զ�����l3vpn����
          if (TJSangforAuth.JavaClass.getInstance().getModuleUsed() = TJSangforAuth.JavaClass.AUTH_MODULE_EASYAPP) then
          begin
              //EasyApp���̣���֤���̽������ɷ�����Դ��
              Self.doResourceRequest();
          end;

      end
      else
      begin
          FMX.Types.Log.d('OrangeUI auth success, and need next auth, next auth type is  '
                          +IntToStr(authType));

          if (authType = Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_SMS) then
          begin
              // ���������֤��
              FMX.Types.Log.d('OrangeUI you need send sms code.');
              //Toast.makeText(this, "you need send sms code.", Toast.LENGTH_LONG).show();
          end
          else
          begin
              //doVpnLogin(authType);
              Self.doVpnLogin(authType,
                                Self.edtUserName.Text,
                                Self.edtPassword.Text,
                                '','',
                                ''
                                );
          end;

      end;

  end
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_AUTH_CANCEL then
  begin
      FMX.Types.Log.d('OrangeUI RESULT_VPN_AUTH_CANCEL');
  end
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_AUTH_LOGOUT then
  begin
      //����ע�����Լ���������logout�ӿڣ����߱���ע����ͨ������̨���û��ߵ���������øýӿ�
      FMX.Types.Log.d('OrangeUI RESULT_VPN_AUTH_LOGOUT');
  end



  ////////////////////////
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_L3VPN_FAIL then
  begin
      //L3vpn����ʧ�ܣ��п�����û��l3vpn��Դ��������Ϣ��ͨ��sfAuth.vpnGeterr()��ȡ
      FMX.Types.Log.d('OrangeUI RESULT_VPN_L3VPN_FAIL, error is '
                      +JStringToString(sfauth.vpnGeterr()));
  end
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.RESULT_VPN_L3VPN_SUCCESS then
  begin
      //L3vpn�����ɹ�
      FMX.Types.Log.d('OrangeUI RESULT_VPN_L3VPN_SUCCESS');
  end


  ////////////////////
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.VPN_STATUS_ONLINE then
  begin
      //���豸���ӽ���
      FMX.Types.Log.d('OrangeUI VPN_STATUS_ONLINE');
  end
  else
  if vpnResult=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.VPN_STATUS_OFFLINE then
  begin
      //���豸���ӶϿ�
      FMX.Types.Log.d('OrangeUI VPN_STATUS_OFFLINE');
  end
  else
  begin
      FMX.Types.Log.d('OrangeUI default result, vpn result is '+IntToStr(vpnResult));

  end
  ;


end;

procedure TForm1.doVpnLogin(AAuthType: Integer;
                            AUserName:String;
                            APassword:String;
                            ACertPassword:String;
                            ACertFileName:String;
                            ASmsCode:String);
var
  ret:Boolean;
  sfAuth:JSangforAuth;
begin
  FMX.Types.Log.d('OrangeUI doVpnLogin AAuthType '+IntToStr(AAuthType));
  ret:=False;

  //��ʼ
  sfauth:=TJSangforAuth.JavaClass.getInstance;

  if AAuthType=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_CERTIFICATE then
  begin
      sfAuth.setLoginParam(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.CERT_PASSWORD,
                          StringToJString(ACertPassword));
      sfAuth.setLoginParam(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.CERT_P12_FILE_NAME,
                          StringToJString(ACertFileName));
      ret:=sfAuth.vpnLogin(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_CERTIFICATE);
  end
  else
  if AAuthType=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_PASSWORD then
  begin
      sfAuth.setLoginParam(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.PASSWORD_AUTH_USERNAME,
                          StringToJString(AUserName));
      sfAuth.setLoginParam(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.PASSWORD_AUTH_PASSWORD,
                          StringToJString(APassword));
      ret:=sfAuth.vpnLogin(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_PASSWORD);
  end
  else
  if AAuthType=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_SMS then
  begin
      sfAuth.setLoginParam(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.SMS_AUTH_CODE,
                          StringToJString(ASmsCode));
      ret:=sfAuth.vpnLogin(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_SMS);
  end
  else
  if AAuthType=Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_SMS1 then
  begin
      ret:=sfAuth.vpnLogin(Androidapi.JNI.SangforSDK.TJIVpnDelegate.JavaClass.AUTH_TYPE_SMS1);
  end
  else
  begin
      FMX.Types.Log.d('OrangeUI doVpnLogin default authType '+IntToStr(AAuthType));

  end;
  ;

  if ret=True then
  begin
      FMX.Types.Log.d('OrangeUI doVpnLogin success to call login method');

  end
  else
  begin
      FMX.Types.Log.d('OrangeUI doVpnLogin fail to call login method');

  end;

end;

procedure TForm1.DovpnRndCodeCallback(P1: TJavaArray<Byte>);
begin
  FMX.Types.Log.d('OrangeUI TJIVpnDelegate.DovpnRndCodeCallback');


end;

end.
