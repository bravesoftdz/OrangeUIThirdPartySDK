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
		 * 获取身份证前端检测Token
		 * @param successHandler 成功回调
		 * @param failHandler 失败回调
		 }
		[MethodName('getIdcardTokenWithSuccessHandler:failHandler:')]
		{-} procedure getIdcardTokenWithSuccessHandlerfailHandler(successHandler:void (^)(NSString *token);failHandler:void (^)(NSError *error));cdecl;
		
		
		{*
		 * 获取Token。回调可能在mainQueue或其他子线程中
		 * @param successHandler 成功回调
		 * @param failHandler 失败回调
		 }
		[MethodName('getTokenWithSuccessHandler:failHandler:')]
		{-} procedure getTokenWithSuccessHandlerfailHandler(successHandler:void (^)(NSString *token);failHandler:void (^)(NSError *error));cdecl;
		
		{*
		 * 清空cache
		 }
		{-} procedure clearCache;cdecl;
		
		{*
		 * 设置验证服务器地址前缀，包含protocol
		 * 如 https://verify.baidubce.com:80
		 * 若设置为http，需设置NSAppTransportSecurity
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

