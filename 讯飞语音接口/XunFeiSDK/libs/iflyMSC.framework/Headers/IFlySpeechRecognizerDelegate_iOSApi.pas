//
//  IFlySpeechRecognizerDelegate.h
//  MSC
//
//  Created by ypzhao on 13-3-27.
//  Copyright (c) 2013�� iflytek. All rights reserved.
//

unit IFlySpeechRecognizerDelegate_iOSApi;

interface

{$IFDEF IOS}
uses
  IFlySpeechError_iOSApi,
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
	 *  �����﷨�����ص�
	 *
	 *  @param grammarId �﷨id
	 *  @param error     ��������
	 }
//	grammarId,IFlySpeechError * error)=void(^IFlyOnBuildFinishCompletionHandler)(NSString*;

	
	{!
	 *  ����ʶ��Э��<br>
	 *  ��ʹ������ʶ��ʱ����Ҫʵ�����Э���еķ���.
	 }
	IFlySpeechRecognizerDelegate=interface(IObjectiveC)
		['{35AE60A1-89F6-4C0E-BBEB-2C612650117C}']
		
		//@required
		
		{!
		 *  ʶ�����ص�
		 *
		 *  �ڽ�������ʶ������е��κ�ʱ�̶��п��ܻص��˺���������Ը���errorCode������Ӧ�Ĵ�����errorCodeû�д���ʱ����ʾ�˴λỰ�������������򣬱�ʾ�˴λỰ�д��������ر�ĵ�����`cancel`����ʱ�����治���Զ���������Ҫ�ȵ��ص��˺������ű�ʾ�˴λỰ��������û�лص��˺���֮ǰ������µ�����`startListenging`������ᱨ����
		 *
		 *  @param errorCode ��������
		 }
		{-} procedure onError(errorCode:IFlySpeechError{*});cdecl;

//		{!
//		 *  ʶ�����ص�
//		 *
//		 *  ��ʶ������п��ܻ��λص��˺���������ò�Ҫ�ڴ˻ص������н��н���ĸ��ĵȲ�����ֻ��Ҫ���ص��Ľ������������<br>
//		 *  ʹ��results��ʾ�����£�
//		 *  <pre><code>
//		 *  - (void) onResults:(NSArray *) results{
//		 *     NSMutableString *result = [[NSMutableString alloc] init];
//		 *     NSDictionary *dic = [results objectAtIndex:0];
//		 *     for (NSString *key in dic){
//		 *        [result appendFormat:@"%@",key];//�ϲ����
//		 *     }
//		 *   }
//		 *  </code></pre>
//		 *
//		 *  @param results  -[out] ʶ������NSArray�ĵ�һ��Ԫ��ΪNSDictionary��NSDictionary��keyΪʶ������scΪʶ���������Ŷȡ�
//		 *  @param isLast   -[out] �Ƿ����һ�����
//		 }
		[MethodName('onResults:isLast:')]
		{-} procedure onResultsisLast(results:NSArray{*};isLast:Boolean);cdecl;
		
		//@optional
		
		{!
		 *  �����仯�ص�<br>
		 *  ��¼�������У��ص���Ƶ��������
		 *
		 *  @param volume -[out] ��������Χ��0-30
		 }
		{-} procedure onVolumeChanged(volume:Integer);cdecl;
		
		{!
		 *  ��ʼ¼���ص�<br>
		 *  ��������`startListening`����֮�����û�з����������ص��˺�����<br>
		 *  �������������ص�onError:����
		 }
		{-} procedure onBeginOfSpeech;cdecl;
		
		{!
		 *  ֹͣ¼���ص�<br>
		 *  ��������`stopListening`�������������ڲ��Զ���⵽�ϵ㣬���û�з���������ص��˺�����<br>
		 *  �������������ص�onError:����
		 }
		{-} procedure onEndOfSpeech;cdecl;
		
		{!
		 *  ȡ��ʶ��ص�<br>
		 *  ��������`cancel`����֮�󣬻�ص��˺������ڵ�����cancel�����ͻص�onError֮ǰ����һ��<br>
		 *  ����ʱ�䣬�������ڴ˺�����ʵ�ֶ����ʱ��Ľ�����ʾ��
		 }
		{-} procedure onCancel;cdecl;
		
		//#ifdef _EDUCATION_
		{!
		 *  ������ƵKey
		 *
		 *  @param key ��ƵKey
		 }
		{-} procedure getAudioKey(key:NSString{*});cdecl;
		
		//#endif
		
		{!
		 *  ��չ�¼��ص�<br>
		 *  �����¼����ͷ��ض��������
		 *
		 *  @param eventType �¼����ͣ�����μ�IFlySpeechEventType��IFlySpeechEventTypeVoiceChangeResultö�١�
		 *  @param arg0      arg0
		 *  @param arg1      arg1
		 *  @param eventData �¼�����
		 }
		[MethodName('onEvent:arg0:arg1:data:')]
		{-} procedure onEventarg0arg1data(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*});cdecl;
		
	end;
	
	TOnonError=procedure(errorCode:IFlySpeechError{*}) of object;
	TOnonResultsisLast=procedure(results:NSArray{*};isLast:Boolean) of object;
	TOnonVolumeChanged=procedure(volume:Integer) of object;
	TOnonBeginOfSpeech=procedure() of object;
	TOnonEndOfSpeech=procedure() of object;
	TOnonCancel=procedure() of object;
	TOngetAudioKey=procedure(key:NSString{*}) of object;
	TOnonEventarg0arg1data=procedure(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*}) of object;
	
	TIFlySpeechRecognizerDelegate=class(TOCLocal,IFlySpeechRecognizerDelegate)
	public
		constructor Create;
		destructor Destroy;override;
	public
		OnonError:TOnonError;
		OnonResultsisLast:TOnonResultsisLast;
		OnonVolumeChanged:TOnonVolumeChanged;
		OnonBeginOfSpeech:TOnonBeginOfSpeech;
		OnonEndOfSpeech:TOnonEndOfSpeech;
		OnonCancel:TOnonCancel;
		OngetAudioKey:TOngetAudioKey;
		OnonEventarg0arg1data:TOnonEventarg0arg1data;
	
		
		//@required
		
		{!
		 *  ʶ�����ص�
		 *
		 *  �ڽ�������ʶ������е��κ�ʱ�̶��п��ܻص��˺���������Ը���errorCode������Ӧ�Ĵ�����errorCodeû�д���ʱ����ʾ�˴λỰ�������������򣬱�ʾ�˴λỰ�д��������ر�ĵ�����`cancel`����ʱ�����治���Զ���������Ҫ�ȵ��ص��˺������ű�ʾ�˴λỰ��������û�лص��˺���֮ǰ������µ�����`startListenging`������ᱨ����
		 *
		 *  @param errorCode ��������
		 }
		{-} procedure onError(errorCode:IFlySpeechError{*});cdecl;
		
//		{!
//		 *  ʶ�����ص�
//		 *
//		 *  ��ʶ������п��ܻ��λص��˺���������ò�Ҫ�ڴ˻ص������н��н���ĸ��ĵȲ�����ֻ��Ҫ���ص��Ľ������������<br>
//		 *  ʹ��results��ʾ�����£�
//		 *  <pre><code>
//		 *  - (void) onResults:(NSArray *) results{
//		 *     NSMutableString *result = [[NSMutableString alloc] init];
//		 *     NSDictionary *dic = [results objectAtIndex:0];
//		 *     for (NSString *key in dic){
//		 *        [result appendFormat:@"%@",key];//�ϲ����
//		 *     }
//		 *   }
//		 *  </code></pre>
//		 *
//		 *  @param results  -[out] ʶ������NSArray�ĵ�һ��Ԫ��ΪNSDictionary��NSDictionary��keyΪʶ������scΪʶ���������Ŷȡ�
//		 *  @param isLast   -[out] �Ƿ����һ�����
//		 }
		[MethodName('onResults:isLast:')]
		{-} procedure onResultsisLast(results:NSArray{*};isLast:Boolean);cdecl;
		
		//@optional
		
		{!
		 *  �����仯�ص�<br>
		 *  ��¼�������У��ص���Ƶ��������
		 *
		 *  @param volume -[out] ��������Χ��0-30
		 }
		{-} procedure onVolumeChanged(volume:Integer);cdecl;
		
		{!
		 *  ��ʼ¼���ص�<br>
		 *  ��������`startListening`����֮�����û�з����������ص��˺�����<br>
		 *  �������������ص�onError:����
		 }
		{-} procedure onBeginOfSpeech;cdecl;
		
		{!
		 *  ֹͣ¼���ص�<br>
		 *  ��������`stopListening`�������������ڲ��Զ���⵽�ϵ㣬���û�з���������ص��˺�����<br>
		 *  �������������ص�onError:����
		 }
		{-} procedure onEndOfSpeech;cdecl;
		
		{!
		 *  ȡ��ʶ��ص�<br>
		 *  ��������`cancel`����֮�󣬻�ص��˺������ڵ�����cancel�����ͻص�onError֮ǰ����һ��<br>
		 *  ����ʱ�䣬�������ڴ˺�����ʵ�ֶ����ʱ��Ľ�����ʾ��
		 }
		{-} procedure onCancel;cdecl;
		
		//#ifdef _EDUCATION_
		{!
		 *  ������ƵKey
		 *
		 *  @param key ��ƵKey
		 }
		{-} procedure getAudioKey(key:NSString{*});cdecl;
		
		//#endif
		
		{!
		 *  ��չ�¼��ص�<br>
		 *  �����¼����ͷ��ض��������
		 *
		 *  @param eventType �¼����ͣ�����μ�IFlySpeechEventType��IFlySpeechEventTypeVoiceChangeResultö�١�
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

{ TIFlySpeechRecognizerDelegate }

constructor TIFlySpeechRecognizerDelegate.Create;
begin
	Inherited Create;
end;

destructor TIFlySpeechRecognizerDelegate.Destroy;
begin
	Inherited;
end;

procedure  TIFlySpeechRecognizerDelegate.onError(errorCode:IFlySpeechError{*});
begin
	if Assigned(OnonError) then
	begin
		OnonError(errorCode);
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.onResultsisLast(results:NSArray{*};isLast:Boolean);
begin
	if Assigned(OnonResultsisLast) then
	begin
		OnonResultsisLast(results,isLast);
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.onVolumeChanged(volume:Integer);
begin
	if Assigned(OnonVolumeChanged) then
	begin
		OnonVolumeChanged(volume);
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.onBeginOfSpeech();
begin
	if Assigned(OnonBeginOfSpeech) then
	begin
		OnonBeginOfSpeech();
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.onEndOfSpeech();
begin
	if Assigned(OnonEndOfSpeech) then
	begin
		OnonEndOfSpeech();
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.onCancel();
begin
	if Assigned(OnonCancel) then
	begin
		OnonCancel();
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.getAudioKey(key:NSString{*});
begin
	if Assigned(OngetAudioKey) then
	begin
		OngetAudioKey(key);
	end;
end;

procedure  TIFlySpeechRecognizerDelegate.onEventarg0arg1data(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*});
begin
	if Assigned(OnonEventarg0arg1data) then
	begin
		OnonEventarg0arg1data(eventType,arg0,arg1,eventData);
	end;
end;



{$ENDIF}

end.

