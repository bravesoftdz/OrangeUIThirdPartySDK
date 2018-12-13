//
//  IFlySpeechEvaluatorDelegate.h
//  msc
//
//  Created by admin on 13-6-19.
//  Copyright (c) 2013年 iflytek. All rights reserved.
//


unit IFlySpeechEvaluatorDelegate_iOSApi;

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
	 *  评测协议
	 }
	IFlySpeechEvaluatorDelegate=interface(IObjectiveC)
		['{99D09CC4-7F87-4867-ACCE-460F0C37F715}']
		
		{!
		 *  音量和数据回调
		 *
		 *  @param volume 音量
		 *  @param buffer 音频数据
		 }
		[MethodName('onVolumeChanged:buffer:')]
		{-} procedure onVolumeChangedbuffer(volume:Integer;buffer:NSData{*});cdecl;
		
		{!
		 *  开始录音回调<br>
		 *  当调用了`startListening`函数之后，如果没有发生错误则会回调此函数。如果发生错误则回调onError:函数
		 }
		{-} procedure onBeginOfSpeech;cdecl;
		
		{!
		 *  停止录音回调<br>
		 *  当调用了`stopListening`函数或者引擎内部自动检测到断点，如果没有发生错误则回调此函数。<br>
		 *  如果发生错误则回调onError:函数
		 }
		{-} procedure onEndOfSpeech;cdecl;
		
		{!
		 *  正在取消
		 }
		{-} procedure onCancel;cdecl;
		
		{!
		 *  评测错误回调
		 *
		 *  在进行语音评测过程中的任何时刻都有可能回调此函数，你可以根据errorCode进行相应的处理.当errorCode没有错误时，表示此次会话正常结束，否则，表示此次会话有错误发生。特别的当调用`cancel`函数时，引擎不会自动结束，需要等到回调此函数，才表示此次会话结束。在没有回调此函数之前如果重新调用了`startListenging`函数则会报错误。
		 *
		 *  @param errorCode 错误描述类
		 }
		{-} procedure onError(errorCode:IFlySpeechError{*});cdecl;
		
		{!
		 *  评测结果回调<br>
		 *  在评测过程中可能会多次回调此函数，你最好不要在此回调函数中进行界面的更改等操作，只需要将回调的结果保存起来。
		 *
		 *  @param results -[out] 评测结果。
		 *  @param isLast  -[out] 是否最后一条结果
		 }
		[MethodName('onResults:isLast:')]
		{-} procedure onResultsisLast(results:NSData{*};isLast:Boolean);cdecl;
		
	end;
	
	TOnonVolumeChangedbuffer=procedure(volume:Integer;buffer:NSData{*}) of object;
	TOnonBeginOfSpeech=procedure() of object;
	TOnonEndOfSpeech=procedure() of object;
	TOnonCancel=procedure() of object;
	TOnonError=procedure(errorCode:IFlySpeechError{*}) of object;
	TOnonResultsisLast=procedure(results:NSData{*};isLast:Boolean) of object;
	
	TIFlySpeechEvaluatorDelegate=class(TOCLocal,IFlySpeechEvaluatorDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonVolumeChangedbuffer:TOnonVolumeChangedbuffer;
		OnonBeginOfSpeech:TOnonBeginOfSpeech;
		OnonEndOfSpeech:TOnonEndOfSpeech;
		OnonCancel:TOnonCancel;
		OnonError:TOnonError;
		OnonResultsisLast:TOnonResultsisLast;
	
		
		{!
		 *  音量和数据回调
		 *
		 *  @param volume 音量
		 *  @param buffer 音频数据
		 }
		[MethodName('onVolumeChanged:buffer:')]
		{-} procedure onVolumeChangedbuffer(volume:Integer;buffer:NSData{*});cdecl;
		
		{!
		 *  开始录音回调<br>
		 *  当调用了`startListening`函数之后，如果没有发生错误则会回调此函数。如果发生错误则回调onError:函数
		 }
		{-} procedure onBeginOfSpeech;cdecl;
		
		{!
		 *  停止录音回调<br>
		 *  当调用了`stopListening`函数或者引擎内部自动检测到断点，如果没有发生错误则回调此函数。<br>
		 *  如果发生错误则回调onError:函数
		 }
		{-} procedure onEndOfSpeech;cdecl;
		
		{!
		 *  正在取消
		 }
		{-} procedure onCancel;cdecl;
		
		{!
		 *  评测错误回调
		 *
		 *  在进行语音评测过程中的任何时刻都有可能回调此函数，你可以根据errorCode进行相应的处理.当errorCode没有错误时，表示此次会话正常结束，否则，表示此次会话有错误发生。特别的当调用`cancel`函数时，引擎不会自动结束，需要等到回调此函数，才表示此次会话结束。在没有回调此函数之前如果重新调用了`startListenging`函数则会报错误。
		 *
		 *  @param errorCode 错误描述类
		 }
		{-} procedure onError(errorCode:IFlySpeechError{*});cdecl;
		
		{!
		 *  评测结果回调<br>
		 *  在评测过程中可能会多次回调此函数，你最好不要在此回调函数中进行界面的更改等操作，只需要将回调的结果保存起来。
		 *
		 *  @param results -[out] 评测结果。
		 *  @param isLast  -[out] 是否最后一条结果
		 }
		[MethodName('onResults:isLast:')]
		{-} procedure onResultsisLast(results:NSData{*};isLast:Boolean);cdecl;
		
	end;
	
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
{$O+}

{ TIFlySpeechEvaluatorDelegate }

constructor TIFlySpeechEvaluatorDelegate.Create;
begin
	Inherited Create;
end;

destructor TIFlySpeechEvaluatorDelegate.Destroy;
begin
	Inherited;
end;

procedure  TIFlySpeechEvaluatorDelegate.onVolumeChangedbuffer(volume:Integer;buffer:NSData{*});
begin
	if Assigned(OnonVolumeChangedbuffer) then
	begin
		OnonVolumeChangedbuffer(volume,buffer);
	end;
end;

procedure  TIFlySpeechEvaluatorDelegate.onBeginOfSpeech();
begin
	if Assigned(OnonBeginOfSpeech) then
	begin
		OnonBeginOfSpeech();
	end;
end;

procedure  TIFlySpeechEvaluatorDelegate.onEndOfSpeech();
begin
	if Assigned(OnonEndOfSpeech) then
	begin
		OnonEndOfSpeech();
	end;
end;

procedure  TIFlySpeechEvaluatorDelegate.onCancel();
begin
	if Assigned(OnonCancel) then
	begin
		OnonCancel();
	end;
end;

procedure  TIFlySpeechEvaluatorDelegate.onError(errorCode:IFlySpeechError{*});
begin
	if Assigned(OnonError) then
	begin
		OnonError(errorCode);
	end;
end;

procedure  TIFlySpeechEvaluatorDelegate.onResultsisLast(results:NSData{*};isLast:Boolean);
begin
	if Assigned(OnonResultsisLast) then
	begin
		OnonResultsisLast(results,isLast);
	end;
end;



{$ENDIF}

end.

