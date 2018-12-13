//
//  IFlySetting.h
//  MSC
//
//  Created by iflytek on 13-4-12.
//  Copyright (c) 2013年 iflytek. All rights reserved.
//

unit IFlySetting_iOSApi;

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
	 *  日志打印等级
	 }
//	=NS_OPTIONS(NSInteger,;
	    {!
	     *  全部打印
	     }
	
	    {!
	     *  高，异常分析需要的级别
	     }
	
	    {!
	     *  中，打印基本日志信息
	     }
	
	    {!
	     *  低，只打印主要日志信息
	     }
	
	    {!
	     *  不打印
	     }


///*!
// *  日志打印等级
// */
//typedef NS_OPTIONS(NSInteger, LOG_LEVEL){
  LOG_LEVEL_=(
//    /*!
//     *  全部打印
//     */
    LVL_ALL                 = -1,
//    /*!
//     *  高，异常分析需要的级别
//     */
    LVL_DETAIL              = 31,
//    /*!
//     *  中，打印基本日志信息
//     */
    LVL_NORMAL              = 15,
//    /*!
//     *  低，只打印主要日志信息
//     */
    LVL_LOW                 = 7,
//    /*!
//     *  不打印
//     */
    LVL_NONE                = 0
    );

  LOG_LEVEL=Integer;


	{!
	 *   此接口为iflyMSC sdk 配置接口。<br>
	 *   可以获取版本号，设置日志打印等级等
	 }
	IFlySetting=interface(NSObject)//
	['{06E15A9F-04EE-4A09-9FE2-B3B8F0D9A532}']
		
		{!
		 *  获取版本号
		 *
		 *  @return  版本号
		 }
		
		{!
		 *  获取日志等级
		 *
		 *  @return 返回日志等级
		 }
		
		{!
		 *  是否打印控制台log<br>
		 *  在软件发布时，建议关闭此log。
		 *
		 *  @param showLog -[in] YES,打印log;NO,不打印
		 }
		
		{!
		 *  设置日志msc.log生成路径以及日志等级
		 *
		 *  | 日志打印等级             | 描述                               |
		 *  |------------------------|-----------------------------------|
		 *  | LVL_ALL                | 全部打印                           |
		 *  | LVL_DETAIL             | 高，异常分析需要的级别                |
		 *  | LVL_NORMAL             | 中，打印基本日志信息                  |
		 *  | LVL_LOW                | 低，只打印主要日志信息                |
		 *  | LVL_NONE               | 不打印                             |
		 *
		 *  @param level  -[in] 日志打印等级
		 }
		
		{!
		 *  设置日志文件的路径<br>
		 *  日志文件默认存放在Documents目录。
		 *
		 *  @param path  -[in] 日志文件的全路径
		 }
		
	end;
	
	IFlySettingClass=interface(NSObjectClass)//
	['{6620076E-76AA-4F17-B11A-3E9068E8FEEE}']
		{+} function getVersion:NSString{*};cdecl;
		{+} function logLvl:LOG_LEVEL;cdecl;
		{+} procedure showLogcat(showLog:Boolean);cdecl;
		{+} procedure setLogFile(level:LOG_LEVEL);cdecl;
		{+} procedure setLogFilePath(path:NSString{*});cdecl;
	end;
	
	TIFlySetting=class(TOCGenericImport<IFlySettingClass,IFlySetting>)
	end;
{$ENDIF}


implementation

{$IFDEF IOS}

{$O-}
function IFlySetting_FakeLoader : IFlySetting; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlySetting';
{$O+}


{$ENDIF}

end.

