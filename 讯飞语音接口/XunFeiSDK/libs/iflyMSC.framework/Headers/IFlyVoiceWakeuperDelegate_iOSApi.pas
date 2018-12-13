
//
//  IFlyVoiceWakeuperDel.h
//  wakeup
//
//  Created by admin on 14-3-18.
//  Copyright (c) 2014年 iflytek. All rights reserved.
//



unit IFlyVoiceWakeuperDelegate_iOSApi;

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
	 *  代理返回时序描述
	 
	   onError 为唤醒会话错误反馈<br>
	   onBeginOfSpeech 表示录音开始<br>
	   onVolumeChanged 录音音量大小<br>
	   onEndOfSpeech 录音结束，当服务终止时返回onEndOfSpeech<br>
	   onResult 服务结果反馈，内容定义如下
	 
	 *  唤醒服务
	 
	    例：<br>
	    focus_type = wake   唤醒会话<br>
	    wakeup_result_id = 0    唤醒词位置<br>
	    wakeup_result_Score = 60    唤醒词可信度<br>
	 
	 *  注册服务
	 
	    例：<br>
	    focus_type = enroll 注册会话<br>
	    enroll_success_num = 1  当前注册成功次数<br>
	    current_enroll_status = success/failed  当前会话是否成功<br>
	    wakeup_result_Score = 60    注册结果可信度<br>
	    threshold = 10  当注册达到3次后，反馈对应资源的阀值
	 }
	IFlyVoiceWakeuperDelegate=interface(IObjectiveC)
		['{C9B848F3-4FF2-496E-B2BF-6899F8DEFFAE}']
		
		//@optional
		
		{!
		 * 录音开始
		 }
		{-} procedure onBeginOfSpeech;cdecl;
		
		{!
		 * 录音结束
		 }
		{-} procedure onEndOfSpeech;cdecl;
		
		{!
		 * 会话错误
		 *
		 * @param errorCode 错误描述类，
		 }
		{-} procedure onError(error:IFlySpeechError{*});cdecl;
		
		{!
		 * 唤醒结果
		 *
		 * @param resultDic 唤醒结果字典
		 }
		{-} procedure onResult(resultDic:NSMutableDictionary{*});cdecl;
		
		{!
		 * 音量反馈，返回频率与录音数据返回回调频率一致
		 *
		 * @param volume 音量值
		 }
		{-} procedure onVolumeChanged(volume:Integer);cdecl;
		
		
		{!
		 * 扩展事件回调<br>
		 * 根据事件类型返回额外的数据
		 *
		 @param eventType 事件类型，具体参见IFlySpeechEvent枚举。
		 }
		[MethodName('onEvent:isLast:arg1:data:')]
		{-} procedure onEventisLastarg1data(eventType:Integer;isLast:Boolean;arg1:Integer;eventData:NSMutableDictionary{*});cdecl;
		
	end;
	
	TOnonBeginOfSpeech=procedure() of object;
	TOnonEndOfSpeech=procedure() of object;
	TOnonError=procedure(error:IFlySpeechError{*}) of object;
	TOnonResult=procedure(resultDic:NSMutableDictionary{*}) of object;
	TOnonVolumeChanged=procedure(volume:Integer) of object;
	TOnonEventisLastarg1data=procedure(eventType:Integer;isLast:Boolean;arg1:Integer;eventData:NSMutableDictionary{*}) of object;
	
	TIFlyVoiceWakeuperDelegate=class(TOCLocal,IFlyVoiceWakeuperDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonBeginOfSpeech:TOnonBeginOfSpeech;
		OnonEndOfSpeech:TOnonEndOfSpeech;
		OnonError:TOnonError;
		OnonResult:TOnonResult;
		OnonVolumeChanged:TOnonVolumeChanged;
		OnonEventisLastarg1data:TOnonEventisLastarg1data;
	
		
		//@optional
		
		{!
		 * 录音开始
		 }
		{-} procedure onBeginOfSpeech;cdecl;
		
		{!
		 * 录音结束
		 }
		{-} procedure onEndOfSpeech;cdecl;
		
		{!
		 * 会话错误
		 *
		 * @param errorCode 错误描述类，
		 }
		{-} procedure onError(error:IFlySpeechError{*});cdecl;
		
		{!
		 * 唤醒结果
		 *
		 * @param resultDic 唤醒结果字典
		 }
		{-} procedure onResult(resultDic:NSMutableDictionary{*});cdecl;
		
		{!
		 * 音量反馈，返回频率与录音数据返回回调频率一致
		 *
		 * @param volume 音量值
		 }
		{-} procedure onVolumeChanged(volume:Integer);cdecl;
		
		
		{!
		 * 扩展事件回调<br>
		 * 根据事件类型返回额外的数据
		 *
		 @param eventType 事件类型，具体参见IFlySpeechEvent枚举。
		 }
		[MethodName('onEvent:isLast:arg1:data:')]
		{-} procedure onEventisLastarg1data(eventType:Integer;isLast:Boolean;arg1:Integer;eventData:NSMutableDictionary{*});cdecl;
		
	end;
	
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
{$O+}

{ TIFlyVoiceWakeuperDelegate }

constructor TIFlyVoiceWakeuperDelegate.Create;
begin
	Inherited Create;
end;

destructor TIFlyVoiceWakeuperDelegate.Destroy;
begin
	Inherited;
end;

procedure  TIFlyVoiceWakeuperDelegate.onBeginOfSpeech();
begin
	if Assigned(OnonBeginOfSpeech) then
	begin
		OnonBeginOfSpeech();
	end;
end;

procedure  TIFlyVoiceWakeuperDelegate.onEndOfSpeech();
begin
	if Assigned(OnonEndOfSpeech) then
	begin
		OnonEndOfSpeech();
	end;
end;

procedure  TIFlyVoiceWakeuperDelegate.onError(error:IFlySpeechError{*});
begin
	if Assigned(OnonError) then
	begin
		OnonError(error);
	end;
end;

procedure  TIFlyVoiceWakeuperDelegate.onResult(resultDic:NSMutableDictionary{*});
begin
	if Assigned(OnonResult) then
	begin
		OnonResult(resultDic);
	end;
end;

procedure  TIFlyVoiceWakeuperDelegate.onVolumeChanged(volume:Integer);
begin
	if Assigned(OnonVolumeChanged) then
	begin
		OnonVolumeChanged(volume);
	end;
end;

procedure  TIFlyVoiceWakeuperDelegate.onEventisLastarg1data(eventType:Integer;isLast:Boolean;arg1:Integer;eventData:NSMutableDictionary{*});
begin
	if Assigned(OnonEventisLastarg1data) then
	begin
		OnonEventisLastarg1data(eventType,isLast,arg1,eventData);
	end;
end;



{$ENDIF}

end.

