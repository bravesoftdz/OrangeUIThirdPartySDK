//
//  IFlyMSC.h
//  msc
//
//  Created by ÕÅ½£ on 15/1/14.
//  Copyright (c) 2015Äê iflytek. All rights reserved.
//

//#ifndef MSC_IFlyMSC_h
//#define MSC_IFlyMSC_h

unit IFlyMSC_iOSApi;

interface

{$IFDEF IOS}
uses
	IFlyAudioSession_iOSApi,
	IFlyContact_iOSApi,
	IFlyDataUploader_iOSApi,
	IFlyDebugLog_iOSApi,
	IFlyISVDelegate_iOSApi,
	IFlyISVRecognizer_iOSApi,
	IFlyRecognizerView_iOSApi,
	IFlyRecognizerViewDelegate_iOSApi,
	IFlyResourceUtil_iOSApi,
	IFlySetting_iOSApi,
	IFlySpeechConstant_iOSApi,
	IFlySpeechError_iOSApi,
	IFlySpeechEvaluator_iOSApi,
	IFlySpeechEvaluatorDelegate_iOSApi,
	IFlySpeechEvent_iOSApi,
	IFlySpeechRecognizer_iOSApi,
	IFlySpeechRecognizerDelegate_iOSApi,
	IFlySpeechSynthesizer_iOSApi,
	IFlySpeechSynthesizerDelegate_iOSApi,
	IFlySpeechUnderstander_iOSApi,
	IFlySpeechUtility_iOSApi,
	IFlyTextUnderstander_iOSApi,
	IFlyUserWords_iOSApi,
	IFlyPcmRecorder_iOSApi,
	IFlyVoiceWakeuper_iOSApi,
	IFlyVoiceWakeuperDelegate_iOSApi,
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

	
	
	
	//#endif
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
{$O+}


{$ENDIF}

end.

