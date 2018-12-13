//
//  IFlySpeechSynthesizerDelegate.h
//  MSC
//
//  Created by ypzhao on 13-3-20.
//  Copyright (c) 2013�� iflytek. All rights reserved.
//

unit IFlySpeechSynthesizerDelegate_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
  IFlySpeechError_iOSApi,
//	IFlySpeechEvent_iOSApi,
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
	 *  �����ϳɻص�
	 }
	IFlySpeechSynthesizerDelegate=interface(IObjectiveC)
		['{52800524-6320-45A1-937D-3FC4713974F0}']
		
		//@required
		
		{!
		 *  �����ص�<br>
		 *  �������ϳɽ���֮���ص��˺���
		 *
		 *  @param error ������
		 }
		{-} procedure onCompleted(error:IFlySpeechError{*});cdecl;
		
		//@optional
		
		{!
		 *  ��ʼ�ϳɻص�
		 }
		{-} procedure onSpeakBegin;cdecl;
		
		{!
		 *  ������Ȼص�
		 *
		 *  @param progress ������ȣ�0-100
		 *  @param msg      ������Ϣ���˰汾Ϊnil
		 }
		[MethodName('onBufferProgress:message:')]
		{-} procedure onBufferProgressmessage(progress:Integer;msg:NSString{*});cdecl;
		
		{!
		 *  ���Ž��Ȼص�
		 *
		 *  @param progress ��ǰ���Ž��ȣ�0-100
		 *  @param beginPos ��ǰ�����ı�����ʼλ�ã�0-100
		 *  @param endPos ��ǰ�����ı��Ľ���λ�ã�0-100
		 }
		[MethodName('onSpeakProgress:beginPos:endPos:')]
		{-} procedure onSpeakProgressbeginPosendPos(progress:Integer;beginPos:Integer;endPos:Integer);cdecl;
		
		{!
		 *  ��ͣ���Żص�
		 }
		{-} procedure onSpeakPaused;cdecl;
		
		{!
		 *  �ָ����Żص�<br>
		 *  ע�⣺�˻ص�����SDK�ڲ���ִ�У����Żָ�ȫ����onSpeakBegin��ִ��
		 }
		{-} procedure onSpeakResumed;cdecl;
		
		{!
		 *  ����ȡ���ص�<br>
		 *  ע�⣺�˻ص�����SDK�ڲ���ִ��
		 }
		{-} procedure onSpeakCancel;cdecl;
		
		{!
		 *  ��չ�¼��ص�<br>
		 *  �����¼����ͷ��ض��������
		 *
		 *  @param eventType �¼����ͣ�����μ�IFlySpeechEventTypeö�١�Ŀǰֻ֧��EVENT_TTS_BUFFERҲ����ʵʱ���غϳ���Ƶ��
		 *  @param arg0      arg0
		 *  @param arg1      arg1
		 *  @param eventData �¼�����
		 }
		[MethodName('onEvent:arg0:arg1:data:')]
		{-} procedure onEventarg0arg1data(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*});cdecl;
		
	end;
	
	TOnonCompleted=procedure(error:IFlySpeechError{*}) of object;
	TOnonSpeakBegin=procedure() of object;
	TOnonBufferProgressmessage=procedure(progress:Integer;msg:NSString{*}) of object;
	TOnonSpeakProgressbeginPosendPos=procedure(progress:Integer;beginPos:Integer;endPos:Integer) of object;
	TOnonSpeakPaused=procedure() of object;
	TOnonSpeakResumed=procedure() of object;
	TOnonSpeakCancel=procedure() of object;
	TOnonEventarg0arg1data=procedure(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*}) of object;
	
	TIFlySpeechSynthesizerDelegate=class(TOCLocal,IFlySpeechSynthesizerDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonCompleted:TOnonCompleted;
		OnonSpeakBegin:TOnonSpeakBegin;
		OnonBufferProgressmessage:TOnonBufferProgressmessage;
		OnonSpeakProgressbeginPosendPos:TOnonSpeakProgressbeginPosendPos;
		OnonSpeakPaused:TOnonSpeakPaused;
		OnonSpeakResumed:TOnonSpeakResumed;
		OnonSpeakCancel:TOnonSpeakCancel;
		OnonEventarg0arg1data:TOnonEventarg0arg1data;
	
		
		//@required
		
		{!
		 *  �����ص�<br>
		 *  �������ϳɽ���֮���ص��˺���
		 *
		 *  @param error ������
		 }
		{-} procedure onCompleted(error:IFlySpeechError{*});cdecl;
		
		//@optional
		
		{!
		 *  ��ʼ�ϳɻص�
		 }
		{-} procedure onSpeakBegin;cdecl;
		
		{!
		 *  ������Ȼص�
		 *
		 *  @param progress ������ȣ�0-100
		 *  @param msg      ������Ϣ���˰汾Ϊnil
		 }
		[MethodName('onBufferProgress:message:')]
		{-} procedure onBufferProgressmessage(progress:Integer;msg:NSString{*});cdecl;
		
		{!
		 *  ���Ž��Ȼص�
		 *
		 *  @param progress ��ǰ���Ž��ȣ�0-100
		 *  @param beginPos ��ǰ�����ı�����ʼλ�ã�0-100
		 *  @param endPos ��ǰ�����ı��Ľ���λ�ã�0-100
		 }
		[MethodName('onSpeakProgress:beginPos:endPos:')]
		{-} procedure onSpeakProgressbeginPosendPos(progress:Integer;beginPos:Integer;endPos:Integer);cdecl;
		
		{!
		 *  ��ͣ���Żص�
		 }
		{-} procedure onSpeakPaused;cdecl;
		
		{!
		 *  �ָ����Żص�<br>
		 *  ע�⣺�˻ص�����SDK�ڲ���ִ�У����Żָ�ȫ����onSpeakBegin��ִ��
		 }
		{-} procedure onSpeakResumed;cdecl;
		
		{!
		 *  ����ȡ���ص�<br>
		 *  ע�⣺�˻ص�����SDK�ڲ���ִ��
		 }
		{-} procedure onSpeakCancel;cdecl;
		
		{!
		 *  ��չ�¼��ص�<br>
		 *  �����¼����ͷ��ض��������
		 *
		 *  @param eventType �¼����ͣ�����μ�IFlySpeechEventTypeö�١�Ŀǰֻ֧��EVENT_TTS_BUFFERҲ����ʵʱ���غϳ���Ƶ��
		 *  @param arg0      arg0
		 *  @param arg1      arg1
		 *  @param eventData �¼�����
		 }
		[MethodName('onEvent:arg0:arg1:data:')]
		{-} procedure onEventarg0arg1data(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*});cdecl;
		
	end;
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
{$O+}

{ TIFlySpeechSynthesizerDelegate }

constructor TIFlySpeechSynthesizerDelegate.Create;
begin
	Inherited Create;
end;

destructor TIFlySpeechSynthesizerDelegate.Destroy;
begin
	Inherited;
end;

procedure  TIFlySpeechSynthesizerDelegate.onCompleted(error:IFlySpeechError{*});
begin
	if Assigned(OnonCompleted) then
	begin
		OnonCompleted(error);
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onSpeakBegin();
begin
	if Assigned(OnonSpeakBegin) then
	begin
		OnonSpeakBegin();
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onBufferProgressmessage(progress:Integer;msg:NSString{*});
begin
	if Assigned(OnonBufferProgressmessage) then
	begin
		OnonBufferProgressmessage(progress,msg);
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onSpeakProgressbeginPosendPos(progress:Integer;beginPos:Integer;endPos:Integer);
begin
	if Assigned(OnonSpeakProgressbeginPosendPos) then
	begin
		OnonSpeakProgressbeginPosendPos(progress,beginPos,endPos);
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onSpeakPaused();
begin
	if Assigned(OnonSpeakPaused) then
	begin
		OnonSpeakPaused();
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onSpeakResumed();
begin
	if Assigned(OnonSpeakResumed) then
	begin
		OnonSpeakResumed();
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onSpeakCancel();
begin
	if Assigned(OnonSpeakCancel) then
	begin
		OnonSpeakCancel();
	end;
end;

procedure  TIFlySpeechSynthesizerDelegate.onEventarg0arg1data(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*});
begin
	if Assigned(OnonEventarg0arg1data) then
	begin
		OnonEventarg0arg1data(eventType,arg0,arg1,eventData);
	end;
end;



{$ENDIF}

end.

