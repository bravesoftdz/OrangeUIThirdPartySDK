//
//  IFlyContact.h
//  msc
//
//  Created by ypzhao on 13-3-1.
//  Copyright (c) 2013�� IFLYTEK. All rights reserved.
//

unit IFlyContact_iOSApi;

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
	 *  �˽ӿ�Ϊ��ȡͨ��¼�е���ϵ�ˡ�<br>
	 *  ��ȡ��ϵ����Ϊ���ڽ�������ʶ��ʱ(sms)�ܸ��õ�ʶ�����˵������,��ϵ���ϴ������ڸ��Ի���һ���֡�
	 }
	IFlyContact=interface(NSObject)//
	['{B1D1582E-2002-4A6D-9D80-BD5A52411506}']
		
		{!
		 *  ��ȡ��ϵ�ˡ�<br>
		 *  ���ô˷�����Ҫ��� AddressBook.framework �� Contacts.framework�������У����ô˷��������ֱ�ӽ�ͨ��¼�е���ϵ��ת��Ϊ������ʶ������ݽṹ�������Խ���ȡ������ͨ��IFlyDataUploader�࣬�ϴ��������ƣ�����ֻ��ȡͨ��¼�е�������
		 *
		 *  @return  ������ϵ����Ϣ
		 }
		{-} function contact:NSString{*};cdecl;
	end;
	
	IFlyContactClass=interface(NSObjectClass)//
	['{226D326E-12EA-4985-8505-0A431902AC2D}']
	end;
	
	TIFlyContact=class(TOCGenericImport<IFlyContactClass,IFlyContact>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyContact_FakeLoader : IFlyContact; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlyContact';
{$O+}


{$ENDIF}

end.

