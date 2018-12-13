//
//  IdcardQualityAdaptor.h
//  IdcardQuality
//
//  Created by Yan,Xiangda on 2017/4/17.
//  Copyright ? 2017Äê Baidu. All rights reserved.
//

unit iOSApi.IdcardQualityAdaptor;

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

	//#include "idcard_quality.h"
	
	IdcardQualityImageStatus_=(
	//(NSInteger, IdcardQualityImageStatus) {
	    IdcardQualityImageStatusNormal = 0,
	    IdcardQualityImageStatusWrongLocation,
	    IdcardQualityImageStatusBlurred,
	    IdcardQualityImageStatusOverExposure,
	    IdcardQualityImageStatusReversedSide
	);
	IdcardQualityImageStatus=Integer;
	
	IdcardQualityModel=interface(NSObject)//
	['{2899FB8B-1A22-4639-88B3-D1101316C898}']
		
		function image_status:idcard_quality::ImageStatusType;cdecl;
		procedure setImage_status(image_status:idcard_quality::ImageStatusType);cdecl;
		function errorType:idcard_quality::IdCardQualityErrorType;cdecl;
		procedure setErrorType(errorType:idcard_quality::IdCardQualityErrorType);cdecl;
		function has_warpped_image:Boolean;cdecl;
		procedure setHas_warpped_image(has_warpped_image:Boolean);cdecl;
		function char:unsigned;cdecl;
		procedure setChar(char:unsigned);cdecl;
		function warped_image_width:Integer;cdecl;
		procedure setWarped_image_width(warped_image_width:Integer);cdecl;
		function warped_image_height:Integer;cdecl;
		procedure setWarped_image_height(warped_image_height:Integer);cdecl;
		function warped_image_channel:Integer;cdecl;
		procedure setWarped_image_channel(warped_image_channel:Integer);cdecl;
		
		
	end;
	
	IdcardQualityModelClass=interface(NSObjectClass)//
	['{084347B6-EEA6-404D-987D-ED5C1A1F23A1}']
	end;
	
	TIdcardQualityModel=class(TOCGenericImport<IdcardQualityModelClass,IdcardQualityModel>)
	end;
	
	IdcardQualityAdaptor=interface(NSObject)//
	['{B799CBC9-2697-4925-A26B-7232B3683A07}']
		
		[MethodName('initWithAPIKey:andLocalLicenceFile:')]
		{-} procedure initWithAPIKeyandLocalLicenceFile(apiKey:NSString{*};localLicencePath:NSString{*});cdecl;
		
		{-} function initWithToken(token:NSString{*}):Boolean;cdecl;
		
		{-} function canWork:Boolean;cdecl;
		
		[MethodName('process:width:height:channel:cardType:')]
		{-} function processwidthheightchannelcardType(image:UIImage{*};width:Integer;height:Integer;channel:Integer;_type:idcard_quality::IdCardType):IdcardQualityModel{*};cdecl;
		
		//QA ²âÊÔ½Ó¿Ú
		[MethodName('processIsMoving:width:height:channel:cardType:')]
		{-} function processIsMovingwidthheightchannelcardType(image:UIImage{*};width:Integer;height:Integer;channel:Integer;_type:idcard_quality::IdCardType):IdcardQualityModel{*};cdecl;
		
		[MethodName('processWithoutIsMoving:width:height:channel:cardType:')]
		{-} function processWithoutIsMovingwidthheightchannelcardType(image:UIImage{*};width:Integer;height:Integer;channel:Integer;_type:idcard_quality::IdCardType):IdcardQualityModel{*};cdecl;
		
		{-} procedure releaseIdcardQuality;cdecl;
		
	end;
	
	IdcardQualityAdaptorClass=interface(NSObjectClass)//
	['{379050E3-639B-4195-8CA8-3E393A21D1EB}']
	end;
	
	TIdcardQualityAdaptor=class(TOCGenericImport<IdcardQualityAdaptorClass,IdcardQualityAdaptor>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IdcardQualityModel_FakeLoader : IdcardQualityModel; cdecl; external {$I FrameworkDylibPath_IdcardQuality.inc} name 'OBJC_CLASS_$_IdcardQualityModel';
function IdcardQualityAdaptor_FakeLoader : IdcardQualityAdaptor; cdecl; external {$I FrameworkDylibPath_IdcardQuality.inc} name 'OBJC_CLASS_$_IdcardQualityAdaptor';
{$O+}


{$ENDIF}

end.

