//
//  AipCaptureCardVC.h
//  OCRLib
//  ¿¨Æ¬Ê¶±ðVewController
//  Created by Yan,Xiangda on 16/11/9.
//  Copyright ? 2016Äê Baidu Passport. All rights reserved.
//

unit iOSApi.AipCaptureCardVC;

interface

{$IFDEF IOS}
uses
	iOSapi.UIKit,
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreGraphics,
	iOSApi.OpenGLES,
	iOSApi.Foundation,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
	SysUtils,Types,FMX.Types,Classes;

type
	//declare pointer
	id=Pointer;
  TUIImageHandlerEvent=procedure(AImage:UIImage) of object;

	
	
	CardType_=(
	//(NSInteger, CardType) {
	    CardTypeIdCardFont = 0,
	    CardTypeIdCardBack,
	    CardTypeBankCard,
	    CardTypeLocalIdCardFont ,
	    CardTypeLocalIdCardBack,
	    CardTypeLocalBankCard
	);
	CardType=Integer;
	
	AipCaptureCardVC=interface(UIViewController)//
	['{D4FA5AEB-F866-4244-9B40-224DD264A3B4}']
		
		function cardType:CardType;cdecl;
		procedure setCardType(cardType:CardType);cdecl;
//		function (^handler)(UIImage:void;cdecl;
//		procedure set(^handler)(UIImage((^handler)(UIImage:void);cdecl;
	end;
	
	AipCaptureCardVCClass=interface(UIViewControllerClass)//
	['{396DC23E-5EE2-4EC5-A8D2-3C41C1347EC2}']
		[MethodName('ViewControllerWithCardType:andImageHandler:')]
		{+} function ViewControllerWithCardTypeandImageHandler(_type:Integer;
                      handler:TUIImageHandlerEvent//void (^)(UIImage *image)
                      ):UIViewController{*};cdecl;
	end;

	TAipCaptureCardVC=class(TOCGenericImport<AipCaptureCardVCClass,AipCaptureCardVC>)
	end;
{$ENDIF}

implementation

//{$IFDEF IOS}
//
//{$O-}
//function AipCaptureCardVC_FakeLoader : AipCaptureCardVC; cdecl; external {$I FrameworkDylibPath_AipOcrSdk.inc} name 'OBJC_CLASS_$_AipCaptureCardVC';
//{$O+}
//
//
//{$ENDIF}

end.

