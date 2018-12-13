//
//  IFlySpeechSynthesizer.h
//  MSC
//
//  Created by ��Ч�� on 16-4-22.
//  Copyright (c) 2016�� iflytek. All rights reserved.
//

unit IFlySpeechSynthesizer_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
	IFlySpeechSynthesizerDelegate_iOSApi,
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
	PIFlySpeechSynthesizerDelegate=Pointer;//PIFlySpeechSynthesizerDelegate=Pointer of IFlySpeechSynthesizerDelegate; ILocalObject(IFlySpeechSynthesizerDelegate).GetObjectID

	
	
	{!
	 *  �����ϳ�
	 }
	IFlySpeechSynthesizer=interface(NSObject)//
	['{10B975F1-2385-43AE-B3F8-41CA4288CE50}']
		
		{!
		 *  ����ʶ���ί�ж���
		 }
		function delegate:PIFlySpeechSynthesizerDelegate{id<IFlySpeechSynthesizerDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlySpeechSynthesizerDelegate{id<IFlySpeechSynthesizerDelegate>});cdecl;
		
		{!
		 *  ���غϳɶ���ĵ���
		 *
		 *  @return �ϳɶ���
		 }
		
		{!
		 *  ���ٺϳɶ���
		 *
		 *  @return �ɹ�����YES,ʧ�ܷ���NO.
		 }
		
		{
		 *  | ------------- |-----------------------------------------------------------
		 *  | ����           | ����
		 *  | ------------- |-----------------------------------------------------------
		 *  | speed         |�ϳ�����,ȡֵ��Χ 0~100
		 *  | ------------- |-----------------------------------------------------------
		 *  | volume        |�ϳɵ�����,ȡֵ��Χ 0~100
		 *  | ------------- |-----------------------------------------------------------
		 *  | voice_name    |Ĭ��Ϊ��xiaoyan�����������õĲ����б�ɲο����Ի��������б�
		 *  | ------------- |-----------------------------------------------------------
		 *  | sample_rate   |������:Ŀǰ֧�ֵĲ����������� 16000 �� 8000��
		 *  | ------------- |-----------------------------------------------------------
		 *  | tts_audio_path|��Ƶ�ļ��� ���ô˲����󣬽����Զ�����ϳɵ���Ƶ�ļ���
		 *  |               |·��ΪDocuments/(ָ��ֵ)�������û�������Ϊnil���򲻱�����Ƶ��
		 *  | ------------- |-----------------------------------------------------------
		 *  | params        |��չ����: ����һЩ����Ĳ������ڴ����á�
		 *  | ------------- |-----------------------------------------------------------
		 *
		 }
		
		{!
		 *  ���úϳɲ���
		 *
		 *  | ����             | ����                                               |
		 *  |-----------------|----------------------------------------------------|
		 *  | speed           | �ϳ�����,ȡֵ��Χ 0~100                               |
		 *  | volume          | �ϳɵ�����,ȡֵ��Χ 0~100                             |
		 *  | voice_name      | Ĭ��Ϊ��xiaoyan�����������õĲ����б�ɲο����Ի��������б�   |
		 *  | sample_rate     | ������:Ŀǰ֧�ֵĲ����������� 16000 �� 8000��            |
		 *  | tts_audio_path  | ��Ƶ�ļ��� ���ô˲����󣬽����Զ�����ϳɵ���Ƶ�ļ���<br>·��ΪDocuments/(ָ��ֵ)�������û�������Ϊnil���򲻱�����Ƶ��|
		 *  | params          | ��չ����: ����һЩ����Ĳ������ڴ����á�                  |
		 *
		 *  @param value ����ȡֵ
		 *  @param key   �ϳɲ���
		 *
		 *  @return ���óɹ�����YES��ʧ�ܷ���NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		{!
		 *  ��ȡ�ϳɲ���
		 *
		 *  @param key ����key
		 *
		 *  @return ����ֵ
		 }
		{-} function parameterForKey(key:NSString{*}):NSString{*};cdecl;
		
		{!
		 *  ��ʼ�ϳ�(����)<br>
		 *  ���ô˺������кϳɣ�������������ص�����`onCompleted`
		 *
		 *  @param text �ϳɵ��ı�,�����ֽ���Ϊ1k
		 }
		{-} procedure startSpeaking(text:NSString{*});cdecl;
		
		{!
		 *  ��ʼ�ϳ�(������)<br>
		 *  ���ô˺������кϳɣ�������������ص�����`onCompleted`
		 *
		 *  @param text �ϳɵ��ı�,�����ֽ���Ϊ1k
		 *  @param uri  �ϳɺ󣬱����ٱ��ص���Ƶ·��
		 }
		[MethodName('synthesize:toUri:')]
		{-} procedure synthesizetoUri(text:NSString{*};uri:NSString{*});cdecl;
		
		{!
		 *  ��ͣ����<br>
		 *  ��ͣ����֮�󣬺ϳɲ�����ͣ���Ի��������������������ص�����`onCompleted`
		 }
		{-} procedure pauseSpeaking;cdecl;
		
		{!
		 *  �ָ�����
		 }
		{-} procedure resumeSpeaking;cdecl;
		
		{!
		 *  ֹͣ���Ų�ֹͣ�ϳ�
		 }
		{-} procedure stopSpeaking;cdecl;
		
		{!
		 *  �Ƿ����ڲ���
		 }
		function isSpeaking:Boolean;cdecl;
		procedure setIsSpeaking(isSpeaking:Boolean);cdecl;
		
	end;
	
	IFlySpeechSynthesizerClass=interface(NSObjectClass)//
	['{347DE09A-CFF5-41B7-B825-5E4BE2AFA828}']
		{+} function sharedInstance:IFlySpeechSynthesizer;cdecl;
		{+} function destroy:Boolean;cdecl;
	end;
	
	TIFlySpeechSynthesizer=class(TOCGenericImport<IFlySpeechSynthesizerClass,IFlySpeechSynthesizer>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlySpeechSynthesizer_FakeLoader : IFlySpeechSynthesizer; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechSynthesizer';
{$O+}


{$ENDIF}

end.

