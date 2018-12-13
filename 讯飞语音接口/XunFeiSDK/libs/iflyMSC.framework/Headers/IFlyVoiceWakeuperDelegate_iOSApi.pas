
//
//  IFlyVoiceWakeuperDel.h
//  wakeup
//
//  Created by admin on 14-3-18.
//  Copyright (c) 2014�� iflytek. All rights reserved.
//



unit IFlyVoiceWakeuperDelegate_iOSApi;

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
	 *  ������ʱ������
	 
	   onError Ϊ���ѻỰ������<br>
	   onBeginOfSpeech ��ʾ¼����ʼ<br>
	   onVolumeChanged ¼��������С<br>
	   onEndOfSpeech ¼����������������ֹʱ����onEndOfSpeech<br>
	   onResult ���������������ݶ�������
	 
	 *  ���ѷ���
	 
	    ����<br>
	    focus_type = wake   ���ѻỰ<br>
	    wakeup_result_id = 0    ���Ѵ�λ��<br>
	    wakeup_result_Score = 60    ���Ѵʿ��Ŷ�<br>
	 
	 *  ע�����
	 
	    ����<br>
	    focus_type = enroll ע��Ự<br>
	    enroll_success_num = 1  ��ǰע��ɹ�����<br>
	    current_enroll_status = success/failed  ��ǰ�Ự�Ƿ�ɹ�<br>
	    wakeup_result_Score = 60    ע�������Ŷ�<br>
	    threshold = 10  ��ע��ﵽ3�κ󣬷�����Ӧ��Դ�ķ�ֵ
	 }
	IFlyVoiceWakeuperDelegate=interface(IObjectiveC)
		['{C9B848F3-4FF2-496E-B2BF-6899F8DEFFAE}']
		
		//@optional
		
		{!
		 * ¼����ʼ
		 }
		{-} procedure onBeginOfSpeech;cdecl;
		
		{!
		 * ¼������
		 }
		{-} procedure onEndOfSpeech;cdecl;
		
		{!
		 * �Ự����
		 *
		 * @param errorCode ���������࣬
		 }
		{-} procedure onError(error:IFlySpeechError{*});cdecl;
		
		{!
		 * ���ѽ��
		 *
		 * @param resultDic ���ѽ���ֵ�
		 }
		{-} procedure onResult(resultDic:NSMutableDictionary{*});cdecl;
		
		{!
		 * ��������������Ƶ����¼�����ݷ��ػص�Ƶ��һ��
		 *
		 * @param volume ����ֵ
		 }
		{-} procedure onVolumeChanged(volume:Integer);cdecl;
		
		
		{!
		 * ��չ�¼��ص�<br>
		 * �����¼����ͷ��ض��������
		 *
		 @param eventType �¼����ͣ�����μ�IFlySpeechEventö�١�
		 }
		[MethodName('onEvent:isLast:arg1:data:')]
		{-} procedure onEventisLastarg1data(eventType:Integer;isLast:Boolean;arg1:Integer;eventData:NSMutableDictionary{*});cdecl;
		
	end;
	
	TOnonBeginOfSpeech=procedure() of object;
	TOnonEndOfSpeech=procedure() of object;
	TOnonError=procedure(error:IFlySpeechError{*}) of object;
	TOnonResult=procedure(resultDic:NSMutableDictionary{*}) of object;
	TOnonVolumeChanged=procedure(volume:Integer) of object;
	TOnonEventisLastarg1data=procedure(eventType:Integer;isLast:Boolean;arg1:Integer;eventData:NSMutableDictionary{*}) of object;
	
	TIFlyVoiceWakeuperDelegate=class(TOCLocal,IFlyVoiceWakeuperDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonBeginOfSpeech:TOnonBeginOfSpeech;
		OnonEndOfSpeech:TOnonEndOfSpeech;
		OnonError:TOnonError;
		OnonResult:TOnonResult;
		OnonVolumeChanged:TOnonVolumeChanged;
		OnonEventisLastarg1data:TOnonEventisLastarg1data;
	
		
		//@optional
		
		{!
		 * ¼����ʼ
		 }
		{-} procedure onBeginOfSpeech;cdecl;
		
		{!
		 * ¼������
		 }
		{-} procedure onEndOfSpeech;cdecl;
		
		{!
		 * �Ự����
		 *
		 * @param errorCode ���������࣬
		 }
		{-} procedure onError(error:IFlySpeechError{*});cdecl;
		
		{!
		 * ���ѽ��
		 *
		 * @param resultDic ���ѽ���ֵ�
		 }
		{-} procedure onResult(resultDic:NSMutableDictionary{*});cdecl;
		
		{!
		 * ��������������Ƶ����¼�����ݷ��ػص�Ƶ��һ��
		 *
		 * @param volume ����ֵ
		 }
		{-} procedure onVolumeChanged(volume:Integer);cdecl;
		
		
		{!
		 * ��չ�¼��ص�<br>
		 * �����¼����ͷ��ض��������
		 *
		 @param eventType �¼����ͣ�����μ�IFlySpeechEventö�١�
		 }
		[MethodName('onEvent:isLast:arg1:data:')]
		{-} procedure onEventisLastarg1data(eventType:Integer;isLast:Boolean;arg1:Integer;eventData:NSMutableDictionary{*});cdecl;
		
	end;
	
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
{$O+}

{ TIFlyVoiceWakeuperDelegate }

constructor TIFlyVoiceWakeuperDelegate.Create;
begin
	Inherited Create;
end;

destructor TIFlyVoiceWakeuperDelegate.Destroy;
begin
	Inherited;
end;

procedure  TIFlyVoiceWakeuperDelegate.onBeginOfSpeech();
begin
	if Assigned(OnonBeginOfSpeech) then
	begin
		OnonBeginOfSpeech();
	end;
end;

procedure  TIFlyVoiceWakeuperDelegate.onEndOfSpeech();
begin
	if Assigned(OnonEndOfSpeech) then
	begin
		OnonEndOfSpeech();
	end;
end;

procedure  TIFlyVoiceWakeuperDelegate.onError(error:IFlySpeechError{*});
begin
	if Assigned(OnonError) then
	begin
		OnonError(error);
	end;
end;

procedure  TIFlyVoiceWakeuperDelegate.onResult(resultDic:NSMutableDictionary{*});
begin
	if Assigned(OnonResult) then
	begin
		OnonResult(resultDic);
	end;
end;

procedure  TIFlyVoiceWakeuperDelegate.onVolumeChanged(volume:Integer);
begin
	if Assigned(OnonVolumeChanged) then
	begin
		OnonVolumeChanged(volume);
	end;
end;

procedure  TIFlyVoiceWakeuperDelegate.onEventisLastarg1data(eventType:Integer;isLast:Boolean;arg1:Integer;eventData:NSMutableDictionary{*});
begin
	if Assigned(OnonEventisLastarg1data) then
	begin
		OnonEventisLastarg1data(eventType,isLast,arg1,eventData);
	end;
end;



{$ENDIF}

end.

