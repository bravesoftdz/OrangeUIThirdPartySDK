unit uAuthHelper;

interface


uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,

  {$IFDEF IOS}
  iOSapi.Foundation,
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
  iOSApi.CoreTelephony,
  iOSApi.Security,

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
  {$IFDEF IOS}
  short=word;
  TAuthHelper=class
  private
    class var shareDelegate:SangforSDKDelegate;
    class function getGlobalDelegate:SangforSDKDelegate;
  public
//		[MethodName('setHost:port:delegate:')]
		{-} procedure setHostportdelegate(host:String{*};port:short;delegate:SangforSDKDelegate{id<SangforSDKDelegate>});cdecl;

		{-} procedure setDnsServer(server:String{*});cdecl;

		{-} function getRndCode:Integer;cdecl;

    //获取SDK版本号
		{-} function getSdkVersion:String{*};cdecl;

//		[MethodName('setAuthParam:param:')]
		{-} function setAuthParamparam(key:String{*};value:String{*}):Integer;cdecl;

		{-} function getAuthParam(key:String{*}):String;cdecl;//NSData{*};cdecl;

		{-} procedure clearAuthParam(key:String{*});cdecl;

		{-} procedure setDelegate(delegate:SangforSDKDelegate{id<SangforSDKDelegate>});cdecl;

    //登录
		{-} function loginVpn(const authType: int ):Integer;cdecl;

    //退出
		{-} function logoutVpn:Integer;cdecl;

    //退出VPN
		{-} function quitLogin:Integer;cdecl;

    //重新登录
		{-} function relogin:Integer;cdecl;

		{-} function getProxyPort:Integer;cdecl;

    //查询VPN的状态
		{-} function queryVpnStatus:VPN_STATUS;cdecl;

    function getVpnError:String;
  end;
  {$ENDIF}


implementation


//全局回调函数
procedure g_callBack(const result:VPN_RESULT_NO ; const  authType:int);cdecl;
var
  delegate:SangforSDKDelegate;
begin
  delegate:=TAuthHelper.getGlobalDelegate;
  if (delegate<>nil) then
  begin
    delegate.onCallBackauthType(result,authType);
  end;
end;

procedure g_reloginCallback(const  status:int;  result:int);cdecl;
var
  delegate:SangforSDKDelegate;
begin
  delegate:=TAuthHelper.getGlobalDelegate;
  if (delegate<>nil) then
  begin
    delegate.onReloginCallbackresult(status,result);
  end;
end;

function g_selectCertCallBack(const  identityVec:Pointer; const  count:int):int;cdecl;
var
  delegate:SangforSDKDelegate;
begin
  Result:=-1;

  delegate:=TAuthHelper.getGlobalDelegate;
  if (delegate<>nil) then
  begin
    delegate.onSelectIdentitycount(identityVec,count);
  end;
end;

procedure g_RndCodeCallBack(const addr:Pointer; addrlen:uint32);cdecl;
var
  delegate:SangforSDKDelegate;
  data:NSData;
begin

  delegate:=TAuthHelper.getGlobalDelegate;
  if (delegate<>nil) then
  begin
    data:=TNSData.Wrap(TNSData.OCClass.dataWithBytes(addr,addrlen));
    delegate.onRndCodeCallBack(data);
  end;

end;

  {$IFDEF IOS}

{ TAuthHelper }

procedure TAuthHelper.clearAuthParam(key: String);
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.clearAuthParam');

  vpn_clear_login_param(MarshaledAString(key));
end;

function TAuthHelper.getAuthParam(key: String): String;//NSData;
var
  outValue:array [0..2047] of Byte;
  outLen:Cardinal;
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.getAuthParam');

  FillChar(outValue,2048,0);
  vpn_get_login_param(MarshaledAString(key),@outValue[0],@outLen);
  Result:=MarshaledAString(@outValue[0]);

  FMX.Types.Log.d('OrangeUI TAuthHelper.getAuthParam '+Result+' len '+IntToStr(outLen));
//  Result:=nil;
end;

class function TAuthHelper.getGlobalDelegate: SangforSDKDelegate;
begin
  Result:=shareDelegate;
end;

function TAuthHelper.getProxyPort: Integer;
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.getProxyPort');

  Result:=get_proxy_port();
end;

function TAuthHelper.getRndCode: Integer;
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.getRndCode');

  ssl_vpn_set_rnd_code_call_back(g_RndCodeCallBack);
  Result:=ssl_vpn_get_rnd_code();
end;

function TAuthHelper.getSdkVersion: String;
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.getSdkVersion');

  Result:=ssl_get_version();
end;

function TAuthHelper.loginVpn(const authType: int): Integer;
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.loginVpn');

  Result:=ssl_vpn_login(authType);
end;

function TAuthHelper.logoutVpn: Integer;
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.logoutVpn');

  Result:=ssl_vpn_logout();
end;

function TAuthHelper.queryVpnStatus: VPN_STATUS;
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.queryVpnStatus');

  Result:=ssl_vpn_query_auth_state();
end;

function TAuthHelper.getVpnError: String;
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.getVpnError');

  Result:=ssl_vpn_get_err();
end;

function TAuthHelper.quitLogin: Integer;
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.quitLogin');

  shareDelegate := nil;
  Result:=ssl_vpn_quit();
end;

function TAuthHelper.relogin: Integer;
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.relogin');

  Result:=ssl_vpn_relogin();
end;

function TAuthHelper.setAuthParamparam(key, value: String): Integer;
var
  NSKey:NSString;
  NSValue:NSString;
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.setAuthParamparam '+value);

  NSKey:=NSStr(key);
  NSValue:=NSStr(value);
  Result:=ssl_vpn_set_login_param(NSKey.UTF8String,NSValue.UTF8String);
end;

procedure TAuthHelper.setDelegate(delegate: SangforSDKDelegate);
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.setDelegate');

  shareDelegate:=delegate;
end;

procedure TAuthHelper.setDnsServer(server: String);
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.setDnsServer');

  ssl_set_dns_server(MarshaledAString(server));
end;

procedure TAuthHelper.setHostportdelegate(host: String; port: short; delegate: SangforSDKDelegate);
var
  vpnAddr:UInt32;
  vpnPort:UInt16;
  addrs:PHostEnt;
  host_nameStr:NSString;
  host_name:MarshaledAString;
  h_addr:PMarshaledAString;
  ip:Array [0..23] of byte;
  I:Integer;
begin
  FMX.Types.Log.d('OrangeUI TAuthHelper.setHostportdelegate');

  shareDelegate:=delegate;



  //域名转换成IP地址
  host_nameStr:=NSStr(host);
  host_name:=host_nameStr.UTF8String;
  vpnAddr:=INADDR_NONE;
  vpnPort:=htons(port);
  addrs:=gethostbyname(host_name);
  if addrs<>nil then
  begin
      FMX.Types.Log.d('OrangeUI TAuthHelper.setHostportdelegate addrs<>nil length '+IntToStr(addrs.h_length));

      I:=0;
      //指针数组PPAnsiChar
      h_addr:=addrs.h_addr_list;
      while h_addr<>nil do
      begin


          //h_addr^是PAnsiChar
          if Integer(h_addr^)<>0 then
          begin
              FMX.Types.Log.d('OrangeUI TAuthHelper.setHostportdelegate '+IntToStr(I)+' h_addr^<>0');

              FillChar(ip,Length(ip),0);
              inet_ntop(AF_INET,h_addr^,MarshaledAString(@ip[0]),Length(ip));
              vpnAddr:=inet_addr(MarshaledAString(@ip[0]));
              FMX.Types.Log.d('OrangeUI TAuthHelper.setHostportdelegate '+IntToStr(I)+' ip '+MarshaledAString(@ip[0]));
          end
          else
          begin
              FMX.Types.Log.d('OrangeUI TAuthHelper.setHostportdelegate '+IntToStr(I)+' h_addr^=0');
              Break;
          end;

          Inc(h_addr);
      end;
  end
  else
  begin
      FMX.Types.Log.d('OrangeUI vpn address is NULL');
      vpn_seterr_nb('OrangeUI vpn address is NULL');
      g_callBack(Ord(RESULT_VPN_INIT_FAIL), 0);

  end;


  //设置重连回调
  FMX.Types.Log.d('OrangeUI set_reconnect_callback');
  set_reconnect_callback(g_reloginCallback);


  //初始VPN
  FMX.Types.Log.d('OrangeUI ssl_vpn_init');
  ssl_vpn_init(g_callBack,vpnAddr,vpnPort);


end;

  {$ENDIF}






end.
