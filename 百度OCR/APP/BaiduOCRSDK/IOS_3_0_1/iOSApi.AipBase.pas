//
//  AipBase.h
//  AipBase
//
//  Created by chenxiaoyu on 2017/11/16.
//  Copyright ? 2017Äê baidu. All rights reserved.
//

unit iOSApi.AipBase;

interface

{$IFDEF IOS}
uses
	iOSapi.UIKit,
	iOSApi.AipOpenUDID,
	iOSApi.AipTokenManager,
	iOSApi.NSErrorHelper,
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

	
	//! Project version number for AipBase.
	
	
	//! Project version string for AipBase.
	{FOUNDATION_EXPORT}char AipBaseVersionString[]=unsigned;
	
	// In this header, you should import all the public headers of your framework using statements like #import <AipBase/PublicHeader.h>
	
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
{$O+}


{$ENDIF}

end.

