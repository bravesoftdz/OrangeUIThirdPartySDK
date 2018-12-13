//
//  IFlySpeechSynthesizerDelegate.h
//  MSC
//
//  Created by ypzhao on 13-3-20.
//  Copyright (c) 2013年 iflytek. All rights reserved.
//

unit IFlySpeechSynthesizerDelegate_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
  IFlySpeechError_iOSApi,
//	IFlySpeechEvent_iOSApi,
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
	 *  语音合成回调
	 }
	IFlySpeechSynthesizerDelegate=interface(IObjectiveC)
		['{52800524-6320-45A1-937D-3FC4713974F0}']
		
		//@required
		
		{!
		 *  结束回调<br>
		 *  当整个合成结束之后会回调此函数
		 *
		 *  @param error 错误码
		 }
		{-} procedure onCompleted(error:IFlySpeechError{*});cdecl;
		
		//@optional
		
		{!
		 *  开始合成回调
		 }
		{-} procedure onSpeakBegin;cdecl;
		
		{!
		 *  缓冲进度回调
		 *
		 *  @param progress 缓冲进度，0-100
		 *  @param msg      附件信息，此版本为nil
		 }
		[MethodName('onBufferProgress:message:')]
		{-} procedure onBufferProgressmessage(progress:Integer;msg:NSString{*});cdecl;
		
		{!
		 *  播放进度回调
		 *
		 *  @param progress 当前播放进度，0-100
		 *  @param beginPos 当前播放文本的起始位置，0-100
		 *  @param endPos 当前播放文本的结束位置，0-100
		 }
		[MethodName('onSpeakProgress:beginPos:endPos:')]
		{-} procedure onSpeakProgressbeginPosendPos(progress:Integer;beginPos:Integer;endPos:Integer);cdecl;
		
		{!
		 *  暂停播放回调
		 }
		{-} procedure onSpeakPaused;cdecl;
		
		{!
		 *  恢复播放回调<br>
		 *  注意：此回调方法SDK内部不执行，播放恢复全部在onSpeakBegin中执行
		 }
		{-} procedure onSpeakResumed;cdecl;
		
		{!
		 *  正在取消回调<br>
		 *  注意：此回调方法SDK内部不执行
		 }
		{-} procedure onSpeakCancel;cdecl;
		
		{!
		 *  扩展事件回调<br>
		 *  根据事件类型返回额外的数据
		 *
		 *  @param eventType 事件类型，具体参见IFlySpeechEventType枚举。目前只支持EVENT_TTS_BUFFER也就是实时返回合成音频。
		 *  @param arg0      arg0
		 *  @param arg1      arg1
		 *  @param eventData 事件数据
		 }
		[MethodName('onEvent:arg0:arg1:data:')]
		{-} procedure onEventarg0arg1data(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*});cdecl;
		
	end;
	
	TOnonCompleted=procedure(error:IFlySpeechError{*}) of object;
	TOnonSpeakBegin=procedure() of object;
	TOnonBufferProgressmessage=procedure(progress:Integer;msg:NSString{*}) of object;
	TOnonSpeakProgressbeginPosendPos=procedure(progress:Integer;beginPos:Integer;endPos:Integer) of object;
	TOnonSpeakPaused=procedure() of object;
	TOnonSpeakResumed=procedure() of object;
	TOnonSpeakCancel=procedure() of object;
	TOnonEventarg0arg1data=procedure(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*}) of object;
	
	TIFlySpeechSynthesizerDelegate=class(TOCLocal,IFlySpeechSynthesizerDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonCompleted:TOnonCompleted;
		OnonSpeakBegin:TOnonSpeakBegin;
		OnonBufferProgressmessage:TOnonBufferProgressmessage;
		OnonSpeakProgressbeginPosendPos:TOnonSpeakProgressbeginPosendPos;
		OnonSpeakPaused:TOnonSpeakPaused;
		OnonSpeakResumed:TOnonSpeakResumed;
		OnonSpeakCancel:TOnonSpeakCancel;
		OnonEventarg0arg1data:TOnonEventarg0arg1data;
	
		
		//@required
		
		{!
		 *  结束回调<br>
		 *  当整个合成结束之后会回调此函数
		 *
		 *  @param error 错误码
		 }
		{-} procedure onCompleted(error:IFlySpeechError{*});cdecl;
		
		//@optional
		
		{!
		 *  开始合成回调
		 }
		{-} procedure onSpeakBegin;cdecl;
		
		{!
		 *  缓冲进度回调
		 *
		 *  @param progress 缓冲进度，0-100
		 *  @param msg      附件信息，此版本为nil
		 }
		[MethodName('onBufferProgress:message:')]
		{-} procedure onBufferProgressmessage(progress:Integer;msg:NSString{*});cdecl;
		
		{!
		 *  播放进度回调
		 *
		 *  @param progress 当前播放进度，0-100
		 *  @param beginPos 当前播放文本的起始位置，0-100
		 *  @param endPos 当前播放文本的结束位置，0-100
		 }
		[MethodName('onSpeakProgress:beginPos:endPos:')]
		{-} procedure onSpeakProgressbeginPosendPos(progress:Integer;beginPos:Integer;endPos:Integer);cdecl;
		
		{!
		 *  暂停播放回调
		 }
		{-} procedure onSpeakPaused;cdecl;
		
		{!
		 *  恢复播放回调<br>
		 *  注意：此回调方法SDK内部不执行，播放恢复全部在onSpeakBegin中执行
		 }
		{-} procedure onSpeakResumed;cdecl;
		
		{!
		 *  正在取消回调<br>
		 *  注意：此回调方法SDK内部不执行
		 }
		{-} procedure onSpeakCancel;cdecl;
		
		{!
		 *  扩展事件回调<br>
		 *  根据事件类型返回额外的数据
		 *
		 *  @param eventType 事件类型，具体参见IFlySpeechEventType枚举。目前只支持EVENT_TTS_BUFFER也就是实时返回合成音频。
		 *  @param arg0      arg0
		 *  @param arg1      arg1
		 *  @param eventData 事件数据
		 }
		[MethodName('onEvent:arg0:arg1:data:')]
		{-} procedure onEventarg0arg1data(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*});cdecl;
		
	end;
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
{$O+}

{ TIFlySpeechSynthesizerDelegate }

constructor TIFlySpeechSynthesizerDelegate.Create;
begin
	Inherited Create;
end;

destructor TIFlySpeechSynthesizerDelegate.Destroy;
begin
	Inherited;
end;

procedure  TIFlySpeechSynthesizerDelegate.onCompleted(error:IFlySpeechError{*});
begin
	if Assigned(OnonCompleted) then
	begin
		OnonCompleted(error);
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onSpeakBegin();
begin
	if Assigned(OnonSpeakBegin) then
	begin
		OnonSpeakBegin();
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onBufferProgressmessage(progress:Integer;msg:NSString{*});
begin
	if Assigned(OnonBufferProgressmessage) then
	begin
		OnonBufferProgressmessage(progress,msg);
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onSpeakProgressbeginPosendPos(progress:Integer;beginPos:Integer;endPos:Integer);
begin
	if Assigned(OnonSpeakProgressbeginPosendPos) then
	begin
		OnonSpeakProgressbeginPosendPos(progress,beginPos,endPos);
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onSpeakPaused();
begin
	if Assigned(OnonSpeakPaused) then
	begin
		OnonSpeakPaused();
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onSpeakResumed();
begin
	if Assigned(OnonSpeakResumed) then
	begin
		OnonSpeakResumed();
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onSpeakCancel();
begin
	if Assigned(OnonSpeakCancel) then
	begin
		OnonSpeakCancel();
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onEventarg0arg1data(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*});
begin
	if Assigned(OnonEventarg0arg1data) then
	begin
		OnonEventarg0arg1data(eventType,arg0,arg1,eventData);
	end;
end;



{$ENDIF}

end.

