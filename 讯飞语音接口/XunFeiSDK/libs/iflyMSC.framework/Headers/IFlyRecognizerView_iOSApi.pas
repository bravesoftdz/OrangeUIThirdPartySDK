//
//  IFlyRecognizerView.h
//  MSC
//
//  Created by admin on 13-4-16.
//  Copyright (c) 2013�� iflytek. All rights reserved.
//

unit IFlyRecognizerView_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.UIKit,
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreGraphics,
	iOSApi.OpenGLES,
	iOSApi.Foundation,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
	SysUtils,Types,FMX.Types,Classes;

type
	//declare pointer
	id=Pointer;
	PIFlyRecognizerViewDelegate=Pointer;//PIFlyRecognizerViewDelegate=Pointer of IFlyRecognizerViewDelegate; ILocalObject(IFlyRecognizerViewDelegate).GetObjectID

	
	
	//@protocol IFlyRecognizerViewDelegate ;
	
	{!
	 *  ����ʶ��ؼ�<br>
	 *  ¼��ʱ�����ؼ�����¼������ʼʶ���൱�ھɰ��ֹͣ������������λ�ã�ȡ��¼���������Ự��ȡ����<br>
	 *  ����ʱ�����ؼ������¿����Ự���൱�ھɰ����˵һ�Σ�����������λ�ã�ȡ��¼���������Ự��ȡ����
	 *
	 }
	IFlyRecognizerView=interface(UIView)//<NSObject>
	['{576DA148-6A1F-4B25-9792-FE9F3490D53B}']
		
		{!
		 *  ����ί�ж���
		 }
		function delegate:PIFlyRecognizerViewDelegate{id<IFlyRecognizerViewDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlyRecognizerViewDelegate{id<IFlyRecognizerViewDelegate>});cdecl;
		
		{!
		 *  ��ʼ���ؼ�
		 *
		 *  @param origin �ؼ����Ͻǵ�����
		 *
		 *  @return IFlyRecognizerView ����
		 }
		{-} function initWithOrigin(origin:CGPoint):id;cdecl;
		
		{!
		 *  ��ʼ���ؼ�
		 *
		 *  @param center �ؼ����ĵ�����
		 *
		 *  @return IFlyRecognizerView ����
		 }
		{-} function initWithCenter(center:CGPoint):id;cdecl;
		
		{!
		 *  ���ú���������Ӧ
		 *
		 *  @param autoRotate Ĭ��ֵYES������������Ӧ
		 }
		{-} procedure setAutoRotate(autoRotate:Boolean);cdecl;
		
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
		 *  ʶ����������(key)ȡֵ���£�<br>
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
		 *  @return �ɹ�����YES��ʧ�ܷ���NO
		 }
		{-} function start:Boolean;cdecl;
		
		{!
		 *  ȡ������ʶ��
		 }
		{-} procedure cancel;cdecl;
		
		
	end;
	
	IFlyRecognizerViewClass=interface(UIViewClass)//<NSObject>
	['{267192E4-9547-4441-871C-221A636B30C8}']
	end;
	
	TIFlyRecognizerView=class(TOCGenericImport<IFlyRecognizerViewClass,IFlyRecognizerView>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyRecognizerView_FakeLoader : IFlyRecognizerView; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlyRecognizerView';
{$O+}


{$ENDIF}

end.

