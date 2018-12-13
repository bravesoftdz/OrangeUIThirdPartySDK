//
//  IFlySpeechError.h
//  MSC
//
//  Created by iflytek on 13-3-19.
//  Copyright (c) 2013�� iflytek. All rights reserved.
//

//#ifndef __IFlySpeechError__
//#define __IFlySpeechError__

unit IFlySpeechError_iOSApi;

interface

{$IFDEF IOS}
uses
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

	
	{!
	 *  ����������
	 }
	IFlySpeechError=interface(NSObject)//
	['{826600B9-9F1F-4E16-902E-5428DB09946E}']
		
		{!
		 *  ������
		 }
		function errorCode:Integer;cdecl;
		procedure setErrorCode(errorCode:Integer);cdecl;

		{!
		 *  ����������
		 }
		function errorType:Integer;cdecl;
		procedure setErrorType(errorType:Integer);cdecl;
		
		{!
		 *  ��������
		 }
		function errorDesc:NSString{*};cdecl;
		procedure setErrorDesc(errorDesc:NSString{*});cdecl;
		
		{!
		 *  ��ʼ��
		 *
		 *  @param errorCode -[in] ������
		 *
		 *  @return IFlySpeechError����
		 }
		
		{!
		 *  ��ȡ������
		 *
		 *  @return ������
		 }
//		{-} function errorCode:Integer;cdecl;

		{!
		 *  ��ȡ��������
		 *
		 *  @return ��������
		 }
//		{-} function errorDesc:NSString{*};cdecl;

	end;
	
	IFlySpeechErrorClass=interface(NSObjectClass)//
	['{3B415A77-E651-4B95-AF89-C4D446ED32E3}']
		{+} function initWithError(errorCode:Integer):IFlySpeechError;cdecl;
	end;
	
	TIFlySpeechError=class(TOCGenericImport<IFlySpeechErrorClass,IFlySpeechError>)
	end;
	//#endif
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlySpeechError_FakeLoader : IFlySpeechError; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechError';
{$O+}


{$ENDIF}

end.

