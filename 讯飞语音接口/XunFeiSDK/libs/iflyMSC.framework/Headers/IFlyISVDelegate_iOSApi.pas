//
//  IFlyISVDelegate.h
//  msc_UI
//
//  Created by admin on 14-9-15.
//  Copyright (c) 2014年 iflytek. All rights reserved.
//


unit IFlyISVDelegate_iOSApi;

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
	PNSDictionary=Pointer;//PNSDictionary=Pointer of NSDictionary; ILocalObject(NSDictionary).GetObjectID

	
	
	
	{!
	 *  声纹回调协议
	 }
	IFlyISVDelegate=interface(IObjectiveC)
		['{9BDB30AC-4AEC-4D58-BFAE-67AECE17F380}']
		
		{!
		 *  声纹结果回调
		 *
		 *  @param dic 结果
		 }
		{-} procedure onResult(dic:PNSDictionary{*});cdecl;
		
		{!
		 *  错误码回调
		 *
		 *  @param errorCode 错误码
		 }
		{-} procedure onError(errorCode:IFlySpeechError{*});cdecl;
		
		//@optional
		
		{!
		 *  等待结果
		 }
		{-} procedure onRecognition;cdecl;
		
		{!
		 *  音量改变回调
		 *
		 *  @param volume 音量值
		 }
		{-} procedure onVolumeChanged(volume:Integer);cdecl;
		
	end;
	
	TOnonResult=procedure(dic:PNSDictionary{*}) of object;
	TOnonError=procedure(errorCode:IFlySpeechError{*}) of object;
	TOnonRecognition=procedure() of object;
	TOnonVolumeChanged=procedure(volume:Integer) of object;
	
	TIFlyISVDelegate=class(TOCLocal,IFlyISVDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonResult:TOnonResult;
		OnonError:TOnonError;
		OnonRecognition:TOnonRecognition;
		OnonVolumeChanged:TOnonVolumeChanged;
	
		
		{!
		 *  声纹结果回调
		 *
		 *  @param dic 结果
		 }
		{-} procedure onResult(dic:PNSDictionary{*});cdecl;
		
		{!
		 *  错误码回调
		 *
		 *  @param errorCode 错误码
		 }
		{-} procedure onError(errorCode:IFlySpeechError{*});cdecl;
		
		//@optional
		
		{!
		 *  等待结果
		 }
		{-} procedure onRecognition;cdecl;
		
		{!
		 *  音量改变回调
		 *
		 *  @param volume 音量值
		 }
		{-} procedure onVolumeChanged(volume:Integer);cdecl;
		
	end;
	
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
{$O+}

{ TIFlyISVDelegate }

constructor TIFlyISVDelegate.Create;
begin
	Inherited Create;
end;

destructor TIFlyISVDelegate.Destroy;
begin
	Inherited;
end;

procedure  TIFlyISVDelegate.onResult(dic:PNSDictionary{*});
begin
	if Assigned(OnonResult) then
	begin
		OnonResult(dic);
	end;
end;

procedure  TIFlyISVDelegate.onError(errorCode:IFlySpeechError{*});
begin
	if Assigned(OnonError) then
	begin
		OnonError(errorCode);
	end;
end;

procedure  TIFlyISVDelegate.onRecognition();
begin
	if Assigned(OnonRecognition) then
	begin
		OnonRecognition();
	end;
end;

procedure  TIFlyISVDelegate.onVolumeChanged(volume:Integer);
begin
	if Assigned(OnonVolumeChanged) then
	begin
		OnonVolumeChanged(volume);
	end;
end;



{$ENDIF}

end.

