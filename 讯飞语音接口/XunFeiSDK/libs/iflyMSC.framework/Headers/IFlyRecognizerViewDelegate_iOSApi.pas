//
//  IFlyRecognizerDelegate.h
//  MSC
//
//  Created by admin on 13-4-16.
//  Copyright (c) 2013年 iflytek. All rights reserved.
//

unit IFlyRecognizerViewDelegate_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreGraphics,
  IFlySpeechError_iOSApi,
	iOSApi.UIKit,
	iOSApi.OpenGLES,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
	SysUtils,Types,FMX.Types,Classes;

type
	//declare pointer
	id=Pointer;

	
	
	
	
	{!
	 *  识别回调委托
	 }
	IFlyRecognizerViewDelegate=interface(IObjectiveC)
		['{3F7B8C13-6E62-485D-8C2E-2834654AA564}']
		
		{!
		 *  回调返回识别结果
		 *
		 *  @param resultArray 识别结果，NSArray的第一个元素为NSDictionary，NSDictionary的key为识别结果，sc为识别结果的置信度
		 *  @param isLast      -[out] 是否最后一个结果
		 }
		[MethodName('onResult:isLast:')]
		{-} procedure onResultisLast(resultArray:NSArray{*};isLast:Boolean);cdecl;
		
		{!
		 *  识别结束回调
		 *
		 *  @param error 识别结束错误码
		 }
		{-} procedure onError(error:IFlySpeechError{*});cdecl;
		
		//@optional
		
	end;
	
	TOnonResultisLast=procedure(resultArray:NSArray{*};isLast:Boolean) of object;
	TOnonError=procedure(error:IFlySpeechError{*}) of object;
	
	TIFlyRecognizerViewDelegate=class(TOCLocal,IFlyRecognizerViewDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonResultisLast:TOnonResultisLast;
		OnonError:TOnonError;
	
		
		{!
		 *  回调返回识别结果
		 *
		 *  @param resultArray 识别结果，NSArray的第一个元素为NSDictionary，NSDictionary的key为识别结果，sc为识别结果的置信度
		 *  @param isLast      -[out] 是否最后一个结果
		 }
		[MethodName('onResult:isLast:')]
		{-} procedure onResultisLast(resultArray:NSArray{*};isLast:Boolean);cdecl;
		
		{!
		 *  识别结束回调
		 *
		 *  @param error 识别结束错误码
		 }
		{-} procedure onError(error:IFlySpeechError{*});cdecl;
		
		//@optional
		
	end;
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
{$O+}

{ TIFlyRecognizerViewDelegate }

constructor TIFlyRecognizerViewDelegate.Create;
begin
	Inherited Create;
end;

destructor TIFlyRecognizerViewDelegate.Destroy;
begin
	Inherited;
end;

procedure  TIFlyRecognizerViewDelegate.onResultisLast(resultArray:NSArray{*};isLast:Boolean);
begin
	if Assigned(OnonResultisLast) then
	begin
		OnonResultisLast(resultArray,isLast);
	end;
end;

procedure  TIFlyRecognizerViewDelegate.onError(error:IFlySpeechError{*});
begin
	if Assigned(OnonError) then
	begin
		OnonError(error);
	end;
end;



{$ENDIF}

end.

