//
//  TextUnderstand.h
//  MSCDemo
//
//  Created by iflytek on 4/24/14.
//  Copyright (c) 2014 iflytek. All rights reserved.
//

unit IFlyTextUnderstander_iOSApi;

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
	 *  文本转语义完成回调函数
	 *
	 *  @param result 成功，返回文本语义理解结果
	 *  @param error  错误描述
	 }
	result, IFlySpeechError * error)=void(^IFlyUnderstandTextCompletionHandler)(NSString*;
	
	{!
	 *  文本转语义类
	 }
	IFlyTextUnderstander=interface(NSObject)//
	['{BE69DDC9-09BE-4A61-9E11-08C63A306F6B}']
		
		{!
		 *  是否正在文本转语义
		 }
		function BOOL:__block;cdecl;
		procedure setBOOL(BOOL:__block);cdecl;
		
		{!
		 *  文本转语义接口<br>
		 *  输入文本内容，获取语义理解结果
		 *
		 *  @param text              输入的文本内容
		 *  @param completionHandler 文本转语义完成回调函数
		 *
		 *  @return 错误码
		 }
		[MethodName('understandText:withCompletionHandler:')]
		{-} function understandTextwithCompletionHandler(text:NSString{*};completionHandler:IFlyUnderstandTextCompletionHandler):Integer;cdecl;
		
		{!
		 *  设置文本转语义参数
		 *
		 *  @param value 参数对应的取值
		 *  @param key   文本转语义参数参数
		 *
		 *  @return 成功返回YES，失败返回NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		{!
		 *  取消本次会话
		 }
		{-} procedure cancel;cdecl;
		
	end;
	
	IFlyTextUnderstanderClass=interface(NSObjectClass)//
	['{0076B0CA-E2FC-4F18-8E85-C7BC997611BA}']
	end;
	
	TIFlyTextUnderstander=class(TOCGenericImport<IFlyTextUnderstanderClass,IFlyTextUnderstander>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyTextUnderstander_FakeLoader : IFlyTextUnderstander; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlyTextUnderstander';
{$O+}


{$ENDIF}

end.

