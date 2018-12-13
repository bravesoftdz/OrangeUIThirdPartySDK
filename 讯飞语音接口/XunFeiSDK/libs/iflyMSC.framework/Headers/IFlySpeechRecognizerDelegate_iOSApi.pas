//
//  IFlySpeechRecognizerDelegate.h
//  MSC
//
//  Created by ypzhao on 13-3-27.
//  Copyright (c) 2013年 iflytek. All rights reserved.
//

unit IFlySpeechRecognizerDelegate_iOSApi;

interface

{$IFDEF IOS}
uses
  IFlySpeechError_iOSApi,
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
	 *  构建语法结束回调
	 *
	 *  @param grammarId 语法id
	 *  @param error     错误描述
	 }
//	grammarId,IFlySpeechError * error)=void(^IFlyOnBuildFinishCompletionHandler)(NSString*;

	
	{!
	 *  语音识别协议<br>
	 *  在使用语音识别时，需要实现这个协议中的方法.
	 }
	IFlySpeechRecognizerDelegate=interface(IObjectiveC)
		['{35AE60A1-89F6-4C0E-BBEB-2C612650117C}']
		
		//@required
		
		{!
		 *  识别结果回调
		 *
		 *  在进行语音识别过程中的任何时刻都有可能回调此函数，你可以根据errorCode进行相应的处理，当errorCode没有错误时，表示此次会话正常结束；否则，表示此次会话有错误发生。特别的当调用`cancel`函数时，引擎不会自动结束，需要等到回调此函数，才表示此次会话结束。在没有回调此函数之前如果重新调用了`startListenging`函数则会报错误。
		 *
		 *  @param errorCode 错误描述
		 }
		{-} procedure onError(errorCode:IFlySpeechError{*});cdecl;

//		{!
//		 *  识别结果回调
//		 *
//		 *  在识别过程中可能会多次回调此函数，你最好不要在此回调函数中进行界面的更改等操作，只需要将回调的结果保存起来。<br>
//		 *  使用results的示例如下：
//		 *  <pre><code>
//		 *  - (void) onResults:(NSArray *) results{
//		 *     NSMutableString *result = [[NSMutableString alloc] init];
//		 *     NSDictionary *dic = [results objectAtIndex:0];
//		 *     for (NSString *key in dic){
//		 *        [result appendFormat:@"%@",key];//合并结果
//		 *     }
//		 *   }
//		 *  </code></pre>
//		 *
//		 *  @param results  -[out] 识别结果，NSArray的第一个元素为NSDictionary，NSDictionary的key为识别结果，sc为识别结果的置信度。
//		 *  @param isLast   -[out] 是否最后一个结果
//		 }
		[MethodName('onResults:isLast:')]
		{-} procedure onResultsisLast(results:NSArray{*};isLast:Boolean);cdecl;
		
		//@optional
		
		{!
		 *  音量变化回调<br>
		 *  在录音过程中，回调音频的音量。
		 *
		 *  @param volume -[out] 音量，范围从0-30
		 }
		{-} procedure onVolumeChanged(volume:Integer);cdecl;
		
		{!
		 *  开始录音回调<br>
		 *  当调用了`startListening`函数之后，如果没有发生错误则会回调此函数。<br>
		 *  如果发生错误则回调onError:函数
		 }
		{-} procedure onBeginOfSpeech;cdecl;
		
		{!
		 *  停止录音回调<br>
		 *  当调用了`stopListening`函数或者引擎内部自动检测到断点，如果没有发生错误则回调此函数。<br>
		 *  如果发生错误则回调onError:函数
		 }
		{-} procedure onEndOfSpeech;cdecl;
		
		{!
		 *  取消识别回调<br>
		 *  当调用了`cancel`函数之后，会回调此函数，在调用了cancel函数和回调onError之前会有一个<br>
		 *  短暂时间，您可以在此函数中实现对这段时间的界面显示。
		 }
		{-} procedure onCancel;cdecl;
		
		//#ifdef _EDUCATION_
		{!
		 *  返回音频Key
		 *
		 *  @param key 音频Key
		 }
		{-} procedure getAudioKey(key:NSString{*});cdecl;
		
		//#endif
		
		{!
		 *  扩展事件回调<br>
		 *  根据事件类型返回额外的数据
		 *
		 *  @param eventType 事件类型，具体参见IFlySpeechEventType的IFlySpeechEventTypeVoiceChangeResult枚举。
		 *  @param arg0      arg0
		 *  @param arg1      arg1
		 *  @param eventData 事件数据
		 }
		[MethodName('onEvent:arg0:arg1:data:')]
		{-} procedure onEventarg0arg1data(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*});cdecl;
		
	end;
	
	TOnonError=procedure(errorCode:IFlySpeechError{*}) of object;
	TOnonResultsisLast=procedure(results:NSArray{*};isLast:Boolean) of object;
	TOnonVolumeChanged=procedure(volume:Integer) of object;
	TOnonBeginOfSpeech=procedure() of object;
	TOnonEndOfSpeech=procedure() of object;
	TOnonCancel=procedure() of object;
	TOngetAudioKey=procedure(key:NSString{*}) of object;
	TOnonEventarg0arg1data=procedure(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*}) of object;
	
	TIFlySpeechRecognizerDelegate=class(TOCLocal,IFlySpeechRecognizerDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonError:TOnonError;
		OnonResultsisLast:TOnonResultsisLast;
		OnonVolumeChanged:TOnonVolumeChanged;
		OnonBeginOfSpeech:TOnonBeginOfSpeech;
		OnonEndOfSpeech:TOnonEndOfSpeech;
		OnonCancel:TOnonCancel;
		OngetAudioKey:TOngetAudioKey;
		OnonEventarg0arg1data:TOnonEventarg0arg1data;
	
		
		//@required
		
		{!
		 *  识别结果回调
		 *
		 *  在进行语音识别过程中的任何时刻都有可能回调此函数，你可以根据errorCode进行相应的处理，当errorCode没有错误时，表示此次会话正常结束；否则，表示此次会话有错误发生。特别的当调用`cancel`函数时，引擎不会自动结束，需要等到回调此函数，才表示此次会话结束。在没有回调此函数之前如果重新调用了`startListenging`函数则会报错误。
		 *
		 *  @param errorCode 错误描述
		 }
		{-} procedure onError(errorCode:IFlySpeechError{*});cdecl;
		
//		{!
//		 *  识别结果回调
//		 *
//		 *  在识别过程中可能会多次回调此函数，你最好不要在此回调函数中进行界面的更改等操作，只需要将回调的结果保存起来。<br>
//		 *  使用results的示例如下：
//		 *  <pre><code>
//		 *  - (void) onResults:(NSArray *) results{
//		 *     NSMutableString *result = [[NSMutableString alloc] init];
//		 *     NSDictionary *dic = [results objectAtIndex:0];
//		 *     for (NSString *key in dic){
//		 *        [result appendFormat:@"%@",key];//合并结果
//		 *     }
//		 *   }
//		 *  </code></pre>
//		 *
//		 *  @param results  -[out] 识别结果，NSArray的第一个元素为NSDictionary，NSDictionary的key为识别结果，sc为识别结果的置信度。
//		 *  @param isLast   -[out] 是否最后一个结果
//		 }
		[MethodName('onResults:isLast:')]
		{-} procedure onResultsisLast(results:NSArray{*};isLast:Boolean);cdecl;
		
		//@optional
		
		{!
		 *  音量变化回调<br>
		 *  在录音过程中，回调音频的音量。
		 *
		 *  @param volume -[out] 音量，范围从0-30
		 }
		{-} procedure onVolumeChanged(volume:Integer);cdecl;
		
		{!
		 *  开始录音回调<br>
		 *  当调用了`startListening`函数之后，如果没有发生错误则会回调此函数。<br>
		 *  如果发生错误则回调onError:函数
		 }
		{-} procedure onBeginOfSpeech;cdecl;
		
		{!
		 *  停止录音回调<br>
		 *  当调用了`stopListening`函数或者引擎内部自动检测到断点，如果没有发生错误则回调此函数。<br>
		 *  如果发生错误则回调onError:函数
		 }
		{-} procedure onEndOfSpeech;cdecl;
		
		{!
		 *  取消识别回调<br>
		 *  当调用了`cancel`函数之后，会回调此函数，在调用了cancel函数和回调onError之前会有一个<br>
		 *  短暂时间，您可以在此函数中实现对这段时间的界面显示。
		 }
		{-} procedure onCancel;cdecl;
		
		//#ifdef _EDUCATION_
		{!
		 *  返回音频Key
		 *
		 *  @param key 音频Key
		 }
		{-} procedure getAudioKey(key:NSString{*});cdecl;
		
		//#endif
		
		{!
		 *  扩展事件回调<br>
		 *  根据事件类型返回额外的数据
		 *
		 *  @param eventType 事件类型，具体参见IFlySpeechEventType的IFlySpeechEventTypeVoiceChangeResult枚举。
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

{ TIFlySpeechRecognizerDelegate }

constructor TIFlySpeechRecognizerDelegate.Create;
begin
	Inherited Create;
end;

destructor TIFlySpeechRecognizerDelegate.Destroy;
begin
	Inherited;
end;

procedure  TIFlySpeechRecognizerDelegate.onError(errorCode:IFlySpeechError{*});
begin
	if Assigned(OnonError) then
	begin
		OnonError(errorCode);
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.onResultsisLast(results:NSArray{*};isLast:Boolean);
begin
	if Assigned(OnonResultsisLast) then
	begin
		OnonResultsisLast(results,isLast);
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.onVolumeChanged(volume:Integer);
begin
	if Assigned(OnonVolumeChanged) then
	begin
		OnonVolumeChanged(volume);
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.onBeginOfSpeech();
begin
	if Assigned(OnonBeginOfSpeech) then
	begin
		OnonBeginOfSpeech();
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.onEndOfSpeech();
begin
	if Assigned(OnonEndOfSpeech) then
	begin
		OnonEndOfSpeech();
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.onCancel();
begin
	if Assigned(OnonCancel) then
	begin
		OnonCancel();
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.getAudioKey(key:NSString{*});
begin
	if Assigned(OngetAudioKey) then
	begin
		OngetAudioKey(key);
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.onEventarg0arg1data(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*});
begin
	if Assigned(OnonEventarg0arg1data) then
	begin
		OnonEventarg0arg1data(eventType,arg0,arg1,eventData);
	end;
end;



{$ENDIF}

end.

