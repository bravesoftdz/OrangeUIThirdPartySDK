//
//  IFlyPcmRecorder.h
//  MSC

//  description:

//  Created by ypzhao on 12-11-15.
//  Copyright (c) 2012�� iflytek. All rights reserved.
//

unit IFlyPcmRecorder_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
//	iOSapi.AudioQueue,
//	iOSapi.AudioFile,
//	iOSapi.AudioServices,
//	iOSapi.AudioConverter,
//	iOSapi.AVAudioSession,
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
	PIFlyPcmRecorderDelegate=Pointer;//PIFlyPcmRecorderDelegate=Pointer of IFlyPcmRecorderDelegate; ILocalObject(IFlyPcmRecorderDelegate).GetObjectID
//  IFlyPcmRecorder=interface;

	
	
	
	

	
	{!
	 *  ¼�����ؼ�
	 }
	IFlyPcmRecorder=interface(NSObject)//<AVAudioSessionDelegate>
	['{BD8F04C8-1614-4925-9ADB-A38C320C632C}']
		
		{!
		 *  ¼��ί�ж���
		 }
		function delegate:PIFlyPcmRecorderDelegate{id<IFlyPcmRecorderDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlyPcmRecorderDelegate{id<IFlyPcmRecorderDelegate>});cdecl;
		
		{!
		 *  ���������Ƿ���¼����������Deactive֪ͨ��Ĭ����YES������
		 }
		function isNeedDeActive:Boolean;cdecl;
		procedure setIsNeedDeActive(isNeedDeActive:Boolean);cdecl;
		
		{!
		 *  ����ģʽ
		 *
		 *  @return ����¼��������
		 }
		
		{!
		 *  ��ʼ¼��
		 *
		 *  @return  ����¼���ɹ�����YES�����򷵻�NO
		 }
		{-} function start:Boolean;cdecl;
		
		{!
		 *  ֹͣ¼��
		 }
		{-} procedure stop;cdecl;
		
		{!
		 *  ������Ƶ������
		 *
		 *  @param rate -[in] �����ʣ�8k/16k
		 }
		{-} procedure setSample(rate:NSString{*});cdecl;
		
		{!
		 * ����¼�������ص�ʱ��������
		 }
		{-} procedure setPowerCycle(cycle:single);cdecl;
		
		{!
		 *  ����¼��
		 *
		 *  @param savePath ��Ƶ����·��
		 }
		{-} procedure setSaveAudioPath(savePath:NSString{*});cdecl;
		
	end;
	
	IFlyPcmRecorderClass=interface(NSObjectClass)//<AVAudioSessionDelegate>
	['{10B7D5BF-5432-4A0A-BEF8-2FF78982EE09}']
		{+} function sharedInstance:IFlyPcmRecorder;cdecl;
	end;
	
	TIFlyPcmRecorder=class(TOCGenericImport<IFlyPcmRecorderClass,IFlyPcmRecorder>)
	end;






	{!
	 *  ¼��Э��
	 }
	IFlyPcmRecorderDelegate=interface(IObjectiveC)
		['{B970D433-F11E-471B-8E29-4F1706BC8BF7}']

		{!
		 *  �ص���Ƶ����
		 *
		 *  @param buffer ��Ƶ����
		 *  @param size   ��ʾ��Ƶ�ĳ���
		 }
		[MethodName('onIFlyRecorderBuffer:bufferSize:')]
		{-} procedure onIFlyRecorderBufferbufferSize(const buffer: Pointer{*};size:Integer);cdecl;

		{!
		 *  �ص���Ƶ�Ĵ�����
		 *
		 *  @param recoder ¼����
		 *  @param error   ������
		 }
		[MethodName('onIFlyRecorderError:theError:')]
		{-} procedure onIFlyRecorderErrortheError(recoder:IFlyPcmRecorder{*};error:Integer);cdecl;

		//@optional

		{!
		 *  �ص�¼������
		 *
		 *  @param power ����ֵ
		 }
		{-} procedure onIFlyRecorderVolumeChanged(power:Integer);cdecl;

	end;

	TOnonIFlyRecorderBufferbufferSize=procedure(const buffer: Pointer{*};size:Integer) of object;
	TOnonIFlyRecorderErrortheError=procedure(recoder:IFlyPcmRecorder{*};error:Integer) of object;
	TOnonIFlyRecorderVolumeChanged=procedure(power:Integer) of object;

	TIFlyPcmRecorderDelegate=class(TOCLocal,IFlyPcmRecorderDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonIFlyRecorderBufferbufferSize:TOnonIFlyRecorderBufferbufferSize;
		OnonIFlyRecorderErrortheError:TOnonIFlyRecorderErrortheError;
		OnonIFlyRecorderVolumeChanged:TOnonIFlyRecorderVolumeChanged;


		{!
		 *  �ص���Ƶ����
		 *
		 *  @param buffer ��Ƶ����
		 *  @param size   ��ʾ��Ƶ�ĳ���
		 }
		[MethodName('onIFlyRecorderBuffer:bufferSize:')]
		{-} procedure onIFlyRecorderBufferbufferSize(const buffer:Pointer{*};size:Integer);cdecl;

		{!
		 *  �ص���Ƶ�Ĵ�����
		 *
		 *  @param recoder ¼����
		 *  @param error   ������
		 }
		[MethodName('onIFlyRecorderError:theError:')]
		{-} procedure onIFlyRecorderErrortheError(recoder:IFlyPcmRecorder{*};error:Integer);cdecl;

		//@optional

		{!
		 *  �ص�¼������
		 *
		 *  @param power ����ֵ
		 }
		{-} procedure onIFlyRecorderVolumeChanged(power:Integer);cdecl;

	end;



{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyPcmRecorder_FakeLoader : IFlyPcmRecorder; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlyPcmRecorder';
{$O+}

{ TIFlyPcmRecorderDelegate }

constructor TIFlyPcmRecorderDelegate.Create;
begin
	Inherited Create;
end;

destructor TIFlyPcmRecorderDelegate.Destroy;
begin
	Inherited;
end;

procedure  TIFlyPcmRecorderDelegate.onIFlyRecorderBufferbufferSize(const buffer:Pointer{*};size:Integer);
begin
	if Assigned(OnonIFlyRecorderBufferbufferSize) then
	begin
		OnonIFlyRecorderBufferbufferSize(buffer,size);
	end;
end;

procedure  TIFlyPcmRecorderDelegate.onIFlyRecorderErrortheError(recoder:IFlyPcmRecorder{*};error:Integer);
begin
	if Assigned(OnonIFlyRecorderErrortheError) then
	begin
		OnonIFlyRecorderErrortheError(recoder,error);
	end;
end;

procedure  TIFlyPcmRecorderDelegate.onIFlyRecorderVolumeChanged(power:Integer);
begin
	if Assigned(OnonIFlyRecorderVolumeChanged) then
	begin
		OnonIFlyRecorderVolumeChanged(power);
	end;
end;



{$ENDIF}

end.

