//
//  IFlySpeechEvaluator.h
//  msc
//
//  Created by jianzhang on 14-1-13
//  Copyright (c) 2013年 iflytek. All rights reserved.
//


unit IFlySpeechEvaluator_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
	IFlySpeechEvaluatorDelegate_iOSApi,
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
	PIFlySpeechEvaluatorDelegate=Pointer;//PIFlySpeechEvaluatorDelegate=Pointer of IFlySpeechEvaluatorDelegate; ILocalObject(IFlySpeechEvaluatorDelegate).GetObjectID

	
	//#define IFLY_AUDIO_SOURCE_MIC    @"1"
	//#define IFLY_AUDIO_SOURCE_STREAM @"-1"
	
	{!
	 *  语音评测类
	 }
	IFlySpeechEvaluator=interface(NSObject)//<IFlySpeechEvaluatorDelegate>
	['{68E10708-BD8B-4225-AD0C-89EF8C5B0504}']
		
		{!
		 *  设置委托对象
		 }
		function delegate:PIFlySpeechEvaluatorDelegate{id<IFlySpeechEvaluatorDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlySpeechEvaluatorDelegate{id<IFlySpeechEvaluatorDelegate>});cdecl;
		
		{!
		 *  返回评测对象的单例
		 *
		 *  @return 别对象的单例
		 }
		
		{!
		 *  销毁评测对象。
		 *
		 *  @return 成功返回YES，失败返回NO。
		 }
		{-} function destroy:Boolean;cdecl;
		
		{!
		 *  设置评测引擎的参数
		 *
		 *  @param value 评测引擎参数值
		 *  @param key   评测引擎参数
		 *
		 *  @return 设置的参数和取值正确返回YES,失败返回NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		
		{!
		 *  获得评测引擎的参数
		 *
		 *  @param key   评测引擎参数
		 *
		 *  @return key对应的参数值
		 }
		{-} function parameterForKey(key:NSString{*}):NSString{*};cdecl;
		
		{!
		 *  开始评测<br>
		 *  同时只能进行一路会话,这次会话没有结束不能进行下一路会话，否则会报错
		 *
		 *  @param data   评测的试题
		 *  @param params 评测的参数
		 *  @return 成功返回YES，失败返回NO
		 }
		[MethodName('startListening:params:')]
		{-} function startListeningparams(data:NSData{*};params:NSString{*}):Boolean;cdecl;
		
		{!
		 *  停止录音<br>
		 *  调用此函数会停止录音，并开始进行语音识别
		 }
		{-} procedure stopListening;cdecl;
		
		{!
		 *  取消本次会话
		 }
		{-} procedure cancel;cdecl;
		
	end;
	
	IFlySpeechEvaluatorClass=interface(NSObjectClass)//<IFlySpeechEvaluatorDelegate>
	['{262F707F-6602-48D5-BBF3-B1AAB6A68A3C}']
		{+} function sharedInstance:IFlySpeechEvaluator;cdecl;
	end;
	
	TIFlySpeechEvaluator=class(TOCGenericImport<IFlySpeechEvaluatorClass,IFlySpeechEvaluator>)
	end;
	
	{!
	 *  音频流评测<br>
	 *  音频流评测可以将文件分段写入
	 }
	IFlySpeechEvaluator=interface()//IFlyStreamISERecognizer
	['{90062EB3-13E9-438B-B00F-3A8AFCC19CFA}']
		
		{!
		 *  写入音频流
		 *
		 *  @param audioData 音频数据
		 *
		 *  @return 写入成功返回YES，写入失败返回NO
		 }
		{-} function writeAudio(audioData:NSData{*}):Boolean;cdecl;
		
	end;
	
	IFlySpeechEvaluatorClass=interface(Class)//IFlyStreamISERecognizer
	['{7A3DF000-2C91-4B21-ACF8-67C0649825AC}']
	end;
	
	TIFlySpeechEvaluator=class(TOCGenericImport<IFlySpeechEvaluatorClass,IFlySpeechEvaluator>)
	end;
	
	
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlySpeechEvaluator_FakeLoader : IFlySpeechEvaluator; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechEvaluator';
function IFlySpeechEvaluator_FakeLoader : IFlySpeechEvaluator; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechEvaluator';
{$O+}


{$ENDIF}

end.

