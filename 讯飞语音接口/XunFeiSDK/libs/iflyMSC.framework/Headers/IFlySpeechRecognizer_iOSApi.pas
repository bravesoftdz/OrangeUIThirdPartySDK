//
//  IFlySpeechRecognizer.h
//  MSC
//
//  Created by iflytek on 13-3-19.
//  Copyright (c) 2013年 iflytek. All rights reserved.
//

unit IFlySpeechRecognizer_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
	IFlySpeechRecognizerDelegate_iOSApi,
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

	
	
	//#define IFLY_AUDIO_SOURCE_MIC    @"1"
	//#define IFLY_AUDIO_SOURCE_STREAM @"-1"
	
	{!
	 *  语音识别类<br>
	 *  此类现在设计为单例，你在使用中只需要创建此对象，不能调用release/dealloc函数去释放此对象。所有关于语音识别的操作都在此类中。
	 }
	IFlySpeechRecognizer=interface(NSObject)//<IFlySpeechRecognizerDelegate>
	['{4DC97F6E-1ED8-4287-BDBC-5934379961D6}']
		
		{!
		 *  设置委托对象 
		 }
		function delegate:PIFlySpeechRecognizerDelegate{id<IFlySpeechRecognizerDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlySpeechRecognizerDelegate{id<IFlySpeechRecognizerDelegate>});cdecl;
		
		{!
		 *  返回识别对象的单例
		 *
		 *  @return 识别对象的单例
		 }
		
		{!
		 *  销毁识别对象。
		 *
		 *  @return 成功返回YES,失败返回NO
		 }
		{-} function destroy:Boolean;cdecl;
		
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
		 *  设置识别引擎的参数
		 *
		 *  识别的引擎参数(key)取值如下：
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
		 *  @param key   识别引擎参数
		 *
		 *  @return 成功返回YES；失败返回NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		{!
		 *  获取识别引擎参数
		 *
		 *  @param key 参数key
		 *
		 *  @return 参数值
		 }
		{-} function parameterForKey(key:NSString{*}):NSString{*};cdecl;
		
		{!
		 *  开始识别
		 *
		 *  同时只能进行一路会话，这次会话没有结束不能进行下一路会话，否则会报错。若有需要多次回话，请在onError回调返回后请求下一路回话。
		 *
		 *  @return 成功返回YES；失败返回NO
		 }
		{-} function startListening:Boolean;cdecl;
		
		{!
		 *  停止录音<br>
		 *  调用此函数会停止录音，并开始进行语音识别
		 }
		{-} procedure stopListening;cdecl;
		
		{!
		 *  取消本次会话
		 }
		{-} procedure cancel;cdecl;
		
//		{!
//		 *  上传语法
//		 *
//		 *  @param completionHandler 上传语法完成回调
//		 *  @param grammarType       语法类型
//		 *  @param grammarContent    语法内容
//		 *
//		 *  @return 错误码
//		 }
//		[MethodName('buildGrammarCompletionHandler:grammarType:grammarContent:')]
//		{-} function buildGrammarCompletionHandlergrammarTypegrammarContent(completionHandler:IFlyOnBuildFinishCompletionHandler;grammarType:NSString{*};grammarContent:NSString{*}):Integer;cdecl;

		{! 
		 *  是否正在识别
		 }
		function isListening:Boolean;cdecl;
		procedure setIsListening(isListening:Boolean);cdecl;
		





		{!
		*  写入音频流
		*
		*  此方法的使用示例如下:
		* <pre><code>[_iFlySpeechRecognizer setParameter:@"-1" value:@"audio_source"];
		* [_iFlySpeechRecognizer startListening];
		* [_iFlySpeechRecognizer writeAudio:audioData1];
		* [_iFlySpeechRecognizer writeAudio:audioData2];
		* ...
		* [_iFlySpeechRecognizer stopListening];
		* </code></pre>
		*
		*  @param audioData 音频数据
		*
		*  @return 写入成功返回YES，写入失败返回NO
		}
		{-} function writeAudio(audioData:NSData{*}):Boolean;cdecl;


	end;
	
	IFlySpeechRecognizerClass=interface(NSObjectClass)//<IFlySpeechRecognizerDelegate>
	['{4E1F6F7D-9962-46F2-B68C-3168DB7741C2}']
		{+} function sharedInstance:IFlySpeechRecognizer;cdecl;
	end;
	
	TIFlySpeechRecognizer=class(TOCGenericImport<IFlySpeechRecognizerClass,IFlySpeechRecognizer>)
	end;





//	{!
//	 *  音频流识别<br>
//	 *  音频流识别可以将文件分段写入
//	 }
//	IFlySpeechRecognizer=interface(NSObject)//IFlyStreamRecognizer
//	['{F08DA5AC-CB4C-4615-8335-DC55F82717E4}']
//
//		{!
//		*  写入音频流
//		*
//		*  此方法的使用示例如下:
//		* <pre><code>[_iFlySpeechRecognizer setParameter:@"-1" value:@"audio_source"];
//		* [_iFlySpeechRecognizer startListening];
//		* [_iFlySpeechRecognizer writeAudio:audioData1];
//		* [_iFlySpeechRecognizer writeAudio:audioData2];
//		* ...
//		* [_iFlySpeechRecognizer stopListening];
//		* </code></pre>
//		*
//		*  @param audioData 音频数据
//		*
//		*  @return 写入成功返回YES，写入失败返回NO
//		}
//		{-} function writeAudio(audioData:NSData{*}):Boolean;cdecl;
//
//	end;
//
//	IFlySpeechRecognizerClass=interface(NSObjectClass)//IFlyStreamRecognizer
//	['{346CF105-4D08-4EBF-ABF7-EB42CBC3EDCA}']
//	end;
//
//	TIFlySpeechRecognizer=class(TOCGenericImport<IFlySpeechRecognizerClass,IFlySpeechRecognizer>)
//	end;

{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlySpeechRecognizer_FakeLoader : IFlySpeechRecognizer; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechRecognizer';
//function IFlySpeechRecognizer_FakeLoader : IFlySpeechRecognizer; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechRecognizer';
{$O+}


{$ENDIF}

end.

