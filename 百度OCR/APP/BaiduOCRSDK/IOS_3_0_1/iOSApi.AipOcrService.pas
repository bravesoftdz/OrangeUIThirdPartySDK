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
		 * ʹ����Ȩ�ļ���Ȩ(�Ƽ�)
		 * @param licenseFileContent ��Ȩ�ļ�����
		 }
		{-} procedure authWithLicenseFileData(licenseFileContent:NSData{*});cdecl;
		
		
		{*
		 * ʹ��Api Key, Secret Key��Ȩ
		 }
		[MethodName('authWithAK:andSK:')]
		{-} procedure authWithAKandSK(ak:NSString{*};sk:NSString{*});cdecl;
		
		{*
		 * ��ȡ���֤���Token
		 * @param successHandler �ɹ��ص�
		 * @param failHandler ʧ�ܻص�
		 }
		
//		[MethodName('getTokenSuccessHandler:failHandler:')]
//		{-} function getTokenSuccessHandlerfailHandler(successHandler:void (^)(NSString *token);failHandler:void (^)(NSError *error)):void ;cdecl;

		
		{*
		 * ͨ������ʶ�𣨺�λ����Ϣ��
		 * @param image ��Ҫʶ���ͼƬ
		 * @param options direction, language ... ����������ĵ�
		 * @param successHandler �ɹ��ص�
		 * @param failHandler ʧ�ܻص�
		 }
//		[MethodName('detectTextFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectTextFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;

		
//		{*
//		 * ͨ������ʶ��(����λ����Ϣ��)
//		 * @param image ��Ҫʶ���ͼƬ
//		 * @param options direction, language ... ����������ĵ�
//		 * @param successHandler �ɹ��ص�
//		 * @param failHandler ʧ�ܻص�
//		 }
//		[MethodName('detectTextBasicFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectTextBasicFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//		{*
//		 * ͨ������ʶ�𣨺���Ƨ�ְ棩
//		 * @param image ��Ҫʶ���ͼƬ
//		 * @param options direction, language ... ����������ĵ�
//		 * @param successHandler �ɹ��ص�
//		 * @param failHandler ʧ�ܻص�
//		 }
//		[MethodName('detectTextEnhancedFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectTextEnhancedFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//
//
//		{*
//		 * ͨ������ʶ�𣬸߾��ȣ���λ����Ϣ
//		 * @param image ͼ��
//		 * @param options ��ѡ����
//		 * @param successHandler �ɹ��ص�
//		 * @param failHandler ʧ�ܻص�
//		 }
//		[MethodName('detectTextAccurateFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectTextAccurateFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//
//		{*
//		 * ͨ������ʶ�𣬸߾��ȣ�����λ����Ϣ
//		 * @param image ͼ��
//		 * @param options ��ѡ����
//		 * @param successHandler �ɹ��ص�
//		 * @param failHandler ʧ�ܻص�
//		 }
//		[MethodName('detectTextAccurateBasicFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectTextAccurateBasicFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError *err));cdecl;
//
//		[MethodName('detectIdCardFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectIdCardFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;

		{*
		 * ���֤����ʶ��
		 * @param image ��Ҫʶ���ͼƬ
		 * @param options ����������������ĵ�
		 * @param successHandler �ɹ��ص�
		 * @param failHandler ʧ�ܻص�
		 }
		[MethodName('detectIdCardFrontFromImage:withOptions:successHandler:failHandler:')]
		{-} procedure detectIdCardFrontFromImagewithOptionssuccessHandlerfailHandler(
          image:UIImage{*};
          options:PNSDictionary{*};
          successHandler:TSuccessHandlerEvent;//void (^)(id result);
          failHandler:TFailHandlerEvent//void (^)(NSError *err)
          );cdecl;

//		{*
//		 * ���֤����ʶ��
//		 * @param image ��Ҫʶ���ͼƬ
//		 * @param options ����������������ĵ�
//		 * @param successHandler �ɹ��ص�
//		 * @param failHandler ʧ�ܻص�
//		 }
//		[MethodName('detectIdCardBackFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectIdCardBackFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};
//          options:PNSDictionary{*};
//          successHandler:TResultHandlerEvent;//void (^)(id result);
//          failHandler:TErrorHandlerEvent//void (^)(NSError *err)
//          );cdecl;
//
//		{*
//		 * ���п�ʶ��
//		 * @param image ��Ҫʶ���ͼƬ
//		 * @param successHandler �ɹ��ص�
//		 * @param failHandler ʧ�ܻص�
//		 }
//		[MethodName('detectBankCardFromImage:successHandler:failHandler:')]
//		{-} procedure detectBankCardFromImagesuccessHandlerfailHandler(image:UIImage{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//
//		{*
//		 * ��ͼʶ��
//		 * @param image ��Ҫʶ���ͼƬ
//		 * @param options �������
//		 * @param successHandler �ɹ��ص�
//		 * @param failHandler ʧ�ܻص�
//		 }
//		[MethodName('detectWebImageFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectWebImageFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError *err));cdecl;
//
//		{*
//		 * ��ʻ֤ʶ��
//		 * @param image ��Ҫʶ���ͼƬ
//		 * @param options �������
//		 * @param successHandler �ɹ��ص�
//		 * @param failHandler ʧ�ܻص�
//		 }
//		[MethodName('detectDrivingLicenseFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectDrivingLicenseFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//		{*
//		 * ��ʻ֤֤ʶ��
//		 * @param image ��Ҫʶ���ͼƬ
//		 * @param options �������
//		 * @param successHandler �ɹ��ص�
//		 * @param failHandler ʧ�ܻص�
//		 }
//		[MethodName('detectVehicleLicenseFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectVehicleLicenseFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//		{*
//		 * ����֤ʶ��
//		 * @param image ��Ҫʶ���ͼƬ
//		 * @param options �������
//		 * @param successHandler �ɹ��ص�
//		 * @param failHandler ʧ�ܻص�
//		 }
//		[MethodName('detectPlateNumberFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectPlateNumberFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:TResultHandlerEvent;failHandler:TErrorHandlerEvent);cdecl;
//
//
//
//		{*
//		 * Ӫҵִ��ʶ��
//		 * @param image ͼ��
//		 * @param options ��ѡ����
//		 * @param successHandler �ɹ��ص�
//		 * @param failHandler ʧ�ܻص�
//		 }
//		[MethodName('detectBusinessLicenseFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectBusinessLicenseFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;
//
//
//		{*
//		 * Ʊ��ʶ��
//		 * @param image ͼ��
//		 * @param options ��ѡ����
//		 * @param successHandler �ɹ��ص�
//		 * @param failHandler ʧ�ܻص�
//		 }
//		[MethodName('detectReceiptFromImage:withOptions:successHandler:failHandler:')]
//		{-} procedure detectReceiptFromImagewithOptionssuccessHandlerfailHandler(image:UIImage{*};options:PNSDictionary{*};successHandler:void (^)(id result);failHandler:void (^)(NSError* err));cdecl;

		
		{*
		 * �����֤����
		 * ������֤���ڵ������������
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

