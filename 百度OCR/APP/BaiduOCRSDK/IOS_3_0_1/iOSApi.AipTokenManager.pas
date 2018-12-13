//
// Created by chenxiaoyu on 17/8/29.
// Copyright (c) 2017 baidu. All rights reserved.
//
//

unit iOSApi.AipTokenManager;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
	iOSapi.UIKit,
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreGraphics,
	iOSApi.OpenGLES,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
	SysUtils,Types,FMX.Types,Classes;

type
	//declare pointer
	id=Pointer;

	
	
	AipTokenManager=interface(NSObject)//
	['{EF039AC4-4CA9-4753-95D1-D237D68D4C3C}']
		
		{-} function init __attribute__((unavailable( "Use 'initWithLicenseFileData' or 'initWithAK()):ndSK' instead"):AipTokenManager;cdecl;
		
		{-} function initWithLicenseFileData(licenseFileContent:NSData{*}):AipTokenManager;cdecl;
		
		[MethodName('initWithAK:andSK:')]
		{-} function initWithAKandSK(ak:NSString{*};sk:NSString{*}):AipTokenManager;cdecl;
		
		//- (instancetype) initWithToken: (NSString *)token;
		
		{*
		 * ��ȡ���֤ǰ�˼��Token
		 * @param successHandler �ɹ��ص�
		 * @param failHandler ʧ�ܻص�
		 }
		[MethodName('getIdcardTokenWithSuccessHandler:failHandler:')]
		{-} procedure getIdcardTokenWithSuccessHandlerfailHandler(successHandler:void (^)(NSString *token);failHandler:void (^)(NSError *error));cdecl;
		
		
		{*
		 * ��ȡToken���ص�������mainQueue���������߳���
		 * @param successHandler �ɹ��ص�
		 * @param failHandler ʧ�ܻص�
		 }
		[MethodName('getTokenWithSuccessHandler:failHandler:')]
		{-} procedure getTokenWithSuccessHandlerfailHandler(successHandler:void (^)(NSString *token);failHandler:void (^)(NSError *error));cdecl;
		
		{*
		 * ���cache
		 }
		{-} procedure clearCache;cdecl;
		
		{*
		 * ������֤��������ַǰ׺������protocol
		 * �� https://verify.baidubce.com:80
		 * ������Ϊhttp��������NSAppTransportSecurity
		 }
		{-} procedure setAuthHost(host:NSString{*});cdecl;
		
	end;
	
	AipTokenManagerClass=interface(NSObjectClass)//
	['{DA84AFEF-2041-4659-A44A-1D22CFCED98F}']
	end;
	
	TAipTokenManager=class(TOCGenericImport<AipTokenManagerClass,AipTokenManager>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function AipTokenManager_FakeLoader : AipTokenManager; cdecl; external {$I FrameworkDylibPath_AipBase.inc} name 'OBJC_CLASS_$_AipTokenManager';
{$O+}


{$ENDIF}

end.

