//
// Created by chenxiaoyu on 17/2/21.
// Copyright (c) 2017 baidu. All rights reserved.
//

unit iOSApi.AipOcrService;

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
	PNSDictionary=Pointer;//PNSDictionary=Pointer of NSDictionary; ILocalObject(NSDictionary).GetObjectID
  TSuccessHandlerEvent=procedure(result:Pointer) of object;
  TFailHandlerEvent=procedure(err:NSError) of object;

	AipOcrService=interface(NSObject)//
	['{1569D1BB-025B-4462-9B3E-9FD8BB4A4533}']
		
		
		{*
		 * 使用授权文件授权(推荐)
		 * @param licenseFileContent 授权文件内容
		 }
		{-} procedure authWithLicenseFileData(licenseFileContent:NSData{*});cdecl;
		
		
		{*
		 * 使用Api Key, Secret Key授权
		 }
		[MethodName('authWithAK:andSK:')]
		{-} procedure authWithAKandSK(ak:NSString{*};sk:NSString{*});cdecl;
		
		{*
		 * 获取身份证检测Token
		 * @param successHandler 成功回调
		 * @param failHandler 失败回调
		 }
		
//		[MethodName('getTokenSuccessHandler:failHandler:')]
//		{-} function getTokenSuccessHandlerfailHandler(successHandler:void (^)(NSString *token);failHandler:void (^)(NSError *error)):void ;cdecl;

		
		{*
		 * 通用文字识别（含位置信息）
		 * @param image 需要识别的图片
		 * @param options direction, language ... 详见开发者文档
		 * @param successHandler 成功回调
		 * @param failHandler 失败回调
		 }
//		[MethodName('detectTextFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectTextFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;

		
//		{*
//		 * 通用文字识别(不含位置信息版)
//		 * @param image 需要识别的图片
//		 * @param options direction, language ... 详见开发者文档
//		 * @param successHandler 成功回调
//		 * @param failHandler 失败回调
//		 }
//		[MethodName('detectTextBasicFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectTextBasicFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//		{*
//		 * 通用文字识别（含生僻字版）
//		 * @param image 需要识别的图片
//		 * @param options direction, language ... 详见开发者文档
//		 * @param successHandler 成功回调
//		 * @param failHandler 失败回调
//		 }
//		[MethodName('detectTextEnhancedFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectTextEnhancedFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//
//
//		{*
//		 * 通用文字识别，高精度，带位置信息
//		 * @param image 图像
//		 * @param options 可选参数
//		 * @param successHandler 成功回调
//		 * @param failHandler 失败回调
//		 }
//		[MethodName('detectTextAccurateFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectTextAccurateFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//
//		{*
//		 * 通用文字识别，高精度，不带位置信息
//		 * @param image 图像
//		 * @param options 可选参数
//		 * @param successHandler 成功回调
//		 * @param failHandler 失败回调
//		 }
//		[MethodName('detectTextAccurateBasicFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectTextAccurateBasicFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError *err));cdecl;
//
//		[MethodName('detectIdCardFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectIdCardFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;

		{*
		 * 身份证正面识别
		 * @param image 需要识别的图片
		 * @param options 参数，详见开发者文档
		 * @param successHandler 成功回调
		 * @param failHandler 失败回调
		 }
		[MethodName('detectIdCardFrontFromImage:withOptions:successHandler:failHandler:')]
		{-} procedure detectIdCardFrontFromImagewithOptionssuccessHandlerfailHandler(
          image:UIImage{*};
          options:PNSDictionary{*};
          successHandler:TSuccessHandlerEvent;//void (^)(id result);
          failHandler:TFailHandlerEvent//void (^)(NSError *err)
          );cdecl;

//		{*
//		 * 身份证背面识别
//		 * @param image 需要识别的图片
//		 * @param options 参数，详见开发者文档
//		 * @param successHandler 成功回调
//		 * @param failHandler 失败回调
//		 }
//		[MethodName('detectIdCardBackFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectIdCardBackFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};
//          options:PNSDictionary{*};
//          successHandler:TResultHandlerEvent;//void (^)(id result);
//          failHandler:TErrorHandlerEvent//void (^)(NSError *err)
//          );cdecl;
//
//		{*
//		 * 银行卡识别
//		 * @param image 需要识别的图片
//		 * @param successHandler 成功回调
//		 * @param failHandler 失败回调
//		 }
//		[MethodName('detectBankCardFromImage:successHandler:failHandler:')]
//		{-} procedure detectBankCardFromImagesuccessHandlerfailHandler(image:UIImage{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//
//		{*
//		 * 网图识别
//		 * @param image 需要识别的图片
//		 * @param options 额外参数
//		 * @param successHandler 成功回调
//		 * @param failHandler 失败回调
//		 }
//		[MethodName('detectWebImageFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectWebImageFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError *err));cdecl;
//
//		{*
//		 * 驾驶证识别
//		 * @param image 需要识别的图片
//		 * @param options 额外参数
//		 * @param successHandler 成功回调
//		 * @param failHandler 失败回调
//		 }
//		[MethodName('detectDrivingLicenseFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectDrivingLicenseFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//		{*
//		 * 行驶证证识别
//		 * @param image 需要识别的图片
//		 * @param options 额外参数
//		 * @param successHandler 成功回调
//		 * @param failHandler 失败回调
//		 }
//		[MethodName('detectVehicleLicenseFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectVehicleLicenseFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//		{*
//		 * 车牌证识别
//		 * @param image 需要识别的图片
//		 * @param options 额外参数
//		 * @param successHandler 成功回调
//		 * @param failHandler 失败回调
//		 }
//		[MethodName('detectPlateNumberFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectPlateNumberFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:TResultHandlerEvent;failHandler:TErrorHandlerEvent);cdecl;
//
//
//
//		{*
//		 * 营业执照识别
//		 * @param image 图像
//		 * @param options 可选参数
//		 * @param successHandler 成功回调
//		 * @param failHandler 失败回调
//		 }
//		[MethodName('detectBusinessLicenseFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectBusinessLicenseFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//
//		{*
//		 * 票据识别
//		 * @param image 图像
//		 * @param options 可选参数
//		 * @param successHandler 成功回调
//		 * @param failHandler 失败回调
//		 }
//		[MethodName('detectReceiptFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectReceiptFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;

		
		{*
		 * 清空验证缓存
		 * 出现验证过期等特殊情况调用
		 }
		{-} procedure clearCache;cdecl;
		
		
		
	end;
	
	AipOcrServiceClass=interface(NSObjectClass)//
	['{A570A0B0-5E68-4434-99FE-C9BE15C0683F}']
		[MethodName('aipErrorWithCode:andMessage:')]
		{+} function aipErrorWithCodeandMessage(code:NSInteger;_message:NSString{*}):NSError{*};cdecl;
		{+} function shardService:AipOcrService;cdecl;
	end;
	
	TAipOcrService=class(TOCGenericImport<AipOcrServiceClass,AipOcrService>)
	end;
{$ENDIF}

implementation

//{$IFDEF IOS}
//
//{$O-}
//function AipOcrService_FakeLoader : AipOcrService; cdecl; external {$I FrameworkDylibPath_AipOcrSdk.inc} name 'OBJC_CLASS_$_AipOcrService';
//{$O+}
//
//
//{$ENDIF}

end.

