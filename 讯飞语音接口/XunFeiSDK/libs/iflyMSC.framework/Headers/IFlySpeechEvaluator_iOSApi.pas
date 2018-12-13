//
//  IFlySpeechEvaluator.h
//  msc
//
//  Created by jianzhang on 14-1-13
//  Copyright (c) 2013�� iflytek. All rights reserved.
//


unit IFlySpeechEvaluator_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
	IFlySpeechEvaluatorDelegate_iOSApi,
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
	PIFlySpeechEvaluatorDelegate=Pointer;//PIFlySpeechEvaluatorDelegate=Pointer of IFlySpeechEvaluatorDelegate; ILocalObject(IFlySpeechEvaluatorDelegate).GetObjectID

	
	//#define IFLY_AUDIO_SOURCE_MIC    @"1"
	//#define IFLY_AUDIO_SOURCE_STREAM @"-1"
	
	{!
	 *  ����������
	 }
	IFlySpeechEvaluator=interface(NSObject)//<IFlySpeechEvaluatorDelegate>
	['{68E10708-BD8B-4225-AD0C-89EF8C5B0504}']
		
		{!
		 *  ����ί�ж���
		 }
		function delegate:PIFlySpeechEvaluatorDelegate{id<IFlySpeechEvaluatorDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlySpeechEvaluatorDelegate{id<IFlySpeechEvaluatorDelegate>});cdecl;
		
		{!
		 *  �����������ĵ���
		 *
		 *  @return �����ĵ���
		 }
		
		{!
		 *  �����������
		 *
		 *  @return �ɹ�����YES��ʧ�ܷ���NO��
		 }
		{-} function destroy:Boolean;cdecl;
		
		{!
		 *  ������������Ĳ���
		 *
		 *  @param value �����������ֵ
		 *  @param key   �����������
		 *
		 *  @return ���õĲ�����ȡֵ��ȷ����YES,ʧ�ܷ���NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		
		{!
		 *  �����������Ĳ���
		 *
		 *  @param key   �����������
		 *
		 *  @return key��Ӧ�Ĳ���ֵ
		 }
		{-} function parameterForKey(key:NSString{*}):NSString{*};cdecl;
		
		{!
		 *  ��ʼ����<br>
		 *  ͬʱֻ�ܽ���һ·�Ự,��λỰû�н������ܽ�����һ·�Ự������ᱨ��
		 *
		 *  @param data   ���������
		 *  @param params ����Ĳ���
		 *  @return �ɹ�����YES��ʧ�ܷ���NO
		 }
		[MethodName('startListening:params:')]
		{-} function startListeningparams(data:NSData{*};params:NSString{*}):Boolean;cdecl;
		
		{!
		 *  ֹͣ¼��<br>
		 *  ���ô˺�����ֹͣ¼��������ʼ��������ʶ��
		 }
		{-} procedure stopListening;cdecl;
		
		{!
		 *  ȡ�����λỰ
		 }
		{-} procedure cancel;cdecl;
		
	end;
	
	IFlySpeechEvaluatorClass=interface(NSObjectClass)//<IFlySpeechEvaluatorDelegate>
	['{262F707F-6602-48D5-BBF3-B1AAB6A68A3C}']
		{+} function sharedInstance:IFlySpeechEvaluator;cdecl;
	end;
	
	TIFlySpeechEvaluator=class(TOCGenericImport<IFlySpeechEvaluatorClass,IFlySpeechEvaluator>)
	end;
	
	{!
	 *  ��Ƶ������<br>
	 *  ��Ƶ��������Խ��ļ��ֶ�д��
	 }
	IFlySpeechEvaluator=interface()//IFlyStreamISERecognizer
	['{90062EB3-13E9-438B-B00F-3A8AFCC19CFA}']
		
		{!
		 *  д����Ƶ��
		 *
		 *  @param audioData ��Ƶ����
		 *
		 *  @return д��ɹ�����YES��д��ʧ�ܷ���NO
		 }
		{-} function writeAudio(audioData:NSData{*}):Boolean;cdecl;
		
	end;
	
	IFlySpeechEvaluatorClass=interface(Class)//IFlyStreamISERecognizer
	['{7A3DF000-2C91-4B21-ACF8-67C0649825AC}']
	end;
	
	TIFlySpeechEvaluator=class(TOCGenericImport<IFlySpeechEvaluatorClass,IFlySpeechEvaluator>)
	end;
	
	
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlySpeechEvaluator_FakeLoader : IFlySpeechEvaluator; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechEvaluator';
function IFlySpeechEvaluator_FakeLoader : IFlySpeechEvaluator; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechEvaluator';
{$O+}


{$ENDIF}

end.

