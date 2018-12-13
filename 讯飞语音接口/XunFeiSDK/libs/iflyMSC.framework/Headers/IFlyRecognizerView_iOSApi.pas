//
//  IFlyRecognizerView.h
//  MSC
//
//  Created by admin on 13-4-16.
//  Copyright (c) 2013年 iflytek. All rights reserved.
//

unit IFlyRecognizerView_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.UIKit,
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreGraphics,
	iOSApi.OpenGLES,
	iOSApi.Foundation,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
	SysUtils,Types,FMX.Types,Classes;

type
	//declare pointer
	id=Pointer;
	PIFlyRecognizerViewDelegate=Pointer;//PIFlyRecognizerViewDelegate=Pointer of IFlyRecognizerViewDelegate; ILocalObject(IFlyRecognizerViewDelegate).GetObjectID

	
	
	//@protocol IFlyRecognizerViewDelegate ;
	
	{!
	 *  语音识别控件<br>
	 *  录音时触摸控件结束录音，开始识别（相当于旧版的停止）；触摸其他位置，取消录音，结束会话（取消）<br>
	 *  出错时触摸控件，重新开启会话（相当于旧版的再说一次）；触摸其他位置，取消录音，结束会话（取消）
	 *
	 }
	IFlyRecognizerView=interface(UIView)//<NSObject>
	['{576DA148-6A1F-4B25-9792-FE9F3490D53B}']
		
		{!
		 *  设置委托对象
		 }
		function delegate:PIFlyRecognizerViewDelegate{id<IFlyRecognizerViewDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlyRecognizerViewDelegate{id<IFlyRecognizerViewDelegate>});cdecl;
		
		{!
		 *  初始化控件
		 *
		 *  @param origin 控件左上角的坐标
		 *
		 *  @return IFlyRecognizerView 对象
		 }
		{-} function initWithOrigin(origin:CGPoint):id;cdecl;
		
		{!
		 *  初始化控件
		 *
		 *  @param center 控件中心的坐标
		 *
		 *  @return IFlyRecognizerView 对象
		 }
		{-} function initWithCenter(center:CGPoint):id;cdecl;
		
		{!
		 *  设置横竖屏自适应
		 *
		 *  @param autoRotate 默认值YES，横竖屏自适应
		 }
		{-} procedure setAutoRotate(autoRotate:Boolean);cdecl;
		
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
		 *  识别的引擎参数(key)取值如下：<br>
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
		 *  @return 成功返回YES；失败返回NO
		 }
		{-} function start:Boolean;cdecl;
		
		{!
		 *  取消本次识别
		 }
		{-} procedure cancel;cdecl;
		
		
	end;
	
	IFlyRecognizerViewClass=interface(UIViewClass)//<NSObject>
	['{267192E4-9547-4441-871C-221A636B30C8}']
	end;
	
	TIFlyRecognizerView=class(TOCGenericImport<IFlyRecognizerViewClass,IFlyRecognizerView>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyRecognizerView_FakeLoader : IFlyRecognizerView; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlyRecognizerView';
{$O+}


{$ENDIF}

end.

