//
//  IFlySpeechUnderstander.h
//  MSC
//
//  Created by iflytek on 2014-03-12.
//  Copyright (c) 2014年 iflytek. All rights reserved.
//

unit IFlySpeechUnderstander_iOSApi;

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
	PIFlySpeechRecognizerDelegate=Pointer;//PIFlySpeechRecognizerDelegate=Pointer of IFlySpeechRecognizerDelegate; ILocalObject(IFlySpeechRecognizerDelegate).GetObjectID

	
	
	//@protocol IFlySpeechRecognizerDelegate;
	
	{!
	 *  语义理解接口
	 }
	IFlySpeechUnderstander=interface(NSObject)//
	['{96EDE55C-D849-4988-AB6B-A6EC134C9E24}']
		
		{!
		 *  是否正在语义理解
		 }
		function isUnderstanding:Boolean;cdecl;
		procedure setIsUnderstanding(isUnderstanding:Boolean);cdecl;
		
		{!
		 *  设置委托对象
		 }
		function delegate:PIFlySpeechRecognizerDelegate{id<IFlySpeechRecognizerDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlySpeechRecognizerDelegate{id<IFlySpeechRecognizerDelegate>});cdecl;
		
		{!
		 *  创建语义理解对象的单例
		 *
		 *  @return 语义理解对象
		 }
		
		{!
		 *  开始义理解
		 *
		 *  同时只能进行一路会话，这次会话没有结束不能进行下一路会话，否则会报错。若有需要多次回话，请在onError回调返回后请求下一路回话。
		 *
		 *  @return 成功返回YES，失败返回NO
		 }
		{-} function startListening:Boolean;cdecl;
		
		{!
		 *  停止录音<br>
		 *  调用此函数会停止录音，并开始进行语义理解
		 }
		{-} procedure stopListening;cdecl;
		
		{!
		 *  取消本次会话
		 }
		{-} procedure cancel;cdecl;
		
		{
		 *  | ------------- |-----------------------------------------------------------
		 *  | 参数           | 描述
		 *  | ------------- |-----------------------------------------------------------
		 *  | domain        |应用的领域: 取值为:iat、search、video、poi、music、asr；
		 *  |               |           iat：普通文本听写；
		 *  |               |        search：热词搜索；
		 *  |               |         video：视频音乐搜索；
		 *  |               |           asr：关键词识别;
		 *  | ------------- |-----------------------------------------------------------
		 *  | vad_bos       |前端点检测: 静音超时时间，即用户多长时间不说话则当做超时处理； 单位：ms；
		 *  |               |          engine指定iat识别默认值为5000；
		 *  |               |          其他情况默认值为 4000，范围 0-10000。
		 *  | ------------- |-----------------------------------------------------------
		 *  | vad_eos       |后断点检测: 后端点静音检测时间,即用户停止说话多长时间内即认为不再输入,
		 *  |               |          自动停止录音；单位:ms;
		 *  |               |          sms 识别默认值为 1800;
		 *  |               |          其他默认值为 700，范围 0-10000。
		 *  | ------------- |-----------------------------------------------------------
		 *  | sample_rate   |采样率:目前支持的采样率设置有 16000 和 8000。
		 *  | ------------- |-----------------------------------------------------------
		 *  | asr_ptt       |标点符号设置: 默认为 1，当设置为 0 时，将返回无标点符号文本。
		 *  | ------------- |-----------------------------------------------------------
		 *  | result_type   |返回结果的数据格式: 可设置为json，xml，plain，默认为json。
		 *  | ------------- |-----------------------------------------------------------
		 *  | grammarID     |识别的语法id: 只针对 domain 设置为”asr”的应用。
		 *  | ------------- |-----------------------------------------------------------
		 *  | asr_audio_path|音频文件名: 设置此参数后，将会自动保存识别的录音文件。
		 *  |               |          路径为Documents/(指定值)。
		 *  |               |          不设置或者设置为nil，则不保存音频。
		 *  | ------------- |-----------------------------------------------------------
		 *  | params        |扩展参数: 对于一些特殊的参数可在此设置，一般用于设置语义。
		 *  | ------------- |-----------------------------------------------------------
		 *
		 }
		
		{!
		 *  设置语义理解引擎的参数
		 *
		 *  语义理解的引擎参数(key)取值如下：
		 *
		 *  | 参数             | 描述                                                  |
		 *  |-----------------|-------------------------------------------------------|
		 *  | domain          | 应用的领域: 取值为:iat、search、video、poi、music、asr；<br>iat：普通文本听写；<br>search：热词搜索；<br>video：视频音乐搜索；<br>asr：关键词识别;|
		 *  | vad_bos         | 前端点检测: 静音超时时间，即用户多长时间不说话则当做超时处理； 单位：ms；<br>engine指定iat识别默认值为5000；<br>其他情况默认值为 4000，范围 0-10000。|
		 *  | vad_eos         | 后断点检测: 后端点静音检测时间,即用户停止说话多长时间内即认为不再输入,自动停止录音；单位:ms;<br>sms 识别默认值为 1800;<br>其他默认值为 700，范围 0-10000。|
		 *  | sample_rate     | 采样率:目前支持的采样率设置有 16000 和 8000。|
		 *  | asr_ptt         | 标点符号设置: 默认为 1，当设置为 0 时，将返回无标点符号文本。|
		 *  | result_type     | 返回结果的数据格式: 可设置为json，xml，plain，默认为json。|
		 *  | grammarID       | 识别的语法id: 只针对 domain 设置为”asr”的应用。|
		 *  | asr_audio_path  | 音频文件名: 设置此参数后，将会自动保存识别的录音文件。<br>路径为Documents/(指定值)。<br>不设置或者设置为nil，则不保存音频。|
		 *  | params          | 扩展参数: 对于一些特殊的参数可在此设置，一般用于设置语义。|
		 *
		 *  @param value 参数对应的取值
		 *  @param key   语义理解引擎参数
		 *
		 *  @return 成功返回YES；失败返回NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		{!
		 *  写入音频流
		 *
		 *  @param audioData 音频数据
		 *
		 *  @return 写入成功返回YES，写入失败返回NO
		 }
		{-} function writeAudio(audioData:NSData{*}):Boolean;cdecl;
		
		{!
		 *  销毁语义理解对象。
		 *
		 *  @return 成功返回YES；失败返回NO
		 }
		{-} function destroy:Boolean;cdecl;
		
	end;
	
	IFlySpeechUnderstanderClass=interface(NSObjectClass)//
	['{30B84987-6F93-4943-B2BF-B28E5338A20A}']
		{+} function sharedInstance:IFlySpeechUnderstander;cdecl;
	end;
	
	TIFlySpeechUnderstander=class(TOCGenericImport<IFlySpeechUnderstanderClass,IFlySpeechUnderstander>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlySpeechUnderstander_FakeLoader : IFlySpeechUnderstander; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechUnderstander';
{$O+}


{$ENDIF}

end.

