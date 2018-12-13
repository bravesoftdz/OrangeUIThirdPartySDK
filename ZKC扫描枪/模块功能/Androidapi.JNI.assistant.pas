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
//  生成时间：2017-11-06 14:47:46
//  工具版本：1.0.2015.5.11
//
//====================================================
unit Androidapi.JNI.assistant;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNIBridge, 
  Androidapi.JNI.JavaTypes;


type
// ===== Forward declarations =====

  JBuildConfig = interface; //com.smartdevice.fmx_assistant.BuildConfig
  JMyCallBackStub = interface; //com.smartdevice.fmx_assistant.MyCallBackStub
  JMyCallBackStubListener = interface; //com.smartdevice.fmx_assistant.MyCallBackStubListener

// ===== Interface declarations =====

  JBuildConfigClass = interface(JObjectClass)
  ['{75338D25-1A4C-424F-ADD6-84F1838776E2}']
    { static Property Methods }
    {class} function _GetDEBUG: Boolean;
    {class} function _GetAPPLICATION_ID: JString;
    {class} function _GetBUILD_TYPE: JString;
    {class} function _GetFLAVOR: JString;
    {class} function _GetVERSION_CODE: Integer;
    {class} function _GetVERSION_NAME: JString;

    { static Methods }
    {class} function init: JBuildConfig; cdecl;

    { static Property }
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('com/smartdevice/fmx_assistant/BuildConfig')]
  JBuildConfig = interface(JObject)
  ['{3788A208-A1F2-4548-935E-93BF621110CB}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBuildConfig = class(TJavaGenericImport<JBuildConfigClass, JBuildConfig>) end;

  JMyCallBackStubClass = interface(JObjectClass)
  ['{81089AF8-7DC2-4CB8-A7CB-0324FA93BA7B}']
    { static Property Methods }
    {class} function _GetmMyCallBackStubListener: JMyCallBackStubListener;

    { static Methods }
    {class} function init: JMyCallBackStub; cdecl;

    { static Property }
    {class} property mMyCallBackStubListener: JMyCallBackStubListener read _GetmMyCallBackStubListener;
  end;

  [JavaSignature('com/smartdevice/fmx_assistant/MyCallBackStub')]
  JMyCallBackStub = interface(JObject)
  ['{7F1A0EFC-2AF3-4AAF-9C86-9A53756C3AFB}']
    { Property Methods }

    { methods }
    procedure onReturnValue(buffer: TJavaArray<Byte>; size: Integer); cdecl;
    procedure setMyCallBackStubListener(aMyCallBackStubListener: JMyCallBackStubListener); cdecl;

    { Property }
  end;

  TJMyCallBackStub = class(TJavaGenericImport<JMyCallBackStubClass, JMyCallBackStub>) end;

  JMyCallBackStubListenerClass = interface(JObjectClass)
  ['{0BB23F68-EE13-475E-BA57-EAE9A970CAE4}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/smartdevice/fmx_assistant/MyCallBackStubListener')]
  JMyCallBackStubListener = interface(IJavaInstance)
  ['{AE0ED3EA-8BB2-4687-AC4C-334D7A3D7A30}']
    { Property Methods }

    { methods }
    procedure onReturnValue(P1: TJavaArray<Byte>; P2: Integer); cdecl;

    { Property }
  end;

  TJMyCallBackStubListener = class(TJavaGenericImport<JMyCallBackStubListenerClass, JMyCallBackStubListener>) end;

{$ENDIF}
implementation
//{$IFDEF ANDROID}
//
//
//procedure RegisterTypes;
//begin
//  TRegTypes.RegisterType('Androidapi.JNI.assistant.JBuildConfig',
//    TypeInfo(Androidapi.JNI.assistant.JBuildConfig));
//  TRegTypes.RegisterType('Androidapi.JNI.assistant.JMyCallBackStub',
//    TypeInfo(Androidapi.JNI.assistant.JMyCallBackStub));
//  TRegTypes.RegisterType('Androidapi.JNI.assistant.JMyCallBackStubListener',
//    TypeInfo(Androidapi.JNI.assistant.JMyCallBackStubListener));
//end;
//
//
//initialization
//  RegisterTypes;
//
//{$ENDIF}

end.
