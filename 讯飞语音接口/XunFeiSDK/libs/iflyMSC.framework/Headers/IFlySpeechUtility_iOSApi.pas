//
//  IFlySpeechUtility.h
//  MSCDemo
//
//  Created by admin on 14-5-7.
//  Copyright (c) 2014�� iflytek. All rights reserved.
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

	
	//#define iOS_EXCLUSIVE       //iOSƽ̨��ռAPI
	
	
	
	{!
	 *  ����ģʽ
	 }
	IFlyEngineMode_=(
	//(NSUInteger,IFlyEngineMode){
	//    /*!
	//     *  �ƶ�ʹ��MSC����������ʹ�����
	//     */
	    IFlyEngineModeAuto = 0,
	//    /*!
	//     *  ֻʹ��MSC
	//     */
	    IFlyEngineModeMsc,
	//    /*!
	//     *  ����ֻʹ�����(��ƽ̨���ƣ��ƶ��޷�ʹ����ǣ�
	//     */
	    IFlyEngineModePlus//,
	);
	IFlyEngineMode=Integer;
	
	
	{!
	 *  ��������
	 }
	IFlySpeechPlusServiceType_=(
	//(NSUInteger,IFlySpeechPlusServiceType){
	//    /*!
	//     *  �����������
	//     */
	    IFlySpeechPlusServiceTypeNone=0,
	//    /*!
	//     *  ��ȡ�ϳ���Դ
	//     */
	    IFlySpeechPlusServiceTypeTTS,
	//    /*!
	//     *  ��ȡʶ����Դ��δ���ţ�
	//     */
	    IFlySpeechPlusServiceTypeISR,
	//    /*!
	//     *  ��ȡ������Դ��δ���ţ�
	//     */
	    IFlySpeechPlusServiceTypeIVW//,
	);
	IFlySpeechPlusServiceType=Integer;







	{! ��Ƿ��ػص�
	 }
	IFlySpeechplusDelegate=interface(IObjectiveC)
		['{84D564BC-ABC1-4D16-AD6C-2CC0A926C29D}']
		
		{!
		 *  ��������
		 *
		 *  @param errorCode ������
		 }
		{-} procedure onError(errorCode:Integer);cdecl;
		
		{!
		 *  ������������
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
		 *  ��������
		 *
		 *  @param errorCode ������
		 }
		{-} procedure onError(errorCode:Integer);cdecl;
		
		{!
		 *  ������������
		 }
		{-} procedure onCompleted;cdecl;
		
	end;











	
	{!
	 * �û�����
	 }
	IFlySpeechUtility=interface(NSObject)//
	['{ED8D071C-9816-4ED7-8CC2-F84F6CA5E575}']
		
		{!
		 *  �����û���������<br>
		 *  ע��Ӧ����ǰ�������ƿ�������վ��<br>
		 *  ��վ��http://www.xfyun.cn
		 *
		 *  @param params �������������뱣֤appid�������룬ʾ����appid=123456
		 *
		 *  @return �������ö���
		 }
		
		{!
		 *  �����û����ö���
		 *
		 *  @return �ɹ�����YES,ʧ�ܷ���NO
		 }
		
		{!
		 *  ��ȡ�û����ö���
		 *
		 *  @return �û����ö���
		 }
		
		{!
		 *  ����MSC�����״̬����
		 *
		 *  @param value ����ֵ
		 *  @param key   ��������
		 *
		 *  @return �ɹ�����YES,ʧ�ܷ���NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		{!
		 *  ��ȡMSC����״̬����
		 *
		 *  @param key ������
		 *
		 *  @return ����ֵ
		 }
		{-} function parameterForKey(key:NSString{*}):NSString{*};cdecl;
		
		{!
		 *  ��������
		 }
		function engineMode:IFlyEngineMode;cdecl;
		procedure setEngineMode(engineMode:IFlyEngineMode);cdecl;
		
		{!
		 *  ���Э��ί��
		 }
		function delegate:PIFlySpeechplusDelegate{id<IFlySpeechplusDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlySpeechplusDelegate{id<IFlySpeechplusDelegate>});cdecl;
		
    ///////////////////
		{!
		 *  ���Ѷ������Ƿ�װ
		 *
		 *  @return �Ѱ�װ����YES�����򷵻�NO
		 }

		{!
		 *  ��ȡѶ��������ص�ַ�������أ���װ��ɺ󼴿�ʹ�÷���<br>
		 *  ���ص�ַ��Ҫͨ��[[UIApplication sharedApplication] openUrl:]��
		 *
		 *  @return Ѷ�������App Store���ص�ַ
		 }


		{!
		 *  ע�⣺�˽ӿڷ�����������Ҫʹ��<br>
		 *  �������ʹ��URL����������Ӧ�ó���ʱ���ݵ�����<br>
		 *  ��Ҫ�� application:openURL:sourceApplication:annotation:����application:handleOpenURL�е��á�
		 *
		 *  @param url �������������Ӧ�ó���ʱ���ݹ�����URL
		 *
		 *  @return �ɹ�����YES��ʧ�ܷ���NO��
		 }
		{-} function handleOpenURL(url:NSURL{*}):Boolean;cdecl;

		{!
		 *  ��Ѷ����ǻ�ȡ��Ӧ���ͷ���0��ʾ��������
		 *
		 *  @param serviceType ��������
		 *
		 *  @return �ɹ��򿪷���YES�����򷵻�NO
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
//	 *  Ѷ��������
//	 }
//	IFlySpeechUtility=interface(NSObject)//SpeechPlus
//	['{1B670BB2-F3DB-40EA-BED1-A00BD217B732}']
//
//		{!
//		 *  ���Ѷ������Ƿ�װ
//		 *
//		 *  @return �Ѱ�װ����YES�����򷵻�NO
//		 }
//
//		{!
//		 *  ��ȡѶ��������ص�ַ�������أ���װ��ɺ󼴿�ʹ�÷���<br>
//		 *  ���ص�ַ��Ҫͨ��[[UIApplication sharedApplication] openUrl:]��
//		 *
//		 *  @return Ѷ�������App Store���ص�ַ
//		 }
//
//
//		{!
//		 *  ע�⣺�˽ӿڷ�����������Ҫʹ��<br>
//		 *  �������ʹ��URL����������Ӧ�ó���ʱ���ݵ�����<br>
//		 *  ��Ҫ�� application:openURL:sourceApplication:annotation:����application:handleOpenURL�е��á�
//		 *
//		 *  @param url �������������Ӧ�ó���ʱ���ݹ�����URL
//		 *
//		 *  @return �ɹ�����YES��ʧ�ܷ���NO��
//		 }
//		{-} function handleOpenURL(url:NSURL{*}):Boolean;cdecl;
//
//		{!
//		 *  ��Ѷ����ǻ�ȡ��Ӧ���ͷ���0��ʾ��������
//		 *
//		 *  @param serviceType ��������
//		 *
//		 *  @return �ɹ��򿪷���YES�����򷵻�NO
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

