//
//  IFlyRecognizerDelegate.h
//  MSC
//
//  Created by admin on 13-4-16.
//  Copyright (c) 2013�� iflytek. All rights reserved.
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
	 *  ʶ��ص�ί��
	 }
	IFlyRecognizerViewDelegate=interface(IObjectiveC)
		['{3F7B8C13-6E62-485D-8C2E-2834654AA564}']
		
		{!
		 *  �ص�����ʶ����
		 *
		 *  @param resultArray ʶ������NSArray�ĵ�һ��Ԫ��ΪNSDictionary��NSDictionary��keyΪʶ������scΪʶ���������Ŷ�
		 *  @param isLast      -[out] �Ƿ����һ�����
		 }
		[MethodName('onResult:isLast:')]
		{-} procedure onResultisLast(resultArray:NSArray{*};isLast:Boolean);cdecl;
		
		{!
		 *  ʶ������ص�
		 *
		 *  @param error ʶ�����������
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
		 *  �ص�����ʶ����
		 *
		 *  @param resultArray ʶ������NSArray�ĵ�һ��Ԫ��ΪNSDictionary��NSDictionary��keyΪʶ������scΪʶ���������Ŷ�
		 *  @param isLast      -[out] �Ƿ����һ�����
		 }
		[MethodName('onResult:isLast:')]
		{-} procedure onResultisLast(resultArray:NSArray{*};isLast:Boolean);cdecl;
		
		{!
		 *  ʶ������ص�
		 *
		 *  @param error ʶ�����������
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

