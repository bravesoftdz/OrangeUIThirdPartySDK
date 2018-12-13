//
//  IFlyContact.h
//  msc
//
//  Created by ypzhao on 13-3-1.
//  Copyright (c) 2013年 IFLYTEK. All rights reserved.
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
	 *  此接口为获取通信录中的联系人。<br>
	 *  获取联系人是为了在进行语音识别时(sms)能更好的识别出您说的人名,联系人上传是属于个性化的一部分。
	 }
	IFlyContact=interface(NSObject)//
	['{B1D1582E-2002-4A6D-9D80-BD5A52411506}']
		
		{!
		 *  获取联系人。<br>
		 *  调用此方法需要添加 AddressBook.framework 和 Contacts.framework到工程中，调用此方法后可以直接将通信录中的联系人转化为语音云识别的数据结构。您可以将获取的数据通过IFlyDataUploader类，上传到语音云，我们只获取通信录中的人名。
		 *
		 *  @return  返回联系人信息
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

