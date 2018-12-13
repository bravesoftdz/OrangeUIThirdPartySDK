//
//  TextUnderstand.h
//  MSCDemo
//
//  Created by iflytek on 4/24/14.
//  Copyright (c) 2014 iflytek. All rights reserved.
//

unit IFlyTextUnderstander_iOSApi;

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
	 *  �ı�ת������ɻص�����
	 *
	 *  @param result �ɹ��������ı����������
	 *  @param error  ��������
	 }
	result, IFlySpeechError * error)=void(^IFlyUnderstandTextCompletionHandler)(NSString*;
	
	{!
	 *  �ı�ת������
	 }
	IFlyTextUnderstander=interface(NSObject)//
	['{BE69DDC9-09BE-4A61-9E11-08C63A306F6B}']
		
		{!
		 *  �Ƿ������ı�ת����
		 }
		function BOOL:__block;cdecl;
		procedure setBOOL(BOOL:__block);cdecl;
		
		{!
		 *  �ı�ת����ӿ�<br>
		 *  �����ı����ݣ���ȡ���������
		 *
		 *  @param text              ������ı�����
		 *  @param completionHandler �ı�ת������ɻص�����
		 *
		 *  @return ������
		 }
		[MethodName('understandText:withCompletionHandler:')]
		{-} function understandTextwithCompletionHandler(text:NSString{*};completionHandler:IFlyUnderstandTextCompletionHandler):Integer;cdecl;
		
		{!
		 *  �����ı�ת�������
		 *
		 *  @param value ������Ӧ��ȡֵ
		 *  @param key   �ı�ת�����������
		 *
		 *  @return �ɹ�����YES��ʧ�ܷ���NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		{!
		 *  ȡ�����λỰ
		 }
		{-} procedure cancel;cdecl;
		
	end;
	
	IFlyTextUnderstanderClass=interface(NSObjectClass)//
	['{0076B0CA-E2FC-4F18-8E85-C7BC997611BA}']
	end;
	
	TIFlyTextUnderstander=class(TOCGenericImport<IFlyTextUnderstanderClass,IFlyTextUnderstander>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyTextUnderstander_FakeLoader : IFlyTextUnderstander; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlyTextUnderstander';
{$O+}


{$ENDIF}

end.

