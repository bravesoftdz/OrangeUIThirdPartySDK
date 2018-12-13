//
//  IFlyDataUploader.h
//  MSC
//
//  Created by ypzhao on 13-4-8.
//  Copyright (c) 2013年 iflytek. All rights reserved.
//

unit IFlyDataUploader_iOSApi;

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
	 *  数据上传类，主要用于上传语法文件或上传联系人、词表等个性化数据。
	 }
	IFlyDataUploader=interface(NSObject)//
	['{3BABAF77-0177-4654-8201-2E89CFA71934}']
		
		{!
		 *  数据名称
		 }
		function dataName:NSString{*};cdecl;
		procedure setDataName(dataName:NSString{*});cdecl;
		{!
		 *  数据
		 }
		function data:NSString{*};cdecl;
		procedure setData(data:NSString{*});cdecl;
		
		{!
		 *  上传完成回调
		 *
		 *  @param result 结果
		 *  @param error  错误码
		 }
		
		{!
		 *  上传数据
		 *  此函数用于上传数据，下载的过程是**异步**的。
		 *
		 *  @param completionHandler -[in] 上传完成回调
		 *  @param name              -[in] 上传的内容名称，名称最好和你要上传的数据内容相关,不可以为nil
		 *  @param data              -[in] 上传的数据，以utf8编码,不可以为nil
		 }
		[MethodName('uploadDataWithCompletionHandler:name:data:')]
		{-} procedure uploadDataWithCompletionHandlernamedata(completionHandler:IFlyUploadDataCompletionHandler;name:NSString{*};data:NSString{*});cdecl;
		
		{!
		 *  设置上传数据参数
		 *
		 *  @param parameter 参数值
		 *  @param key       参数名
		 }
		[MethodName('setParameter:forKey:')]
		{-} procedure setParameterforKey(parameter:NSString{*};key:NSString{*});cdecl;
		
	end;
	
	IFlyDataUploaderClass=interface(NSObjectClass)//
	['{32EFD90F-2633-4C1A-8A42-F503258356C1}']
	end;
	
	TIFlyDataUploader=class(TOCGenericImport<IFlyDataUploaderClass,IFlyDataUploader>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyDataUploader_FakeLoader : IFlyDataUploader; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlyDataUploader';
{$O+}


{$ENDIF}

end.

