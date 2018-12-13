//
//  IFlyUserWords.h
//  MSC
//
//  Created by ypzhao on 13-2-26.
//  Copyright (c) 2013年 iflytek. All rights reserved.
//

unit IFlyUserWords_iOSApi;

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
	 *  用户词表类
	 *    获取用户词表是为了更好的语音识别(iat)，用户词表也属于个性化的一部分.
	 }
	IFlyUserWords=interface(NSObject)//
	['{3D180739-FFA3-47C8-ADD1-120A940DFFE7}']
		
		{!
		 *  初始化对象
		 *
		 *  在进行初始化时，需要传入的格式如下：
		 *  <pre><code>{\"userword\":[{\"name\":\"iflytek\",\"words\":[\"科大讯飞\",
		 *  \"云平台\",\"用户词条\",\"开始上传词条\"]}]}</code></pre>
		 *
		 *  @param json 初始化时传入的数据
		 *
		 *  @return IFlyUserWords对象
		 }
		{-} function initWithJson(json:NSString{*}):id;cdecl;
		
		{!
		 *  将数据转化为上传的数据格式
		 *
		 *  @return 没有数据或者格式不对时返回nil
		 }
		{-} function toString:NSString{*};cdecl;
		
		{!
		 *  返回key对应的数据
		 *
		 *  @param key  在putword:value中设置的key
		 *
		 *  @return key对应的数组
		 }
		{-} function getWords(key:NSString{*}):NSArray{*};cdecl;
		
		{!
		 *  添加一条用户词数据
		 *
		 *  @param key   用户词对应的key
		 *  @param value 上传的用户词数据
		 *
		 *  @return 成功返回YES,失败返回NO
		 }
		[MethodName('putWord:value:')]
		{-} function putWordvalue(key:NSString{*};value:NSString{*}):Boolean;cdecl;
		
		{!
		 *  添加一组数据
		 *
		 *  @param key   用户词对应的key
		 *  @param words 上传的用户词数据
		 *
		 *  @return 成功返回YES,失败返回NO
		 }
		[MethodName('putwords:words:')]
		{-} function putwordswords(key:NSString{*};words:NSArray{*}):Boolean;cdecl;
		
		{!
		 *  是否包含key对应的用户词数据
		 *
		 *  @param key 用户词对应的key
		 *
		 *  @return 成功返回YES,失败返回NO
		 }
		{-} function containsKey(key:NSString{*}):Boolean;cdecl;
	end;
	
	IFlyUserWordsClass=interface(NSObjectClass)//
	['{91A77C18-1B72-4174-9365-DB10876378D6}']
	end;
	
	TIFlyUserWords=class(TOCGenericImport<IFlyUserWordsClass,IFlyUserWords>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyUserWords_FakeLoader : IFlyUserWords; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlyUserWords';
{$O+}


{$ENDIF}

end.

