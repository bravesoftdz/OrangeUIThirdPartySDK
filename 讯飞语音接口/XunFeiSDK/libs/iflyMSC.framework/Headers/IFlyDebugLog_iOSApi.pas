//
//  IFlyDebugLog.h
//  MSC

//  description: 程序中的log处理类

//  Created by ypzhao on 12-11-22.
//  Copyright (c) 2012年 iflytek. All rights reserved.
//

unit IFlyDebugLog_iOSApi;

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
	 *  调试信息
	 }
	IFlyDebugLog=interface(NSObject)//
	['{DC28464B-EB34-4747-861A-E6935F468191}']
		
		{!
		 *  打印调试信息
		 *
		 *  @param format -[in] 要打印的内容格式
		 *  @param ...    -[in] 要打印的内容
		 }
		
		{!
		 *  将log写入文件中
		 }
		
		{!
		 *  设置是否显示log
		 *
		 *  @param showLog YES:显示；NO:不显示
		 }
	end;
	
	IFlyDebugLogClass=interface(NSObjectClass)//
	['{BDE486C7-7D2E-4988-B5FD-9719F0116266}']
		{+} procedure showLog(format,:NSString{*});cdecl;
		{+} procedure writeLog;cdecl;
		{+} procedure setShowLog(showLog:Boolean);cdecl;
	end;
	
	TIFlyDebugLog=class(TOCGenericImport<IFlyDebugLogClass,IFlyDebugLog>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyDebugLog_FakeLoader : IFlyDebugLog; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlyDebugLog';
{$O+}


{$ENDIF}

end.

