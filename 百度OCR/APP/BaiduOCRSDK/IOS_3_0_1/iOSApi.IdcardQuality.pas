//
//  IdcardQuality.h
//  IdcardQuality
//
//  Created by Yan,Xiangda on 2017/4/17.
//  Copyright ? 2017Äê Baidu. All rights reserved.
//

unit iOSApi.IdcardQuality;

interface

{$IFDEF IOS}
uses
	iOSapi.UIKit,
	iOSapi.IdcardQualityAdaptor,
	iOSapi.idcard_quality,
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreGraphics,
	iOSApi.OpenGLES,
	iOSApi.Foundation,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
	SysUtils,Types,FMX.Types,Classes;

type
	//declare pointer
	id=Pointer;

	
	//! Project version number for IdcardQuality.
	
	
	//! Project version string for IdcardQuality.
	{FOUNDATION_EXPORT}char IdcardQualityVersionString[]=unsigned;
	
	// In this header, you should import all the public headers of your framework using statements like #import <IdcardQuality/PublicHeader.h>
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
{$O+}


{$ENDIF}

end.

