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
	 *  ��Ƶ������ʼ��������AVAudioSession��Category���ԡ�
	 }
	IFlyAudioSession=interface(NSObject)//
	['{55A90A73-59E0-4079-9880-BE9EC64C6B7E}']
		
		{*
		 *  ��ʼ��������������Ҫ���ںϳɲ�������
		 *
		 *  �˽ӿ���Ҫ����ԭ������Ƶ�����������Ż�����AVAudioSession��Category����ֵ��<br>
		 *  ��ԭ����Category����ֵΪAVAudioSessionCategoryPlayAndRecord�������AVAudioSessionCategoryOptionDefaultToSpeaker��AVAudioSessionCategoryOptionAllowBluetoothѡ���Ϊ����Category����ֵ��isMPCenterΪNO��������Category����ֵΪAVAudioSessionCategoryPlayback��ѡ��ΪAVAudioSessionCategoryOptionMixWithOthers����Ϊ����Category����ֵ��isMPCenterΪYES���򱣳�ԭ�������ã������κθ��ġ�
		 *
		 *  @param isMPCenter �Ƿ��ʼ��MPPlayerCenter��0����ʼ����1��ʼ�����˲���ֻ��AVAudioSession��Category����ֵ��ΪAVAudioSessionCategoryPlayAndRecordʱ������Ч��
		 }
		
		{*
		 *  ��ʼ��¼������,��Ҫ����ʶ��¼������
		 *
		 *  ����AVAudioSession��Category����ֵΪAVAudioSessionCategoryPlayAndRecord��ѡ��ΪAVAudioSessionCategoryOptionDefaultToSpeaker|AVAudioSessionCategoryOptionAllowBluetooth��
		 *
		 *  @return �ɹ�����YES��ʧ�ܷ���NO
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

