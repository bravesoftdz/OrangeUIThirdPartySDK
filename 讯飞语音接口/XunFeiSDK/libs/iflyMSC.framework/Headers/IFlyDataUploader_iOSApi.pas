//
//  IFlyDataUploader.h
//  MSC
//
//  Created by ypzhao on 13-4-8.
//  Copyright (c) 2013�� iflytek. All rights reserved.
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
	 *  �����ϴ��࣬��Ҫ�����ϴ��﷨�ļ����ϴ���ϵ�ˡ��ʱ�ȸ��Ի����ݡ�
	 }
	IFlyDataUploader=interface(NSObject)//
	['{3BABAF77-0177-4654-8201-2E89CFA71934}']
		
		{!
		 *  ��������
		 }
		function dataName:NSString{*};cdecl;
		procedure setDataName(dataName:NSString{*});cdecl;
		{!
		 *  ����
		 }
		function data:NSString{*};cdecl;
		procedure setData(data:NSString{*});cdecl;
		
		{!
		 *  �ϴ���ɻص�
		 *
		 *  @param result ���
		 *  @param error  ������
		 }
		
		{!
		 *  �ϴ�����
		 *  �˺��������ϴ����ݣ����صĹ�����**�첽**�ġ�
		 *
		 *  @param completionHandler -[in] �ϴ���ɻص�
		 *  @param name              -[in] �ϴ����������ƣ�������ú���Ҫ�ϴ��������������,������Ϊnil
		 *  @param data              -[in] �ϴ������ݣ���utf8����,������Ϊnil
		 }
		[MethodName('uploadDataWithCompletionHandler:name:data:')]
		{-} procedure uploadDataWithCompletionHandlernamedata(completionHandler:IFlyUploadDataCompletionHandler;name:NSString{*};data:NSString{*});cdecl;
		
		{!
		 *  �����ϴ����ݲ���
		 *
		 *  @param parameter ����ֵ
		 *  @param key       ������
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

