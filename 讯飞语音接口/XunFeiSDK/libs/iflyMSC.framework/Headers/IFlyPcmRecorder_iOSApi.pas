//
//  IFlyPcmRecorder.h
//  MSC

//  description:

//  Created by ypzhao on 12-11-15.
//  Copyright (c) 2012年 iflytek. All rights reserved.
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
	 *  录音器控件
	 }
	IFlyPcmRecorder=interface(NSObject)//<AVAudioSessionDelegate>
	['{BD8F04C8-1614-4925-9ADB-A38C320C632C}']
		
		{!
		 *  录音委托对象
		 }
		function delegate:PIFlyPcmRecorderDelegate{id<IFlyPcmRecorderDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlyPcmRecorderDelegate{id<IFlyPcmRecorderDelegate>});cdecl;
		
		{!
		 *  用于设置是否在录音结束后发送Deactive通知，默认是YES：发送
		 }
		function isNeedDeActive:Boolean;cdecl;
		procedure setIsNeedDeActive(isNeedDeActive:Boolean);cdecl;
		
		{!
		 *  单例模式
		 *
		 *  @return 返回录音对象单例
		 }
		
		{!
		 *  开始录音
		 *
		 *  @return  开启录音成功返回YES，否则返回NO
		 }
		{-} function start:Boolean;cdecl;
		
		{!
		 *  停止录音
		 }
		{-} procedure stop;cdecl;
		
		{!
		 *  设置音频采样率
		 *
		 *  @param rate -[in] 采样率，8k/16k
		 }
		{-} procedure setSample(rate:NSString{*});cdecl;
		
		{!
		 * 设置录音音量回调时间间隔参数
		 }
		{-} procedure setPowerCycle(cycle:single);cdecl;
		
		{!
		 *  保存录音
		 *
		 *  @param savePath 音频保存路径
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
	 *  录音协议
	 }
	IFlyPcmRecorderDelegate=interface(IObjectiveC)
		['{B970D433-F11E-471B-8E29-4F1706BC8BF7}']

		{!
		 *  回调音频数据
		 *
		 *  @param buffer 音频数据
		 *  @param size   表示音频的长度
		 }
		[MethodName('onIFlyRecorderBuffer:bufferSize:')]
		{-} procedure onIFlyRecorderBufferbufferSize(const buffer: Pointer{*};size:Integer);cdecl;

		{!
		 *  回调音频的错误码
		 *
		 *  @param recoder 录音器
		 *  @param error   错误码
		 }
		[MethodName('onIFlyRecorderError:theError:')]
		{-} procedure onIFlyRecorderErrortheError(recoder:IFlyPcmRecorder{*};error:Integer);cdecl;

		//@optional

		{!
		 *  回调录音音量
		 *
		 *  @param power 音量值
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
		 *  回调音频数据
		 *
		 *  @param buffer 音频数据
		 *  @param size   表示音频的长度
		 }
		[MethodName('onIFlyRecorderBuffer:bufferSize:')]
		{-} procedure onIFlyRecorderBufferbufferSize(const buffer:Pointer{*};size:Integer);cdecl;

		{!
		 *  回调音频的错误码
		 *
		 *  @param recoder 录音器
		 *  @param error   错误码
		 }
		[MethodName('onIFlyRecorderError:theError:')]
		{-} procedure onIFlyRecorderErrortheError(recoder:IFlyPcmRecorder{*};error:Integer);cdecl;

		//@optional

		{!
		 *  回调录音音量
		 *
		 *  @param power 音量值
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

