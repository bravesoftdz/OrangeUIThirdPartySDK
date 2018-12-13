//
//  IFlySpeechRecognizer.h
//  MSC
//
//  Created by iflytek on 13-3-19.
//  Copyright (c) 2013�� iflytek. All rights reserved.
//

unit IFlySpeechRecognizer_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
	IFlySpeechRecognizerDelegate_iOSApi,
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

	
	
	//#define IFLY_AUDIO_SOURCE_MIC    @"1"
	//#define IFLY_AUDIO_SOURCE_STREAM @"-1"
	
	{!
	 *  ����ʶ����<br>
	 *  �����������Ϊ����������ʹ����ֻ��Ҫ�����˶��󣬲��ܵ���release/dealloc����ȥ�ͷŴ˶������й�������ʶ��Ĳ������ڴ����С�
	 }
	IFlySpeechRecognizer=interface(NSObject)//<IFlySpeechRecognizerDelegate>
	['{4DC97F6E-1ED8-4287-BDBC-5934379961D6}']
		
		{!
		 *  ����ί�ж��� 
		 }
		function delegate:PIFlySpeechRecognizerDelegate{id<IFlySpeechRecognizerDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlySpeechRecognizerDelegate{id<IFlySpeechRecognizerDelegate>});cdecl;
		
		{!
		 *  ����ʶ�����ĵ���
		 *
		 *  @return ʶ�����ĵ���
		 }
		
		{!
		 *  ����ʶ�����
		 *
		 *  @return �ɹ�����YES,ʧ�ܷ���NO
		 }
		{-} function destroy:Boolean;cdecl;
		
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
		 *  ����ʶ������Ĳ���
		 *
		 *  ʶ����������(key)ȡֵ���£�
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
		 *  @param key   ʶ���������
		 *
		 *  @return �ɹ�����YES��ʧ�ܷ���NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		{!
		 *  ��ȡʶ���������
		 *
		 *  @param key ����key
		 *
		 *  @return ����ֵ
		 }
		{-} function parameterForKey(key:NSString{*}):NSString{*};cdecl;
		
		{!
		 *  ��ʼʶ��
		 *
		 *  ͬʱֻ�ܽ���һ·�Ự����λỰû�н������ܽ�����һ·�Ự������ᱨ��������Ҫ��λػ�������onError�ص����غ�������һ·�ػ���
		 *
		 *  @return �ɹ�����YES��ʧ�ܷ���NO
		 }
		{-} function startListening:Boolean;cdecl;
		
		{!
		 *  ֹͣ¼��<br>
		 *  ���ô˺�����ֹͣ¼��������ʼ��������ʶ��
		 }
		{-} procedure stopListening;cdecl;
		
		{!
		 *  ȡ�����λỰ
		 }
		{-} procedure cancel;cdecl;
		
//		{!
//		 *  �ϴ��﷨
//		 *
//		 *  @param completionHandler �ϴ��﷨��ɻص�
//		 *  @param grammarType       �﷨����
//		 *  @param grammarContent    �﷨����
//		 *
//		 *  @return ������
//		 }
//		[MethodName('buildGrammarCompletionHandler:grammarType:grammarContent:')]
//		{-} function buildGrammarCompletionHandlergrammarTypegrammarContent(completionHandler:IFlyOnBuildFinishCompletionHandler;grammarType:NSString{*};grammarContent:NSString{*}):Integer;cdecl;

		{! 
		 *  �Ƿ�����ʶ��
		 }
		function isListening:Boolean;cdecl;
		procedure setIsListening(isListening:Boolean);cdecl;
		





		{!
		*  д����Ƶ��
		*
		*  �˷�����ʹ��ʾ������:
		* <pre><code>[_iFlySpeechRecognizer setParameter:@"-1" value:@"audio_source"];
		* [_iFlySpeechRecognizer startListening];
		* [_iFlySpeechRecognizer writeAudio:audioData1];
		* [_iFlySpeechRecognizer writeAudio:audioData2];
		* ...
		* [_iFlySpeechRecognizer stopListening];
		* </code></pre>
		*
		*  @param audioData ��Ƶ����
		*
		*  @return д��ɹ�����YES��д��ʧ�ܷ���NO
		}
		{-} function writeAudio(audioData:NSData{*}):Boolean;cdecl;


	end;
	
	IFlySpeechRecognizerClass=interface(NSObjectClass)//<IFlySpeechRecognizerDelegate>
	['{4E1F6F7D-9962-46F2-B68C-3168DB7741C2}']
		{+} function sharedInstance:IFlySpeechRecognizer;cdecl;
	end;
	
	TIFlySpeechRecognizer=class(TOCGenericImport<IFlySpeechRecognizerClass,IFlySpeechRecognizer>)
	end;





//	{!
//	 *  ��Ƶ��ʶ��<br>
//	 *  ��Ƶ��ʶ����Խ��ļ��ֶ�д��
//	 }
//	IFlySpeechRecognizer=interface(NSObject)//IFlyStreamRecognizer
//	['{F08DA5AC-CB4C-4615-8335-DC55F82717E4}']
//
//		{!
//		*  д����Ƶ��
//		*
//		*  �˷�����ʹ��ʾ������:
//		* <pre><code>[_iFlySpeechRecognizer setParameter:@"-1" value:@"audio_source"];
//		* [_iFlySpeechRecognizer startListening];
//		* [_iFlySpeechRecognizer writeAudio:audioData1];
//		* [_iFlySpeechRecognizer writeAudio:audioData2];
//		* ...
//		* [_iFlySpeechRecognizer stopListening];
//		* </code></pre>
//		*
//		*  @param audioData ��Ƶ����
//		*
//		*  @return д��ɹ�����YES��д��ʧ�ܷ���NO
//		}
//		{-} function writeAudio(audioData:NSData{*}):Boolean;cdecl;
//
//	end;
//
//	IFlySpeechRecognizerClass=interface(NSObjectClass)//IFlyStreamRecognizer
//	['{346CF105-4D08-4EBF-ABF7-EB42CBC3EDCA}']
//	end;
//
//	TIFlySpeechRecognizer=class(TOCGenericImport<IFlySpeechRecognizerClass,IFlySpeechRecognizer>)
//	end;

{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlySpeechRecognizer_FakeLoader : IFlySpeechRecognizer; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechRecognizer';
//function IFlySpeechRecognizer_FakeLoader : IFlySpeechRecognizer; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechRecognizer';
{$O+}


{$ENDIF}

end.

