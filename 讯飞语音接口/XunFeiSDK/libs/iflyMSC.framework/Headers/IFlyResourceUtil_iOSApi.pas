//
//  IFlyResourceUtil.h
//  MSCDemo
//
//  Created by admin on 14-6-20.
//  Copyright (c) 2014�� iflytek. All rights reserved.
//

unit IFlyResourceUtil_iOSApi;

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
	 *  ��Դ������
	 }
	IFlyResourceUtil=interface(NSObject)//
	['{5D94D7CE-27C7-4DCB-8374-4D8D730AE96F}']
		
		{!
		 *  ��ȡͨ��MSPSetParam����������ı�ʶ
		 *
		 *  @return ͨ��MSPSetParam����������ı�ʶ
		 }
		
		{!
		 *  ��ȡͨ��MSPSetParam����������ı�ʶ
		 *
		 *  @return ͨ��MSPSetParam����������ı�ʶ
		 }
		
		{!
		 *  ��ȡʶ���������ԴĿ¼��ʶ
		 *
		 *  @return ʶ���������ԴĿ¼��ʶ
		 }
		
		{!
		 *  �õ��﷨����Ŀ¼
		 *
		 *  @return �﷨����Ŀ¼
		 }
		
		{!
		 *  ��ȡ�ϳ��������ԴĿ¼��ʶ��ͬʱ��Ҫ�ȴ���voice_name������Ч
		 *
		 *  @return �ϳ��������ԴĿ¼��ʶ��ͬʱ��Ҫ�ȴ���voice_name������Ч
		 }
		
		{!
		 *  ��ȡ������Դ����ԴĿ¼��ʶ
		 *
		 *  @return ������Դ����ԴĿ¼��ʶ
		 }
		
		{!
		 *  �﷨����
		 *
		 *  @return �﷨����
		 }
		
		{!
		 *  ���SDKר�ò������������ñ���Ĭ����Դ·��
		 *
		 *  @return ����Ĭ����Դ·��key�ַ���
		 }
		
		//#pragma mark -
		{!
		 *  ��Դ���·��
		 *
		 *  @param path ���õ�·��
		 *
		 *  @return ��ԴĿ¼
		 }
		
		{*
		 *  ������߷����˶�Ӧ��id
		 *
		 *  @param voiceName ����������
		 *
		 *  @return �У������˶�Ӧ��id���ޣ�����nil
		 }
	end;
	
	IFlyResourceUtilClass=interface(NSObjectClass)//
	['{598F4C90-F27C-4A59-A22B-F6B796F3B0D1}']
		{+} function ENGINE_START:NSString{*};cdecl;
		{+} function ENGINE_DESTROY:NSString{*};cdecl;
		{+} function ASR_RES_PATH:NSString{*};cdecl;
		{+} function GRM_BUILD_PATH:NSString{*};cdecl;
		{+} function TTS_RES_PATH:NSString{*};cdecl;
		{+} function IVW_RES_PATH:NSString{*};cdecl;
		{+} function GRAMMARTYPE:NSString{*};cdecl;
		{+} function PLUS_LOCAL_DEFAULT_RES_PATH:NSString{*};cdecl;
		{+} function generateResourcePath(path:NSString{*}):NSString{*};cdecl;
		{+} function identifierForVoiceName(voiceName:NSString{*}):NSString{*};cdecl;
	end;
	
	TIFlyResourceUtil=class(TOCGenericImport<IFlyResourceUtilClass,IFlyResourceUtil>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyResourceUtil_FakeLoader : IFlyResourceUtil; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlyResourceUtil';
{$O+}


{$ENDIF}

end.

