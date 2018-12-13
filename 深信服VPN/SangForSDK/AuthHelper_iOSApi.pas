//
//  AuthDelegate.h
//  Auth
//
//  Created by Huang Shounan on 12-11-13.
//
//

unit AuthHelper_iOSApi;

interface

{$IFDEF IOS}
uses
  sdkheader_iOSApi,
	iOSapi.Foundation,
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreGraphics,
	iOSApi.UIKit,
	iOSApi.OpenGLES,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
	SysUtils,Types,FMX.Types,Classes;

type
	//declare pointer
	id=Pointer;
  int=Integer;
  short=word;
	PSangforSDKDelegate=Pointer;//PSangforSDKDelegate=Pointer of SangforSDKDelegate; ILocalObject(SangforSDKDelegate).GetObjectID




	//#include "sdkheader.h"

	SangforSDKDelegate=interface(IObjectiveC)
		['{56C2483C-6FC6-42E0-934E-8AD69467BB19}']

		//@required

		[MethodName('onCallBack:authType:')]
		{-} procedure onCallBackauthType(const vpnErrno:VPN_RESULT_NO;const authType: int);cdecl;

		//@optional

		[MethodName('onReloginCallback:result:')]
		{-} procedure onReloginCallbackresult(const status:int;const result: int);cdecl;

		[MethodName('onSelectIdentity:count:')]
		{-} function onSelectIdentitycount(const vector: PIdentityData{*};const count: int):Integer;cdecl;

		{*获取到图形校验码*}
		{-} procedure onRndCodeCallBack(data:NSData{*});cdecl;

	end;





	TOnonCallBackauthType=procedure(const vpnErrno: VPN_RESULT_NO;const authType: int) of object;
	TOnonReloginCallbackresult=procedure(const status: int;const result: int) of object;
	TOnonSelectIdentitycount=function(const vector: PIdentityData{*};count:int):Integer of object;
	TOnonRndCodeCallBack=procedure(data:NSData{*}) of object;
	
	TSangforSDKDelegate=class(TOCLocal,SangforSDKDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonCallBackauthType:TOnonCallBackauthType;
		OnonReloginCallbackresult:TOnonReloginCallbackresult;
		OnonSelectIdentitycount:TOnonSelectIdentitycount;
		OnonRndCodeCallBack:TOnonRndCodeCallBack;
	
		
		//@required
		
		[MethodName('onCallBack:authType:')]
		{-} procedure onCallBackauthType(const vpnErrno: VPN_RESULT_NO;const authType: int);cdecl;
		
		//@optional
		
		[MethodName('onReloginCallback:result:')]
		{-} procedure onReloginCallbackresult(const status: int;const result: int);cdecl;
		
		[MethodName('onSelectIdentity:count:')]
		{-} function onSelectIdentitycount(const vector: PIdentityData{*};const count:int):Integer;cdecl;

		{*获取到图形校验码*}
		{-} procedure onRndCodeCallBack(data:NSData{*});cdecl;
		
	end;



	
	
	AuthHelper=interface(NSObject)//
	['{8B1FCF42-2F0E-4EE2-BBA6-42B5FB53E8CC}']


		[MethodName('setHost:port:delegate:')]
		{-} procedure setHostportdelegate(host:NSString{*};port:short;delegate:PSangforSDKDelegate{id<SangforSDKDelegate>});cdecl;

		[MethodName('initWithHostAndPort:port:delegate:')]
		{-} function initWithHostAndPortportdelegate(host:NSString{*};port:short;delegate:PSangforSDKDelegate{id<SangforSDKDelegate>}):id;cdecl;

		[MethodName('setUserNamePassword:password:')]
		{-} function setUserNamePasswordpassword(userName:NSString{*};password:NSString{*}):Integer;cdecl;

		{-} procedure setDnsServer(server:NSString{*});cdecl;

		{-} function getRndCode:Integer;cdecl;

		{-} function getSmsCountDown:NSString{*};cdecl;

		{-} function getSmsPhoneNumber:NSString{*};cdecl;

		{-} function getSdkVersion:NSString{*};cdecl;

		{-} function getVpnError:NSString{*};cdecl;


		[MethodName('setAuthParam:param:')]
		{-} function setAuthParamparam(key:NSString{*};value:NSString{*}):Integer;cdecl;

		{-} function getAuthParam(key:NSString{*}):NSData{*};cdecl;

		{-} procedure clearAuthParam(key:NSString{*});cdecl;

		{-} procedure setDelegate(delegate:PSangforSDKDelegate{id<SangforSDKDelegate>});cdecl;

		{-} function loginVpn(const authType: int ):Integer;cdecl;

		{-} function logoutVpn:Integer;cdecl;

		{-} function quitLogin:Integer;cdecl;

		{-} function relogin:Integer;cdecl;

		{-} function getProxyPort:Integer;cdecl;

		{-} function queryVpnStatus:VPN_STATUS;cdecl;




	end;

	AuthHelperClass=interface(NSObjectClass)//
	['{E6D04425-86BA-4D08-96C1-27364CDFE641}']
		{+} function getGlobalDelegate:PSangforSDKDelegate{id<SangforSDKDelegate>};cdecl;
		{+} function getInstance:AuthHelper{*};cdecl;
	end;

	TAuthHelper=class(TOCGenericImport<AuthHelperClass,AuthHelper>)
	end;
{$ENDIF}


implementation



{$IFDEF IOS}

{$O-}
function AuthHelper_FakeLoader : AuthHelper; cdecl; external 'SangForSDK\libs\libAuthHelperLib.a' name 'OBJC_CLASS_$_AuthHelper';
{$O+}

{ TSangforSDKDelegate }

constructor TSangforSDKDelegate.Create;
begin
	Inherited Create;
end;

destructor TSangforSDKDelegate.Destroy;
begin
	Inherited;
end;

procedure  TSangforSDKDelegate.onCallBackauthType(const vpnErrno: VPN_RESULT_NO;const authType: int);
begin
	if Assigned(OnonCallBackauthType) then
	begin
		OnonCallBackauthType(vpnErrno,authType);
	end;
end;

procedure  TSangforSDKDelegate.onReloginCallbackresult(const status: int;const result: int);
begin
	if Assigned(OnonReloginCallbackresult) then
	begin
		OnonReloginCallbackresult(status,result);
	end;
end;

function  TSangforSDKDelegate.onSelectIdentitycount(const vector: PIdentityData{*};const count:int):Integer;
begin
  Result:=-1;
	if Assigned(OnonSelectIdentitycount) then
	begin
		Result:=OnonSelectIdentitycount(vector,count);
	end;
end;

procedure  TSangforSDKDelegate.onRndCodeCallBack(data:NSData{*});
begin
	if Assigned(OnonRndCodeCallBack) then
	begin
		OnonRndCodeCallBack(data);
	end;
end;



{$ENDIF}

end.

