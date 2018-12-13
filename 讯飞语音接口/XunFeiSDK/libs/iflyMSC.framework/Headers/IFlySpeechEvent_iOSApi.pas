//
//  IFlySpeechEvent.h
//  MSCDemo
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014�� iflytek. All rights reserved.
//

unit IFlySpeechEvent_iOSApi;

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
	 *  �¼�����
	 }
	IFlySpeechEventType_=(
	//(NSUInteger,IFlySpeechEventType){
	//    /*!
	//     *  ����״̬��Ϣ<br>
	//     *  ����Ϣ����ʱ,��ͨ��onEvent�ĵ�2������arg1,��ȡ��ǰ��������״ֵ̬
	//     */
	    IFlySpeechEventTypeNetPref = 10001,
	//    /*!
	//     * תд��Ƶ�ļ���Ϣ<br>
	//     * ��¼��ģʽ�£��ɹ�������Ƶ�ļ�ʱ���ء���ͨ��onEvent��4������data��ָ��KeyΪ[IFlySpeechConstant IST_AUDIO_PATH],��ȡ��Ƶ�ļ�����·��.��ͨ��[IFlySpeechTranscripter getParameter:[IFlySpeechConstant IST_AUDIO_PATH]],��ȡ��Ƶ�ļ�����·��.
	//     */
	    IFlySpeechEventTypeISTAudioFile = 10004,
	//    /*!
	//     * תд���ϴ��ֽ���Ϣ<br>
	//     * ����Ϣ����ʱ,ͨ��onEvent�ĵڶ�������arg1,��ȡ��ȷ���ϴ������������ֽ���.����ǰ��ƵԴΪ��д��Ƶģʽ,����ͨ��onEvent
	//     * �ĵ���������arg2,��ȡ��ǰ������Ƶ���ֽڴ�С.¼��ģʽʱ������������Ƶ�ֽڴ�С��䡣��ֹͣ��Ƶ����󣨵ȴ�¼��ʱ�䳬ʱ[IFlySpeechConstant SPEECH_TIMEOUT]�������[IFlySpeechTranscripter stopTranscripting]�����ҷ������յ�������Ƶʱ�����ĸ�����data����������ɱ�ǵĲ���ֵ(true)����ͨ��data����ָ��KEYΪKCIFlySpeechEventKeyISTUploadComplete��ȡ������Ϣ���ܶ�η���.
	//     */
	    IFlySpeechEventTypeISTUploadBytes = 10006,
	//    /*!
	//     * תд����ʣ��<br>
	//     * ����Ϣ������ƵԴΪ-1ʱ��Ҫ��ע,�ڵ���[IFlySpeechTranscripter writeAudio]д��Ƶʱ��Ӧ�ù�ע���¼���<br>
	//     * ���¼��ڵ���д��Ƶ�ӿڡ�����Ƶ���д��׿��ʱ�ֱ�ص�һ�Ρ����¼��ص�ʱ��ͨ��onEvent�ĵڶ�������arg1,��ȡ��ǰʣ��Ļ����С��������С��Ҫд�����Ƶʱ��Ӧ������ͣд��Ƶ���ݣ�ֱ���´λ����С����Ҫд�����Ƶʱ.��󻺴�Ϊ128KByte��
	//     */
	    IFlySpeechEventTypeISTCacheLeft = 10007,
	//    /*!
	//     * תд����ȴ�ʱ����Ϣ<br>
	//     * ����Ϣ����ʱ,ͨ�� onEvent�ĵڶ�������arg1,��ȡ��ǰ�����Ҫ��ʱ��.<br>
	//     * ����Ϣ���ܶ�η��أ�����ʱ�䲻�����Ҳ�һ���᷵��.
	//     */
	    IFlySpeechEventTypeISTResultTime= 10008,
	//    /*!
	//     * תдתд��Ƶͬ��ID��Ϣ<br>
	//     * ����Ϣ����ʱ,ͨ�� onEvent�ĵڶ�������arg1,��ȡ��ǰд��Ƶͬ��ID.<br>
	//     * ����Ϣ���ܶ�η���.
	//     */
	    IFlySpeechEventTypeISTSyncID= 10009,
	//    /*!
	//     * �Ự��ʼ��Ϣ<br>
	//     * �ڻỰ��ʼ�ɹ��󷵻�
	//     */
	    IFlySpeechEventTypeSessionBegin = 10010,
	//    /*!
	//     * �Ự������Ϣ<br>
	//     * �ڻỰ����ǰ����
	//     */
	    IFlySpeechEventTypeSessionEnd = 10011,
	//    /*!
	//     * ������Ϣ���ڵõ�����ʱ�׳�����ʱֻ�������֤������ҵ���õ�
	//     */
	    IFlySpeechEventTypeVolume = 10012,
	//    /*!
	//     * VAD��˵���Ϣ���ڼ�⵽VAD��˵�ʱ�׳�����ʱֻ�������֤������ҵ���õ�
	//     */
	    IFlySpeechEventTypeVadEOS = 10013,
	//    /*!
	//     *  ����˻Ựid<br>
	//     *  ����Ϣ����ʱ,��ͨ��onEvent�ĵ�4������data(�ֵ�����)��ָ��key KCIFlySpeechEventKeySessionID,��ȡ����˻Ựid.
	//     */
	    IFlySpeechEventTypeSessionID = 20001,
	//    /*!
	//     *  TTS�ϳ�������Ϣ<br>
	//     *  -(void)onEvent:(int)eventType arg0:(int)arg0 arg1:(int)arg1 data:(NSData *)eventData<br>
	//     *  ����eventData�а�������
	//     *
	//     */
	    IFlySpeechEventTypeTTSBuffer = 21001,
	//    /*!
	//     *  ֪ͨcancel���������õĻص�
	//     *
	//     */
	    IFlySpeechEventTypeTTSCancel = 21002,
	//    /*!
	//     *  IVW onshot ��д or ʶ����<br>
	//     *  ����Ϣ����ʱ,��2������arg1�����Ƿ�Ϊ���һ�����:1Ϊ��,0Ϊ��;<br>
	//     *  ��4������data�а������ݣ�ͨ��ָ��KEYΪKCIFlySpeechEventKeyIVWResult��ȡ.
	//     */
	    IFlySpeechEventTypeIVWResult = 22001,
	//    /*!
	//     * ��ʼ����¼������
	//     * 
	//     */
	    IFlySpeechEventTypeSpeechStart= 22002,
	//    /*!
	//     * ¼��ֹͣ
	//     * 
	//     */
	    IFlySpeechEventTypeRecordStop= 22003,
	//    /*!
	//     *  �������Ƶurl<br>
	//     *  ����Ϣ����ʱ,��4������data,��������,ͨ��ָ��KEYΪKCIFlySpeechEventKeyAudioUrl��ȡ.
	//     */
	    IFlySpeechEventTypeAudioUrl = 23001,
	//    /*!
	//     *  �������ݽ������<br>
	//     *  ����voice_change������ȡ���.
	//     */
	    IFlySpeechEventTypeVoiceChangeResult = 24001
	);
	IFlySpeechEventType=Integer;
	
	//#pragma mark - keys for event data
	
	{*
	 *  תд�Ƿ����ϴ�����key
	 }
	{extern NSString*}KCIFlySpeechEventKeyISTUploadComplete=;
	
	{*
	 *  ����˻Ựkey
	 }
	{extern NSString*}KCIFlySpeechEventKeySessionID=;
	{*
	 *  TTSȡ��Ƶ����key
	 }
	{extern NSString*}KCIFlySpeechEventKeyTTSBuffer=;
	{*
	 *  IVW oneshot ��д or ʶ���� key
	 }
	{extern NSString*}KCIFlySpeechEventKeyIVWResult=;
	{*
	 *  �������Ƶurl key
	 }
	{extern NSString*}KCIFlySpeechEventKeyAudioUrl=;
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
{$O+}


{$ENDIF}

end.

