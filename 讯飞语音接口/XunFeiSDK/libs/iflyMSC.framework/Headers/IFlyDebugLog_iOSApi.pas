//
//  IFlyDebugLog.h
//  MSC

//  description: �����е�log������

//  Created by ypzhao on 12-11-22.
//  Copyright (c) 2012�� iflytek. All rights reserved.
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
	 *  ������Ϣ
	 }
	IFlyDebugLog=interface(NSObject)//
	['{DC28464B-EB34-4747-861A-E6935F468191}']
		
		{!
		 *  ��ӡ������Ϣ
		 *
		 *  @param format -[in] Ҫ��ӡ�����ݸ�ʽ
		 *  @param ...    -[in] Ҫ��ӡ������
		 }
		
		{!
		 *  ��logд���ļ���
		 }
		
		{!
		 *  �����Ƿ���ʾlog
		 *
		 *  @param showLog YES:��ʾ��NO:����ʾ
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

