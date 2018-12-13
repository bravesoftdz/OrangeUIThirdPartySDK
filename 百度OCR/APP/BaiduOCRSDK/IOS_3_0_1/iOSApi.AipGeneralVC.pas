//
//  AipGeneralVC.h
//  OCRLib
//
//  Created by Yan,Xiangda on 2017/2/16.
//  Copyright ? 2017Äê Baidu. All rights reserved.
//

unit iOSApi.AipGeneralVC;

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

	
	AipGeneralVC=interface(UIViewController)//
	['{78AF2130-8446-4C2C-8418-8466B248B7A3}']
		
		
		function (^handler)(UIImage:void;cdecl;
		procedure set(^handler)(UIImage((^handler)(UIImage:void);cdecl;
		
		
	end;
	
	AipGeneralVCClass=interface(UIViewControllerClass)//
	['{ACFAA15A-7305-4D8F-B7BA-82A4356AE5E9}']
		{+} function ViewControllerWithHandler(handler:void (^)(UIImage *image)):UIViewController{*};cdecl;
	end;
	
	TAipGeneralVC=class(TOCGenericImport<AipGeneralVCClass,AipGeneralVC>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function AipGeneralVC_FakeLoader : AipGeneralVC; cdecl; external {$I FrameworkDylibPath_AipOcrSdk.inc} name 'OBJC_CLASS_$_AipGeneralVC';
{$O+}


{$ENDIF}

end.

