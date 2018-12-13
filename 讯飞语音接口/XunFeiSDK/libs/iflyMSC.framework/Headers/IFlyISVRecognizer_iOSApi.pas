//
//  IFlyISVRecognizer.h
//  ISV
//
//  Created by wangdan on 14-9-6.
//  Copyright (c) 2014年 IFlyTEK. All rights reserved.
//


unit IFlyISVRecognizer_iOSApi;

interface

{$IFDEF IOS}
uses
	iOSapi.Foundation,
	IFlyISVDelegate_iOSApi,
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
	PIFlyISVDelegate=Pointer;//PIFlyISVDelegate=Pointer of IFlyISVDelegate; ILocalObject(IFlyISVDelegate).GetObjectID

	
	{*
	 *  声纹接口类
	 }
	IFlyISVRecognizer=interface(NSObject)//
	['{DA2FEE8A-A4AE-4A39-9159-F0EDDEC5E675}']
		
		
		
		
		{!
		 *  The delegate of FlyISVRecognizer responsing to IFlyISVDelegate.
		 }
		function delegate:PIFlyISVDelegate{id<IFlyISVDelegate>};cdecl;
		procedure setDelegate(delegate:PIFlyISVDelegate{id<IFlyISVDelegate>});cdecl;
		
		
		{!
		 *  FlyISVRecognizer is a kind of Singleton calss.The function can be used as below:<br>
		 *  IFLyISVRecognizer *recognizer=[IFlyISVRecognizer creteRecognizer: self];
		 }
		
		
		{!
		 *  Genrerate a serial number password<br>
		 *  Princeple:<br>
		 *  1.Number serial has no 1 in itself;<br>
		 *  2.The nuber serial has no same number("98765432"is right while "99876543" is wrong)
		 *
		 *  @param length   the serial number's length,length of "98765432" is 8,generally length is 8 and other value is forbidden
		 }
		{-} function generatePassword(length:Integer):NSString{*};cdecl;
		
		
		
		{!
		 *  Used to get password from server
		 *
		 *  @param pwdt   when pwdt is 1,the function will return chinese text;while pwdt is 2, the funciton will return number serial
		 }
		{-} function getPasswordList(pwdt:Integer):NSArray{*};cdecl;
		
		
		{!
		 *  Used to judge if the engine is running in listenning
		 *
		 *  @return YES: the engine is listenning;<br>No : the engine is not listenning
		 }
		{-} function isListening:Boolean;cdecl;
		
		
		
		{!
		 *  Used to query or delete the voiceprint model in server
		 *
		 *  @param cmd  "del": delete model;<br>"que": query model;
		 *  @param authid: user id ,can be @"tianxia" or other;
		 *  @param pwdt voiceprint type<br>
		 *  1: fixed txt voiceprint code ,like @"我的地盘我做主";<br>
		 *  2: free voiceprint code , user can speek anything,but 5 times trainning the speech shall be same;<br>
		 *  3: number serial voiceprint code ,like @"98765432" and so on.
		 *  @param ptxt voiceprint txt,only fixed voiceprint and number serial have this,in free voiceprint model this param shall be set nil.
		 *  @param vid  another voiceprint type model,user can use this to query or delete model in server can be @"jakillasdfasdjjjlajlsdfhdfdsadff",totally 32 bits;<br>
		 *  NOTES:<br>
		 *  when vid is not nil,then the server will judge the vid first; while the vid is nil, server can still query or delete the voiceprint model by other params.
		 }
		[MethodName('sendRequest:authid:pwdt:ptxt:vid:err:')]
		{-} function sendRequestauthidpwdtptxtviderr(cmd:NSString{*};auth_id:NSString{*};pwdt:Integer;ptxt:NSString{*};vid:NSString{*};err:Integer{*}):Boolean;cdecl;
		
		
		{!
		 *  Set the voiceprint params
		 * 
		 *  | key             | value                                             |
		 *  |:---------------:|:-------------------------------------------------:|
		 *  | sst             | @"train" or @"verify"                             |
		 *  | auth_id         | @"tianxia" or other                               |
		 *  | sub             | @"ivp"                                            |
		 *  | ptxt            |                                                   |
		 *  | rgn             | @"5"                                              |
		 *  | pwdt            | @"1",or @"2", or @"3"                             |
		 *  | auf             | @"audio/L16;rate=16000" or @"audio/L16;rate=8000" |
		 *  | vad_enable      | @"1" or @"0"                                      |
		 *  | vad_timeout     | @"3000"                                           |
		 *  | vad_speech_tail | @"100"                                            |
		 *
		 *  @param value 参数值
		 *  @param key   参数类型
		 *
		 *  @return 设置成功返回YES，失败返回NO
		 }
		[MethodName('setParameter:forKey:')]
		{-} function setParameterforKey(value:NSString{*};key:NSString{*}):Boolean;cdecl;
		
		
		
		{!
		 *  Get the voiceprint params used the same as function of setParameter
		 }
		{-} function getParameter(key:NSString{*}):NSString{*};cdecl;
		
		
		{!
		 *  Start recording
		 }
		{-} procedure startListening;cdecl;
		
		
		{!
		 *  Stop recording
		 }
		{-} procedure stopListening;cdecl;
		
		
		{!
		 *  Cancel recording,like function stopListening
		 }
		{-} procedure cancel;cdecl;
		
		
		
		
	end;
	
	IFlyISVRecognizerClass=interface(NSObjectClass)//
	['{E969D83D-4A32-4A44-A994-4079A4995716}']
		{+} function sharedInstance:IFlyISVRecognizer;cdecl;
	end;
	
	TIFlyISVRecognizer=class(TOCGenericImport<IFlyISVRecognizerClass,IFlyISVRecognizer>)
	end;
	
{$ENDIF}

implementation

{$IFDEF IOS}

{$O-}
function IFlyISVRecognizer_FakeLoader : IFlyISVRecognizer; cdecl; external {$I BaiduMapDylibName.inc} name 'OBJC_CLASS_$_IFlyISVRecognizer';
{$O+}


{$ENDIF}

end.

