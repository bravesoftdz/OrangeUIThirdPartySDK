//
//  IFlySpeechSynthesizer.h
//  MSC
//
//  Created by 侯效林 on 16-4-22.
//  Copyright (c) 2016年 iflytek. All rights reserved.
//

unit IFlySpeechSynthesizer_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
	IFlySpeechSynthesizerDelegate_iOSApi,
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
	PIFlySpeechSynthesizerDelegate=Pointer;//PIFlySpeechSynthesizerDelegate=Pointer of IFlySpeechSynthesizerDelegate; ILocalObject(IFlySpeechSynthesizerDelegate).GetObjectID

	
	
	{!
	 *  语音合成
	 }
	IFlySpeechSynthesizer=interface(NSObject)//
	['{10B975F1-2385-43AE-B3F8-41CA4288CE50}']
		
		{!
		 *  设置识别的委托对象
		 }
		function delegate:PIFlySpeechSynthesizerDelegate{id<IFlySpeechSynthesizerDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlySpeechSynthesizerDelegate{id<IFlySpeechSynthesizerDelegate>});cdecl;
		
		{!
		 *  返回合成对象的单例
		 *
		 *  @return 合成对象
		 }
		
		{!
		 *  销毁合成对象。
		 *
		 *  @return 成功返回YES,失败返回NO.
		 }
		
		{
		 *  | ------------- |-----------------------------------------------------------
		 *  | 参数           | 描述
		 *  | ------------- |-----------------------------------------------------------
		 *  | speed         |合成语速,取值范围 0~100
		 *  | ------------- |-----------------------------------------------------------
		 *  | volume        |合成的音量,取值范围 0~100
		 *  | ------------- |-----------------------------------------------------------
		 *  | voice_name    |默认为”xiaoyan”；可以设置的参数列表可参考个性化发音人列表
		 *  | ------------- |-----------------------------------------------------------
		 *  | sample_rate   |采样率:目前支持的采样率设置有 16000 和 8000。
		 *  | ------------- |-----------------------------------------------------------
		 *  | tts_audio_path|音频文件名 设置此参数后，将会自动保存合成的音频文件。
		 *  |               |路径为Documents/(指定值)。不设置或者设置为nil，则不保存音频。
		 *  | ------------- |-----------------------------------------------------------
		 *  | params        |扩展参数: 对于一些特殊的参数可在此设置。
		 *  | ------------- |-----------------------------------------------------------
		 *
		 }
		
		{!
		 *  设置合成参数
		 *
		 *  | 参数             | 描述                                               |
		 *  |-----------------|----------------------------------------------------|
		 *  | speed           | 合成语速,取值范围 0~100                               |
		 *  | volume          | 合成的音量,取值范围 0~100                             |
		 *  | voice_name      | 默认为”xiaoyan”；可以设置的参数列表可参考个性化发音人列表   |
		 *  | sample_rate     | 采样率:目前支持的采样率设置有 16000 和 8000。            |
		 *  | tts_audio_path  | 音频文件名 设置此参数后，将会自动保存合成的音频文件。<br>路径为Documents/(指定值)。不设置或者设置为nil，则不保存音频。|
		 *  | params          | 扩展参数: 对于一些特殊的参数可在此设置。                  |
		 *
		 *  @param value 参数取值
		 *  @param key   合成参数
		 *
		 *  @return 设置成功返回YES，失败返回NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		{!
		 *  获取合成参数
		 *
		 *  @param key 参数key
		 *
		 *  @return 参数值
		 }
		{-} function parameterForKey(key:NSString{*}):NSString{*};cdecl;
		
		{!
		 *  开始合成(播放)<br>
		 *  调用此函数进行合成，如果发生错误会回调错误`onCompleted`
		 *
		 *  @param text 合成的文本,最大的字节数为1k
		 }
		{-} procedure startSpeaking(text:NSString{*});cdecl;
		
		{!
		 *  开始合成(不播放)<br>
		 *  调用此函数进行合成，如果发生错误会回调错误`onCompleted`
		 *
		 *  @param text 合成的文本,最大的字节数为1k
		 *  @param uri  合成后，保存再本地的音频路径
		 }
		[MethodName('synthesize:toUri:')]
		{-} procedure synthesizetoUri(text:NSString{*};uri:NSString{*});cdecl;
		
		{!
		 *  暂停播放<br>
		 *  暂停播放之后，合成不会暂停，仍会继续，如果发生错误则会回调错误`onCompleted`
		 }
		{-} procedure pauseSpeaking;cdecl;
		
		{!
		 *  恢复播放
		 }
		{-} procedure resumeSpeaking;cdecl;
		
		{!
		 *  停止播放并停止合成
		 }
		{-} procedure stopSpeaking;cdecl;
		
		{!
		 *  是否正在播放
		 }
		function isSpeaking:Boolean;cdecl;
		procedure setIsSpeaking(isSpeaking:Boolean);cdecl;
		
	end;
	
	IFlySpeechSynthesizerClass=interface(NSObjectClass)//
	['{347DE09A-CFF5-41B7-B825-5E4BE2AFA828}']
		{+} function sharedInstance:IFlySpeechSynthesizer;cdecl;
		{+} function destroy:Boolean;cdecl;
	end;
	
	TIFlySpeechSynthesizer=class(TOCGenericImport<IFlySpeechSynthesizerClass,IFlySpeechSynthesizer>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlySpeechSynthesizer_FakeLoader : IFlySpeechSynthesizer; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechSynthesizer';
{$O+}


{$ENDIF}

end.

