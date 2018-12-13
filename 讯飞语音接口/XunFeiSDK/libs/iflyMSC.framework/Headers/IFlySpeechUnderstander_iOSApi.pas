//
//  IFlySpeechUnderstander.h
//  MSC
//
//  Created by iflytek on 2014-03-12.
//  Copyright (c) 2014�� iflytek. All rights reserved.
//

unit IFlySpeechUnderstander_iOSApi;

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
	PIFlySpeechRecognizerDelegate=Pointer;//PIFlySpeechRecognizerDelegate=Pointer of IFlySpeechRecognizerDelegate; ILocalObject(IFlySpeechRecognizerDelegate).GetObjectID

	
	
	//@protocol IFlySpeechRecognizerDelegate;
	
	{!
	 *  �������ӿ�
	 }
	IFlySpeechUnderstander=interface(NSObject)//
	['{96EDE55C-D849-4988-AB6B-A6EC134C9E24}']
		
		{!
		 *  �Ƿ������������
		 }
		function isUnderstanding:Boolean;cdecl;
		procedure setIsUnderstanding(isUnderstanding:Boolean);cdecl;
		
		{!
		 *  ����ί�ж���
		 }
		function delegate:PIFlySpeechRecognizerDelegate{id<IFlySpeechRecognizerDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlySpeechRecognizerDelegate{id<IFlySpeechRecognizerDelegate>});cdecl;
		
		{!
		 *  ��������������ĵ���
		 *
		 *  @return ����������
		 }
		
		{!
		 *  ��ʼ�����
		 *
		 *  ͬʱֻ�ܽ���һ·�Ự����λỰû�н������ܽ�����һ·�Ự������ᱨ��������Ҫ��λػ�������onError�ص����غ�������һ·�ػ���
		 *
		 *  @return �ɹ�����YES��ʧ�ܷ���NO
		 }
		{-} function startListening:Boolean;cdecl;
		
		{!
		 *  ֹͣ¼��<br>
		 *  ���ô˺�����ֹͣ¼��������ʼ�����������
		 }
		{-} procedure stopListening;cdecl;
		
		{!
		 *  ȡ�����λỰ
		 }
		{-} procedure cancel;cdecl;
		
		{
		 *  | ------------- |-----------------------------------------------------------
		 *  | ����           | ����
		 *  | ------------- |-----------------------------------------------------------
		 *  | domain        |Ӧ�õ�����: ȡֵΪ:iat��search��video��poi��music��asr��
		 *  |               |           iat����ͨ�ı���д��
		 *  |               |        search���ȴ�������
		 *  |               |         video����Ƶ����������
		 *  |               |           asr���ؼ���ʶ��;
		 *  | ------------- |-----------------------------------------------------------
		 *  | vad_bos       |ǰ�˵���: ������ʱʱ�䣬���û��೤ʱ�䲻˵��������ʱ���� ��λ��ms��
		 *  |               |          engineָ��iatʶ��Ĭ��ֵΪ5000��
		 *  |               |          �������Ĭ��ֵΪ 4000����Χ 0-10000��
		 *  | ------------- |-----------------------------------------------------------
		 *  | vad_eos       |��ϵ���: ��˵㾲�����ʱ��,���û�ֹͣ˵���೤ʱ���ڼ���Ϊ��������,
		 *  |               |          �Զ�ֹͣ¼������λ:ms;
		 *  |               |          sms ʶ��Ĭ��ֵΪ 1800;
		 *  |               |          ����Ĭ��ֵΪ 700����Χ 0-10000��
		 *  | ------------- |-----------------------------------------------------------
		 *  | sample_rate   |������:Ŀǰ֧�ֵĲ����������� 16000 �� 8000��
		 *  | ------------- |-----------------------------------------------------------
		 *  | asr_ptt       |����������: Ĭ��Ϊ 1��������Ϊ 0 ʱ���������ޱ������ı���
		 *  | ------------- |-----------------------------------------------------------
		 *  | result_type   |���ؽ�������ݸ�ʽ: ������Ϊjson��xml��plain��Ĭ��Ϊjson��
		 *  | ------------- |-----------------------------------------------------------
		 *  | grammarID     |ʶ����﷨id: ֻ��� domain ����Ϊ��asr����Ӧ�á�
		 *  | ------------- |-----------------------------------------------------------
		 *  | asr_audio_path|��Ƶ�ļ���: ���ô˲����󣬽����Զ�����ʶ���¼���ļ���
		 *  |               |          ·��ΪDocuments/(ָ��ֵ)��
		 *  |               |          �����û�������Ϊnil���򲻱�����Ƶ��
		 *  | ------------- |-----------------------------------------------------------
		 *  | params        |��չ����: ����һЩ����Ĳ������ڴ����ã�һ�������������塣
		 *  | ------------- |-----------------------------------------------------------
		 *
		 }
		
		{!
		 *  ���������������Ĳ���
		 *
		 *  ���������������(key)ȡֵ���£�
		 *
		 *  | ����             | ����                                                  |
		 *  |-----------------|-------------------------------------------------------|
		 *  | domain          | Ӧ�õ�����: ȡֵΪ:iat��search��video��poi��music��asr��<br>iat����ͨ�ı���д��<br>search���ȴ�������<br>video����Ƶ����������<br>asr���ؼ���ʶ��;|
		 *  | vad_bos         | ǰ�˵���: ������ʱʱ�䣬���û��೤ʱ�䲻˵��������ʱ���� ��λ��ms��<br>engineָ��iatʶ��Ĭ��ֵΪ5000��<br>�������Ĭ��ֵΪ 4000����Χ 0-10000��|
		 *  | vad_eos         | ��ϵ���: ��˵㾲�����ʱ��,���û�ֹͣ˵���೤ʱ���ڼ���Ϊ��������,�Զ�ֹͣ¼������λ:ms;<br>sms ʶ��Ĭ��ֵΪ 1800;<br>����Ĭ��ֵΪ 700����Χ 0-10000��|
		 *  | sample_rate     | ������:Ŀǰ֧�ֵĲ����������� 16000 �� 8000��|
		 *  | asr_ptt         | ����������: Ĭ��Ϊ 1��������Ϊ 0 ʱ���������ޱ������ı���|
		 *  | result_type     | ���ؽ�������ݸ�ʽ: ������Ϊjson��xml��plain��Ĭ��Ϊjson��|
		 *  | grammarID       | ʶ����﷨id: ֻ��� domain ����Ϊ��asr����Ӧ�á�|
		 *  | asr_audio_path  | ��Ƶ�ļ���: ���ô˲����󣬽����Զ�����ʶ���¼���ļ���<br>·��ΪDocuments/(ָ��ֵ)��<br>�����û�������Ϊnil���򲻱�����Ƶ��|
		 *  | params          | ��չ����: ����һЩ����Ĳ������ڴ����ã�һ�������������塣|
		 *
		 *  @param value ������Ӧ��ȡֵ
		 *  @param key   ��������������
		 *
		 *  @return �ɹ�����YES��ʧ�ܷ���NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		{!
		 *  д����Ƶ��
		 *
		 *  @param audioData ��Ƶ����
		 *
		 *  @return д��ɹ�����YES��д��ʧ�ܷ���NO
		 }
		{-} function writeAudio(audioData:NSData{*}):Boolean;cdecl;
		
		{!
		 *  ��������������
		 *
		 *  @return �ɹ�����YES��ʧ�ܷ���NO
		 }
		{-} function destroy:Boolean;cdecl;
		
	end;
	
	IFlySpeechUnderstanderClass=interface(NSObjectClass)//
	['{30B84987-6F93-4943-B2BF-B28E5338A20A}']
		{+} function sharedInstance:IFlySpeechUnderstander;cdecl;
	end;
	
	TIFlySpeechUnderstander=class(TOCGenericImport<IFlySpeechUnderstanderClass,IFlySpeechUnderstander>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlySpeechUnderstander_FakeLoader : IFlySpeechUnderstander; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechUnderstander';
{$O+}


{$ENDIF}

end.

