//
//  IFlyResourceUtil.h
//  MSCDemo
//
//  Created by admin on 14-6-20.
//  Copyright (c) 2014年 iflytek. All rights reserved.
//

unit IFlyResourceUtil_iOSApi;

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
	 *  资源工具类
	 }
	IFlyResourceUtil=interface(NSObject)//
	['{5D94D7CE-27C7-4DCB-8374-4D8D730AE96F}']
		
		{!
		 *  获取通过MSPSetParam，启动引擎的标识
		 *
		 *  @return 通过MSPSetParam，启动引擎的标识
		 }
		
		{!
		 *  获取通过MSPSetParam，销毁引擎的标识
		 *
		 *  @return 通过MSPSetParam，销毁引擎的标识
		 }
		
		{!
		 *  获取识别引擎的资源目录标识
		 *
		 *  @return 识别引擎的资源目录标识
		 }
		
		{!
		 *  得到语法构建目录
		 *
		 *  @return 语法构建目录
		 }
		
		{!
		 *  获取合成引擎的资源目录标识，同时需要先传入voice_name方可生效
		 *
		 *  @return 合成引擎的资源目录标识，同时需要先传入voice_name方可生效
		 }
		
		{!
		 *  获取唤醒资源的资源目录标识
		 *
		 *  @return 唤醒资源的资源目录标识
		 }
		
		{!
		 *  语法类型
		 *
		 *  @return 语法类型
		 }
		
		{!
		 *  语记SDK专用参数，用于设置本地默认资源路径
		 *
		 *  @return 本地默认资源路径key字符串
		 }
		
		//#pragma mark -
		{!
		 *  资源存放路径
		 *
		 *  @param path 设置的路径
		 *
		 *  @return 资源目录
		 }
		
		{*
		 *  获得离线发音人对应的id
		 *
		 *  @param voiceName 发音人名称
		 *
		 *  @return 有，发音人对应的id；无，返回nil
		 }
	end;
	
	IFlyResourceUtilClass=interface(NSObjectClass)//
	['{598F4C90-F27C-4A59-A22B-F6B796F3B0D1}']
		{+} function ENGINE_START:NSString{*};cdecl;
		{+} function ENGINE_DESTROY:NSString{*};cdecl;
		{+} function ASR_RES_PATH:NSString{*};cdecl;
		{+} function GRM_BUILD_PATH:NSString{*};cdecl;
		{+} function TTS_RES_PATH:NSString{*};cdecl;
		{+} function IVW_RES_PATH:NSString{*};cdecl;
		{+} function GRAMMARTYPE:NSString{*};cdecl;
		{+} function PLUS_LOCAL_DEFAULT_RES_PATH:NSString{*};cdecl;
		{+} function generateResourcePath(path:NSString{*}):NSString{*};cdecl;
		{+} function identifierForVoiceName(voiceName:NSString{*}):NSString{*};cdecl;
	end;
	
	TIFlyResourceUtil=class(TOCGenericImport<IFlyResourceUtilClass,IFlyResourceUtil>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyResourceUtil_FakeLoader : IFlyResourceUtil; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlyResourceUtil';
{$O+}


{$ENDIF}

end.

