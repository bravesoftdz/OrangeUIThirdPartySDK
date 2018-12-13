//
//  IFlySpeechEvaluatorDelegate.h
//  msc
//
//  Created by admin on 13-6-19.
//  Copyright (c) 2013�� iflytek. All rights reserved.
//


unit IFlySpeechEvaluatorDelegate_iOSApi;

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
	 *  ����Э��
	 }
	IFlySpeechEvaluatorDelegate=interface(IObjectiveC)
		['{99D09CC4-7F87-4867-ACCE-460F0C37F715}']
		
		{!
		 *  ���������ݻص�
		 *
		 *  @param volume ����
		 *  @param buffer ��Ƶ����
		 }
		[MethodName('onVolumeChanged:buffer:')]
		{-} procedure onVolumeChangedbuffer(volume:Integer;buffer:NSData{*});cdecl;
		
		{!
		 *  ��ʼ¼���ص�<br>
		 *  ��������`startListening`����֮�����û�з����������ص��˺������������������ص�onError:����
		 }
		{-} procedure onBeginOfSpeech;cdecl;
		
		{!
		 *  ֹͣ¼���ص�<br>
		 *  ��������`stopListening`�������������ڲ��Զ���⵽�ϵ㣬���û�з���������ص��˺�����<br>
		 *  �������������ص�onError:����
		 }
		{-} procedure onEndOfSpeech;cdecl;
		
		{!
		 *  ����ȡ��
		 }
		{-} procedure onCancel;cdecl;
		
		{!
		 *  �������ص�
		 *
		 *  �ڽ���������������е��κ�ʱ�̶��п��ܻص��˺���������Ը���errorCode������Ӧ�Ĵ���.��errorCodeû�д���ʱ����ʾ�˴λỰ�������������򣬱�ʾ�˴λỰ�д��������ر�ĵ�����`cancel`����ʱ�����治���Զ���������Ҫ�ȵ��ص��˺������ű�ʾ�˴λỰ��������û�лص��˺���֮ǰ������µ�����`startListenging`������ᱨ����
		 *
		 *  @param errorCode ����������
		 }
		{-} procedure onError(errorCode:IFlySpeechError{*});cdecl;
		
		{!
		 *  �������ص�<br>
		 *  ����������п��ܻ��λص��˺���������ò�Ҫ�ڴ˻ص������н��н���ĸ��ĵȲ�����ֻ��Ҫ���ص��Ľ������������
		 *
		 *  @param results -[out] ��������
		 *  @param isLast  -[out] �Ƿ����һ�����
		 }
		[MethodName('onResults:isLast:')]
		{-} procedure onResultsisLast(results:NSData{*};isLast:Boolean);cdecl;
		
	end;
	
	TOnonVolumeChangedbuffer=procedure(volume:Integer;buffer:NSData{*}) of object;
	TOnonBeginOfSpeech=procedure() of object;
	TOnonEndOfSpeech=procedure() of object;
	TOnonCancel=procedure() of object;
	TOnonError=procedure(errorCode:IFlySpeechError{*}) of object;
	TOnonResultsisLast=procedure(results:NSData{*};isLast:Boolean) of object;
	
	TIFlySpeechEvaluatorDelegate=class(TOCLocal,IFlySpeechEvaluatorDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonVolumeChangedbuffer:TOnonVolumeChangedbuffer;
		OnonBeginOfSpeech:TOnonBeginOfSpeech;
		OnonEndOfSpeech:TOnonEndOfSpeech;
		OnonCancel:TOnonCancel;
		OnonError:TOnonError;
		OnonResultsisLast:TOnonResultsisLast;
	
		
		{!
		 *  ���������ݻص�
		 *
		 *  @param volume ����
		 *  @param buffer ��Ƶ����
		 }
		[MethodName('onVolumeChanged:buffer:')]
		{-} procedure onVolumeChangedbuffer(volume:Integer;buffer:NSData{*});cdecl;
		
		{!
		 *  ��ʼ¼���ص�<br>
		 *  ��������`startListening`����֮�����û�з����������ص��˺������������������ص�onError:����
		 }
		{-} procedure onBeginOfSpeech;cdecl;
		
		{!
		 *  ֹͣ¼���ص�<br>
		 *  ��������`stopListening`�������������ڲ��Զ���⵽�ϵ㣬���û�з���������ص��˺�����<br>
		 *  �������������ص�onError:����
		 }
		{-} procedure onEndOfSpeech;cdecl;
		
		{!
		 *  ����ȡ��
		 }
		{-} procedure onCancel;cdecl;
		
		{!
		 *  �������ص�
		 *
		 *  �ڽ���������������е��κ�ʱ�̶��п��ܻص��˺���������Ը���errorCode������Ӧ�Ĵ���.��errorCodeû�д���ʱ����ʾ�˴λỰ�������������򣬱�ʾ�˴λỰ�д��������ر�ĵ�����`cancel`����ʱ�����治���Զ���������Ҫ�ȵ��ص��˺������ű�ʾ�˴λỰ��������û�лص��˺���֮ǰ������µ�����`startListenging`������ᱨ����
		 *
		 *  @param errorCode ����������
		 }
		{-} procedure onError(errorCode:IFlySpeechError{*});cdecl;
		
		{!
		 *  �������ص�<br>
		 *  ����������п��ܻ��λص��˺���������ò�Ҫ�ڴ˻ص������н��н���ĸ��ĵȲ�����ֻ��Ҫ���ص��Ľ������������
		 *
		 *  @param results -[out] ��������
		 *  @param isLast  -[out] �Ƿ����һ�����
		 }
		[MethodName('onResults:isLast:')]
		{-} procedure onResultsisLast(results:NSData{*};isLast:Boolean);cdecl;
		
	end;
	
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
{$O+}

{ TIFlySpeechEvaluatorDelegate }

constructor TIFlySpeechEvaluatorDelegate.Create;
begin
	Inherited Create;
end;

destructor TIFlySpeechEvaluatorDelegate.Destroy;
begin
	Inherited;
end;

procedure  TIFlySpeechEvaluatorDelegate.onVolumeChangedbuffer(volume:Integer;buffer:NSData{*});
begin
	if Assigned(OnonVolumeChangedbuffer) then
	begin
		OnonVolumeChangedbuffer(volume,buffer);
	end;
end;

procedure  TIFlySpeechEvaluatorDelegate.onBeginOfSpeech();
begin
	if Assigned(OnonBeginOfSpeech) then
	begin
		OnonBeginOfSpeech();
	end;
end;

procedure  TIFlySpeechEvaluatorDelegate.onEndOfSpeech();
begin
	if Assigned(OnonEndOfSpeech) then
	begin
		OnonEndOfSpeech();
	end;
end;

procedure  TIFlySpeechEvaluatorDelegate.onCancel();
begin
	if Assigned(OnonCancel) then
	begin
		OnonCancel();
	end;
end;

procedure  TIFlySpeechEvaluatorDelegate.onError(errorCode:IFlySpeechError{*});
begin
	if Assigned(OnonError) then
	begin
		OnonError(errorCode);
	end;
end;

procedure  TIFlySpeechEvaluatorDelegate.onResultsisLast(results:NSData{*};isLast:Boolean);
begin
	if Assigned(OnonResultsisLast) then
	begin
		OnonResultsisLast(results,isLast);
	end;
end;



{$ENDIF}

end.

