//
//  IFlySpeechUtility.h
//  MSCDemo
//
//  Created by admin on 14-5-7.
//  Copyright (c) 2014年 iflytek. All rights reserved.
//

unit IFlySpeechUtility_iOSApi;

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
	PIFlySpeechplusDelegate=Pointer;//PIFlySpeechplusDelegate=Pointer of IFlySpeechplusDelegate; ILocalObject(IFlySpeechplusDelegate).GetObjectID

	
	//#define iOS_EXCLUSIVE       //iOS平台独占API
	
	
	
	{!
	 *  引擎模式
	 }
	IFlyEngineMode_=(
	//(NSUInteger,IFlyEngineMode){
	//    /*!
	//     *  云端使用MSC，本地优先使用语记
	//     */
	    IFlyEngineModeAuto = 0,
	//    /*!
	//     *  只使用MSC
	//     */
	    IFlyEngineModeMsc,
	//    /*!
	//     *  本地只使用语记(受平台限制，云端无法使用语记）
	//     */
	    IFlyEngineModePlus//,
	);
	IFlyEngineMode=Integer;
	
	
	{!
	 *  服务类型
	 }
	IFlySpeechPlusServiceType_=(
	//(NSUInteger,IFlySpeechPlusServiceType){
	//    /*!
	//     *  打开语记主界面
	//     */
	    IFlySpeechPlusServiceTypeNone=0,
	//    /*!
	//     *  获取合成资源
	//     */
	    IFlySpeechPlusServiceTypeTTS,
	//    /*!
	//     *  获取识别资源（未开放）
	//     */
	    IFlySpeechPlusServiceTypeISR,
	//    /*!
	//     *  获取唤醒资源（未开放）
	//     */
	    IFlySpeechPlusServiceTypeIVW//,
	);
	IFlySpeechPlusServiceType=Integer;







	{! 语记返回回调
	 }
	IFlySpeechplusDelegate=interface(IObjectiveC)
		['{84D564BC-ABC1-4D16-AD6C-2CC0A926C29D}']
		
		{!
		 *  发生错误
		 *
		 *  @param errorCode 错误码
		 }
		{-} procedure onError(errorCode:Integer);cdecl;
		
		{!
		 *  服务正常结束
		 }
		{-} procedure onCompleted;cdecl;
		
	end;
	
	TOnonError=procedure(errorCode:Integer) of object;
	TOnonCompleted=procedure() of object;
	
	TIFlySpeechplusDelegate=class(TOCLocal,IFlySpeechplusDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonError:TOnonError;
		OnonCompleted:TOnonCompleted;
	
		
		{!
		 *  发生错误
		 *
		 *  @param errorCode 错误码
		 }
		{-} procedure onError(errorCode:Integer);cdecl;
		
		{!
		 *  服务正常结束
		 }
		{-} procedure onCompleted;cdecl;
		
	end;











	
	{!
	 * 用户配置
	 }
	IFlySpeechUtility=interface(NSObject)//
	['{ED8D071C-9816-4ED7-8CC2-F84F6CA5E575}']
		
		{!
		 *  创建用户语音配置<br>
		 *  注册应用请前往语音云开发者网站。<br>
		 *  网站：http://www.xfyun.cn
		 *
		 *  @param params 启动参数，必须保证appid参数传入，示例：appid=123456
		 *
		 *  @return 语音配置对象
		 }
		
		{!
		 *  销毁用户配置对象
		 *
		 *  @return 成功返回YES,失败返回NO
		 }
		
		{!
		 *  获取用户配置对象
		 *
		 *  @return 用户配置对象
		 }
		
		{!
		 *  设置MSC引擎的状态参数
		 *
		 *  @param value 参数值
		 *  @param key   参数名称
		 *
		 *  @return 成功返回YES,失败返回NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		{!
		 *  获取MSC引擎状态参数
		 *
		 *  @param key 参数名
		 *
		 *  @return 参数值
		 }
		{-} function parameterForKey(key:NSString{*}):NSString{*};cdecl;
		
		{!
		 *  引擎类型
		 }
		function engineMode:IFlyEngineMode;cdecl;
		procedure setEngineMode(engineMode:IFlyEngineMode);cdecl;
		
		{!
		 *  语记协议委托
		 }
		function delegate:PIFlySpeechplusDelegate{id<IFlySpeechplusDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlySpeechplusDelegate{id<IFlySpeechplusDelegate>});cdecl;
		
    ///////////////////
		{!
		 *  检查讯飞语记是否安装
		 *
		 *  @return 已安装返回YES，否则返回NO
		 }

		{!
		 *  获取讯飞语记下载地址进行下载，安装完成后即可使用服务。<br>
		 *  下载地址需要通过[[UIApplication sharedApplication] openUrl:]打开
		 *
		 *  @return 讯飞语记在App Store下载地址
		 }


		{!
		 *  注意：此接口废弃，不再需要使用<br>
		 *  处理语记使用URL启动第三方应用程序时传递的数据<br>
		 *  需要在 application:openURL:sourceApplication:annotation:或者application:handleOpenURL中调用。
		 *
		 *  @param url 语记启动第三方应用程序时传递过来的URL
		 *
		 *  @return 成功返回YES，失败返回NO。
		 }
		{-} function handleOpenURL(url:NSURL{*}):Boolean;cdecl;

		{!
		 *  打开讯飞语记获取相应类型服务，0表示打开主界面
		 *
		 *  @param serviceType 服务类型
		 *
		 *  @return 成功打开返回YES，否则返回NO
		 }
		{-} function openSpeechPlus(serviceType:IFlySpeechPlusServiceType):Boolean;cdecl;


	end;
	
	IFlySpeechUtilityClass=interface(NSObjectClass)//
	['{90E96B62-D1D2-47AB-AD5A-D26A71E7DEE9}']
		{+} function createUtility(params:NSString{*}):IFlySpeechUtility{*};cdecl;
		{+} function destroy:Boolean;cdecl;
		{+} function getUtility:IFlySpeechUtility{*};cdecl;

    ////////////////////////
		{+} function checkServiceInstalled:Boolean;cdecl;
		{+} function componentUrl:NSString{*};cdecl;
	end;
	
	TIFlySpeechUtility=class(TOCGenericImport<IFlySpeechUtilityClass,IFlySpeechUtility>)
	end;






//	{!
//	 *  讯飞语记类别
//	 }
//	IFlySpeechUtility=interface(NSObject)//SpeechPlus
//	['{1B670BB2-F3DB-40EA-BED1-A00BD217B732}']
//
//		{!
//		 *  检查讯飞语记是否安装
//		 *
//		 *  @return 已安装返回YES，否则返回NO
//		 }
//
//		{!
//		 *  获取讯飞语记下载地址进行下载，安装完成后即可使用服务。<br>
//		 *  下载地址需要通过[[UIApplication sharedApplication] openUrl:]打开
//		 *
//		 *  @return 讯飞语记在App Store下载地址
//		 }
//
//
//		{!
//		 *  注意：此接口废弃，不再需要使用<br>
//		 *  处理语记使用URL启动第三方应用程序时传递的数据<br>
//		 *  需要在 application:openURL:sourceApplication:annotation:或者application:handleOpenURL中调用。
//		 *
//		 *  @param url 语记启动第三方应用程序时传递过来的URL
//		 *
//		 *  @return 成功返回YES，失败返回NO。
//		 }
//		{-} function handleOpenURL(url:NSURL{*}):Boolean;cdecl;
//
//		{!
//		 *  打开讯飞语记获取相应类型服务，0表示打开主界面
//		 *
//		 *  @param serviceType 服务类型
//		 *
//		 *  @return 成功打开返回YES，否则返回NO
//		 }
//		{-} function openSpeechPlus(serviceType:IFlySpeechPlusServiceType):Boolean;cdecl;
//
//	end;
//
//	IFlySpeechUtilityClass=interface(NSObjectClass)//SpeechPlus
//	['{438731FB-3534-4E19-B010-9E96DF6D647E}']
//		{+} function checkServiceInstalled:Boolean;cdecl;
//		{+} function componentUrl:NSString{*};cdecl;
//	end;
//
//	TIFlySpeechUtility=class(TOCGenericImport<IFlySpeechUtilityClass,IFlySpeechUtility>)
//	end;

	
	
	
	
	
	
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlySpeechUtility_FakeLoader : IFlySpeechUtility; cdecl; external {$I XunFeiDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechUtility';
//function IFlySpeechUtility_FakeLoader : IFlySpeechUtility; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlySpeechUtility';
{$O+}

{ TIFlySpeechplusDelegate }

constructor TIFlySpeechplusDelegate.Create;
begin
	Inherited Create;
end;

destructor TIFlySpeechplusDelegate.Destroy;
begin
	Inherited;
end;

procedure  TIFlySpeechplusDelegate.onError(errorCode:Integer);
begin
	if Assigned(OnonError) then
	begin
		OnonError(errorCode);
	end;
end;

procedure  TIFlySpeechplusDelegate.onCompleted();
begin
	if Assigned(OnonCompleted) then
	begin
		OnonCompleted();
	end;
end;



{$ENDIF}

end.

