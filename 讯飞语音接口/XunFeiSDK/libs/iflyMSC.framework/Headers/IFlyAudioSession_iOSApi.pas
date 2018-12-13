//
//  IFlyAudioSession.h
//  MSCDemo
//
//  Created by AlexHHC on 1/9/14.
//
//

unit IFlyAudioSession_iOSApi;

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

	
	{*
	 *  音频环境初始化，设置AVAudioSession的Category属性。
	 }
	IFlyAudioSession=interface(NSObject)//
	['{55A90A73-59E0-4079-9880-BE9EC64C6B7E}']
		
		{*
		 *  初始化播音环境，主要用于合成播放器。
		 *
		 *  此接口主要根据原来的音频环境，重新优化设置AVAudioSession的Category属性值。<br>
		 *  若原来的Category属性值为AVAudioSessionCategoryPlayAndRecord，则添加AVAudioSessionCategoryOptionDefaultToSpeaker｜AVAudioSessionCategoryOptionAllowBluetooth选项；若为其他Category属性值且isMPCenter为NO，则设置Category属性值为AVAudioSessionCategoryPlayback，选项为AVAudioSessionCategoryOptionMixWithOthers；若为其他Category属性值且isMPCenter为YES，则保持原来的设置，不做任何更改。
		 *
		 *  @param isMPCenter 是否初始化MPPlayerCenter：0不初始化，1初始化。此参数只在AVAudioSession的Category属性值不为AVAudioSessionCategoryPlayAndRecord时设置有效。
		 }
		
		{*
		 *  初始化录音环境,主要用于识别录音器。
		 *
		 *  设置AVAudioSession的Category属性值为AVAudioSessionCategoryPlayAndRecord，选项为AVAudioSessionCategoryOptionDefaultToSpeaker|AVAudioSessionCategoryOptionAllowBluetooth。
		 *
		 *  @return 成功返回YES，失败返回NO
		 }
		
	end;
	
	IFlyAudioSessionClass=interface(NSObjectClass)//
	['{DD39AFBE-9185-4BAD-AB28-FCA0CE156B82}']
		{+} procedure initPlayingAudioSession(isMPCenter:Boolean);cdecl;
		{+} function initRecordingAudioSession:Boolean;cdecl;
	end;
	
	TIFlyAudioSession=class(TOCGenericImport<IFlyAudioSessionClass,IFlyAudioSession>)
	end;
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyAudioSession_FakeLoader : IFlyAudioSession; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlyAudioSession';
{$O+}


{$ENDIF}

end.

