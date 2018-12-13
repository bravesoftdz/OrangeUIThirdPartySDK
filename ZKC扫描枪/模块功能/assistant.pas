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
//  生成时间：2017-10-31 16:38:15
//  工具版本：1.0.2015.5.11
//
//====================================================
unit assistant;

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
  ['{C5A01372-AC5A-474D-9C33-710C067763B6}']
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
  ['{98741D20-F4D8-4356-844F-4C01B5AF9FD2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBuildConfig = class(TJavaGenericImport<JBuildConfigClass, JBuildConfig>) end;

  JMyCallBackStubClass = interface(JObjectClass)
  ['{E065ADA1-1C40-4794-BAEE-7FA8890BCA9C}']
    { static Property Methods }
    {class} function _GetmMyCallBackStubListener: JMyCallBackStubListener;

    { static Methods }
    {class} function init: JMyCallBackStub; cdecl;

    { static Property }
    {class} property mMyCallBackStubListener: JMyCallBackStubListener read _GetmMyCallBackStubListener;
  end;

  [JavaSignature('com/smartdevice/fmx_assistant/MyCallBackStub')]
  JMyCallBackStub = interface(JObject)
  ['{436B0C9F-502A-4C4F-82BE-AC38E6A1361F}']
    { Property Methods }

    { methods }
    procedure onReturnValue(buffer: TJavaArray<Byte>; size: Integer); cdecl;
    procedure setMyCallBackStubListener(aMyCallBackStubListener: JMyCallBackStubListener); cdecl;

    { Property }
  end;

  TJMyCallBackStub = class(TJavaGenericImport<JMyCallBackStubClass, JMyCallBackStub>) end;

  JMyCallBackStubListenerClass = interface(JObjectClass)
  ['{B7CCF690-BF67-4359-90DC-8F0400711AAB}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/smartdevice/fmx_assistant/MyCallBackStubListener')]
  JMyCallBackStubListener = interface(IJavaInstance)
  ['{97357C2A-CFA5-4E12-9BFB-4EA9B3725941}']
    { Property Methods }

    { methods }
    procedure onReturnValue(P1: TJavaArray<Byte>; P2: Integer); cdecl;

    { Property }
  end;

  TJMyCallBackStubListener = class(TJavaGenericImport<JMyCallBackStubListenerClass, JMyCallBackStubListener>) end;

{$ENDIF}
implementation
{$IFDEF ANDROID}


procedure RegisterTypes;
begin
  TRegTypes.RegisterType('assistant.JBuildConfig',
    TypeInfo(assistant.JBuildConfig));
  TRegTypes.RegisterType('assistant.JMyCallBackStub',
    TypeInfo(assistant.JMyCallBackStub));
  TRegTypes.RegisterType('assistant.JMyCallBackStubListener',
    TypeInfo(assistant.JMyCallBackStubListener));
end;


initialization
  RegisterTypes;

{$ENDIF}

end.
