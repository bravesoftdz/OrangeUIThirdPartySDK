//====================================================
//
//  转换来自JavaOrClass2Pas(原JavaClassToDelphiUnit)
//  原始作者：ying32
//  QQ: 1444386932
//      396506155
//  Email：yuanfen3287@vip.qq.com
//
//  修改 By：Flying Wang & 爱吃猪头肉
//  请不要移除以上的任何信息。
//  请不要将本版本发到城通网盘，否则死全家。
//
//  Email：1765535979@qq.com
//
//  生成时间：2017-06-14 9:30:14
//  工具版本：1.0.2015.5.11
//
//====================================================
unit Androidapi.JNI.mipushreceiver;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNIBridge, 
  Androidapi.JNI.JavaTypes, 
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.MiPush_SDK_Client_3_4_0;


type
// ===== Forward declarations =====

  JMyPushMessageReceiver = interface; //com.ggggcexx.xiaomipushreceiver.MyPushMessageReceiver
  JOnMyPushMessageListener = interface; //com.ggggcexx.xiaomipushreceiver.OnMyPushMessageListener

// ===== Interface declarations =====

  JMyPushMessageReceiverClass = interface(JObjectClass)
  ['{111322A0-14BC-4FC8-BA7F-BB2E564C8058}']
    { static Property Methods }

    { static Methods }
    {class} function init: JMyPushMessageReceiver; cdecl;
    {class} procedure setOnMyPushMessageListener(P1: JOnMyPushMessageListener); cdecl;
    {class} function getOnMyPushMessageListener: JOnMyPushMessageListener; cdecl;

    { static Property }
  end;

  [JavaSignature('com/ggggcexx/xiaomipushreceiver/MyPushMessageReceiver')]
  JMyPushMessageReceiver = interface(JObject)
  ['{B1065AD5-D038-4E5B-ADCF-3F9748A16E1D}']
    { Property Methods }

    { methods }
    procedure onReceivePassThroughMessage(context: JContext; amessage: JMiPushMessage); cdecl;
    procedure onNotificationMessageClicked(context: JContext; amessage: JMiPushMessage); cdecl;
    procedure onNotificationMessageArrived(context: JContext; amessage: JMiPushMessage); cdecl;
    procedure onCommandResult(context: JContext; amessage: JMiPushCommandMessage); cdecl;
    procedure onReceiveRegisterResult(context: JContext; amessage: JMiPushCommandMessage); cdecl;

    { Property }
  end;

  TJMyPushMessageReceiver = class(TJavaGenericImport<JMyPushMessageReceiverClass, JMyPushMessageReceiver>) end;

  JOnMyPushMessageListenerClass = interface(JObjectClass)
  ['{7F88F00A-6B97-47F2-8005-8F170E4AFEC1}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/ggggcexx/xiaomipushreceiver/OnMyPushMessageListener')]
  JOnMyPushMessageListener = interface(IJavaInstance)
  ['{66EE56B5-FCF3-46D8-9D67-C2CD30BC2DAD}']
    { Property Methods }

    { methods }
    procedure onReceivePassThroughMessage(P1: JContext; P2: JMiPushMessage); cdecl;
    procedure onNotificationMessageClicked(P1: JContext; P2: JMiPushMessage); cdecl;
    procedure onNotificationMessageArrived(P1: JContext; P2: JMiPushMessage); cdecl;
    procedure onCommandResult(P1: JContext; P2: JMiPushCommandMessage); cdecl;
    procedure onReceiveRegisterResult(P1: JContext; P2: JMiPushCommandMessage); cdecl;

    { Property }
  end;

  TJOnMyPushMessageListener = class(TJavaGenericImport<JOnMyPushMessageListenerClass, JOnMyPushMessageListener>) end;

{$ENDIF}
implementation
//{$IFDEF ANDROID}
//
//
//procedure RegisterTypes;
//begin
//  TRegTypes.RegisterType('Androidapi.JNI.mipushreceiver.JMyPushMessageReceiver',
//    TypeInfo(Androidapi.JNI.mipushreceiver.JMyPushMessageReceiver));
//  TRegTypes.RegisterType('Androidapi.JNI.mipushreceiver.JOnMyPushMessageListener',
//    TypeInfo(Androidapi.JNI.mipushreceiver.JOnMyPushMessageListener));
//end;
//
//
//initialization
//  RegisterTypes;
//
//{$ENDIF}

end.
