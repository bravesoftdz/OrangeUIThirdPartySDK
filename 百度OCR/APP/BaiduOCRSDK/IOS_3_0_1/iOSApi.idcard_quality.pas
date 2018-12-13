unit iOSApi.idcard_quality;

interface

{$IFDEF IOS}
uses
	MacApi.ObjectiveC,
	iOSApi.CocoaTypes,
	iOSApi.CoreGraphics,
	iOSApi.UIKit,
	iOSApi.OpenGLES,
	iOSApi.Foundation,
	iOSApi.CoreLocation,
	Macapi.ObjCRuntime,
	SysUtils,Types,FMX.Types,Classes;

type
	//declare pointer
	id=Pointer;

	{*
	 * idcard_quality.h
	 *
	 * Author: wangjianfeng01(wangjianfeng01@baidu.com)
	 * Created on: 2017-04-11
	 *
	 * Copyright (c) Baidu.com, Inc. All Rights Reserved
	 *
	 }
	
	//#pragma once
	
	//#include <stdlib.h>
	//#include <vector>
	
	//#ifdef ANDROID
	//#include <android/asset_manager.h>
	
	//#define	BDIDL_DECL(func, ...)	func(AAssetManager *aassetmanager, __VA_ARGS__)
	//#define	BDIDL_CALL(func, ...)	func(aassetmanager, __VA_ARGS__)
	//#else /* !ANDROID */
	//#define	BDIDL_DECL(func, ...)	func(__VA_ARGS__)
	//#define	BDIDL_CALL(func, ...)	func(__VA_ARGS__)
	//#endif /* ANDROID */
	
	
	
	IDCQ_NO__=(
	    IDCQ_NO_ERROR = 0,
	    IDCQ_NO_AUTHORITY = -1,
	    IDCQ_PATH_ERROR = -2, // /* path is null or does not exist */
	    IDCQ_FILE_ERROR = -3, // /* reading file error */
	    IDCQ_MODEL_INIT_ERROR = -4,
	    IDCQ_MODEL_RUNTIME_ERROR = -5,
	    IDCQ_IMAGE_ERROR = -6,
	    IDCQ_MEMORY_ERROR = -7,
	    IDCQ_NOT_IMPLEMENTED_ERROR = -8,
	    IDCQ_UNKNOWN_ERROR = -10
	);
	IDCQ_NO_=Integer;
	
	{
	 * IDCARD_INCOMPLETE: incomplete idcard
	 * IDCARD_TOO_SMALL: idcard for small proportion in pic
	 *                   or rotated idcard
	 * IDCARD_WRONG_LOCATION: way too small, way too large,
	 *                        rotated or not an idcard
	 }
	IDCARD__=(
	    IDCARD_NORMAL = 0,
	    IDCARD_WRONG_LOCATION = 1, // non_idcard, way_too_small, way_too_large
	    IDCARD_BLURRED = 2,
	    IDCARD_OVER_EXPOSURE = 3,
	    IDCARD_REVERSED_SIDE = 4,
	    IDCARD_MOVING  = 5,
	    IDCARD_TOO_SMALL  = 6,
	    IDCARD_INCOMPLETE = 7
	);
	IDCARD_=Integer;
	
	IDCARD__=(
	    IDCARD_FRONT_SIDE = 1,
	    IDCARD_BACK_SIDE = 2
	);
	IDCARD_=Integer;
	
	=record
		image_status:ImageStatusType;
		has_warped_image:Boolean;
		char{} warped_image_data:unsigned{*};
		warped_image_width:Integer;
		warped_image_height:Integer;
		warped_image_channel:Integer;
		char{}> cropped_image_data:std::vector<unsigned{*};
		cropped_image_width:std::vector<int>;
		cropped_image_height:std::vector<int>;
		cropped_image_channel:std::vector<int>;
	end;
	P=^;
	Array=array of ;
	PArray=^Array;
	
	
	{for} function i = 0; i < cropped_image_data.size():size_t;cdecl;
	
	
	
	
	
	
	
{$ENDIF}

implementation

{$IFDEF IOS}
{~IdCardQualityResult()} function ():;cdecl;external {$I FrameworkDylibPath_IdcardQuality.inc} name _PU + ''
{for} function i = 0; i < cropped_image_data.size():size_t;cdecl;external {$I FrameworkDylibPath_IdcardQuality.inc} name _PU + 'i = 0; i < cropped_image_data.size'
{if} function ():cropped_image_data[i];cdecl;external {$I FrameworkDylibPath_IdcardQuality.inc} name _PU + ''

{$O-}
{$O+}


{$ENDIF}

end.

