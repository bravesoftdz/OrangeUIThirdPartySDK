//
// Created by chenxiaoyu on 17/2/16.
// Copyright (c) 2017 baidu. All rights reserved.
//

unit iOSApi.NSErrorHelper;

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

	
	{extern}AipErr_SUCCESS=NSInteger;
	
	NSErrorHelper=interface(NSObject)//
	['{83243BC0-C4D2-4E6B-B962-B4923604EF98}']
		
		
		
	end;
	
	NSErrorHelperClass=interface(NSObjectClass)//
	['{56F719D5-E6DF-436F-997B-22D42AA0ED29}']
		[MethodName('aipErrorWithCode:andMessage:')]
		{+} function aipErrorWithCodeandMessage(code:NSInteger;_message:NSString{*}):NSError{*};cdecl;
		{+} function aipError_bundleMismatch:NSError{*};cdecl;
		{+} function aipError_licenseMismatch:NSError{*};cdecl;
		{+} function aipError_serverIllegalResponse:NSError{*};cdecl;
		{+} function aipError_serverConnectFailWithMessage(_message:NSString{*}):NSError{*};cdecl;
	end;
	
	TNSErrorHelper=class(TOCGenericImport<NSErrorHelperClass,NSErrorHelper>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function NSErrorHelper_FakeLoader : NSErrorHelper; cdecl; external {$I FrameworkDylibPath_AipBase.inc} name 'OBJC_CLASS_$_NSErrorHelper';
{$O+}


{$ENDIF}

end.

