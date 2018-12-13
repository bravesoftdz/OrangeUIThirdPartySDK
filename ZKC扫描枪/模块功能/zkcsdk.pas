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
//  生成时间：2017/10/27 13:40:22
//  工具版本：1.0.2015.5.11
//
//====================================================
unit zkcsdk;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.os,
  Androidapi.JNI.GraphicsContentViewText;


type
// ===== Forward declarations =====

  JICallBack_Stub_Proxy = interface; //com.smartdevice.aidl.ICallBack$Stub$Proxy
  JICallBack_Stub = interface; //com.smartdevice.aidl.ICallBack$Stub
  JICallBack = interface; //com.smartdevice.aidl.ICallBack
  JIZKCService_Stub_Proxy = interface; //com.smartdevice.aidl.IZKCService$Stub$Proxy
  JIZKCService_Stub = interface; //com.smartdevice.aidl.IZKCService$Stub
  JIZKCService = interface; //com.smartdevice.aidl.IZKCService
  JBuildConfig = interface; //com.zkc.baseLibrary.BuildConfig
  JMessageType_BaiscMessage = interface; //com.zkc.baseLibrary.MessageType$BaiscMessage
  JMessageType = interface; //com.zkc.baseLibrary.MessageType
//  JZkcManager_1 = interface; //com.zkc.baseLibrary.ZkcManager$1
  JZkcManager_DetectPrinterThread = interface; //com.zkc.baseLibrary.ZkcManager$DetectPrinterThread
  JZkcManager = interface; //com.zkc.baseLibrary.ZkcManager

// ===== Interface declarations =====

  JICallBack_Stub_ProxyClass = interface(JObjectClass)
  ['{9ADC036A-BFC0-40D9-8713-35AF45013C44}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/smartdevice/aidl/ICallBack$Stub$Proxy')]
  JICallBack_Stub_Proxy = interface(JObject)
  ['{85EEC2CA-3B99-4BC0-9E3F-8F4B18302E08}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onReturnValue(data: TJavaArray<Byte>; size: Integer); cdecl;

    { Property }
  end;

  TJICallBack_Stub_Proxy = class(TJavaGenericImport<JICallBack_Stub_ProxyClass, JICallBack_Stub_Proxy>) end;

  JICallBack_StubClass = interface(JObjectClass)
  ['{E5A3665B-E860-4061-9BCE-ADB4B5F722F3}']
    { static Property Methods }

    { static Methods }
    {class} function init: JICallBack_Stub; cdecl;
    {class} function asInterface(iin: JIBinder): JICallBack; cdecl;

    { static Property }
  end;

  [JavaSignature('com/smartdevice/aidl/ICallBack$Stub')]
  JICallBack_Stub = interface(JObject)
  ['{BF88DE42-4A99-4C4B-BE72-92E7DD7A6A14}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(code: Integer; data: JParcel; reply: JParcel; flags: Integer): Boolean; cdecl;

    { Property }
  end;

  TJICallBack_Stub = class(TJavaGenericImport<JICallBack_StubClass, JICallBack_Stub>) end;

  JICallBackClass = interface(JObjectClass)
  ['{7E0DE2AF-4AEA-4FFA-A925-03FBC48AA085}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/smartdevice/aidl/ICallBack')]
  JICallBack = interface(IJavaInstance)
  ['{15519862-933A-4B01-AE5C-2C863A2B7781}']
    { Property Methods }

    { methods }
    procedure onReturnValue(P1: TJavaArray<Byte>; P2: Integer); cdecl;

    { Property }
  end;

  TJICallBack = class(TJavaGenericImport<JICallBackClass, JICallBack>) end;

  JIZKCService_Stub_ProxyClass = interface(JObjectClass)
  ['{5BCE3516-DEBC-4D87-8181-4B4648B13FB4}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/smartdevice/aidl/IZKCService$Stub$Proxy')]
  JIZKCService_Stub_Proxy = interface(JObject)
  ['{71BE19D2-A577-4D1F-A3EF-47D50DF257A8}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function setModuleFlag(module: Integer): Boolean; cdecl;
    procedure registerCallBack(flag: JString; callback: JICallBack); cdecl;
    procedure unregisterCallBack(flag: JString; callback: JICallBack); cdecl;
    procedure stopRunningTask; cdecl;
    function isTaskRunning: Boolean; cdecl;
    procedure getFirmwareVersion; cdecl;
    function getServiceVersion: JString; cdecl;
    function getDeviceModel: Integer; cdecl;
    procedure printerInit; cdecl;
    function getPrinterStatus: JString; cdecl;
    procedure printerSelfChecking; cdecl;
    function checkPrinterAvailable: Boolean; cdecl;
    procedure sendRAWData(flag: JString; data: TJavaArray<Byte>); cdecl;
    procedure setAlignment(alignment: Integer); cdecl;
    procedure setTypeface(atype: Integer); cdecl;
    procedure setFontSize(atype: Integer); cdecl;
    procedure printGBKText(text: JString); cdecl;
    procedure printUnicodeText(text: JString); cdecl;
    procedure printTextWithFont(text: JString; atype: Integer; size: Integer); cdecl;
    procedure printTextAlgin(text: JString; atype: Integer; size: Integer; alginStyle: Integer); cdecl;
    procedure printColumnsText(colsTextArr: TJavaObjectArray<JString>; colsWidthArr: TJavaArray<Integer>; colsAlign: TJavaArray<Integer>); cdecl;
    procedure printBitmap(bitmap: JBitmap); cdecl;
    procedure printBitmapAlgin(bitmap: JBitmap; width: Integer; height: Integer; position: Integer); cdecl;
    function createBarCode(data: JString; codeFormat: Integer; width: Integer; height: Integer; displayText: Boolean): JBitmap; cdecl;
    function createQRCode(data: JString; width: Integer; height: Integer): JBitmap; cdecl;
    procedure generateSpace; cdecl;
    function printImageGray(bitmap: JBitmap): Boolean; cdecl;
    function printRasterImage(bitmap: JBitmap): Boolean; cdecl;
    function printUnicode_1F30(textStr: JString): Boolean; cdecl;
    procedure setPrintLanguage(language: JString); cdecl;
    function getFirmwareVersion1: JString; cdecl;
    function getFirmwareVersion2: JString; cdecl;
    procedure openBackLight(btFlg: Integer); cdecl;
    function showRGB565Image(bitmapSrc: JBitmap): Boolean; cdecl;
    function showRGB565ImageByPath(path: JString): Boolean; cdecl;
    function showRGB565ImageLocation(bitmapSrc: JBitmap; x: Integer; y: Integer; width: Integer; height: Integer): Boolean; cdecl;
    function updateLogo(bitmapSrc: JBitmap): Boolean; cdecl;
    function updateLogoByPath(path: JString): Boolean; cdecl;
    function showDotImage(BackColor: Integer; ForeColor: Integer; bitmapSrc: JBitmap): Boolean; cdecl;
    function showRGB565ImageCenter(bitmapSrc: JBitmap): Boolean; cdecl;
    function Open: Integer; cdecl;
    function Close(fd: Int64): Integer; cdecl;
    function setGPIO(io: Integer; status: Integer): Boolean; cdecl;
    function openCard(carPositin: Integer): Integer; cdecl;
    function openCard2(fd: TJavaArray<Integer>; slotno: Integer): Integer; cdecl;
    function openCard3(fd: Int64; P2: Integer): Integer; cdecl;
    function CloseCard: Integer; cdecl;
    function CloseCard2(fd: Int64; P2: Boolean): Integer; cdecl;
    function ResetCard(power: Integer): TJavaArray<Byte>; cdecl;
    function ResetCard2(fd: Int64; P2: TJavaArray<Byte>; atr: TJavaArray<Integer>): Integer; cdecl;
    function ResetCard3(fd: Int64; P2: Integer; slotno: Integer): TJavaArray<Byte>; cdecl;
    function CardApdu(apdu: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function CardApdu2(fd: Int64; P2: TJavaArray<Byte>; apdu: Integer; apduLength: TJavaArray<Byte>; response: TJavaArray<Integer>): Integer; cdecl;
    function CardApdu3(fd: Int64; P2: TJavaArray<Byte>; apdu: Integer): TJavaArray<Byte>; cdecl;
    procedure openScan(status: Boolean); cdecl;
    procedure scan; cdecl;
    procedure dataAppendEnter(status: Boolean); cdecl;
    procedure appendRingTone(status: Boolean); cdecl;
    procedure continueScan(status: Boolean); cdecl;
    procedure scanRepeatHint(status: Boolean); cdecl;
    procedure recoveryFactorySet(status: Boolean); cdecl;
    function sendCommand(buffer: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function isScanning: Boolean; cdecl;
    function getIdentifyInfo: JString; cdecl;
    function turnOn: Boolean; cdecl;
    function turnOff: Boolean; cdecl;
    function getHeader: JBitmap; cdecl;

    { Property }
  end;

  TJIZKCService_Stub_Proxy = class(TJavaGenericImport<JIZKCService_Stub_ProxyClass, JIZKCService_Stub_Proxy>) end;

  JIZKCService_StubClass = interface(JObjectClass)
  ['{1DA3A145-0062-4E5A-BF2D-532054452935}']
    { static Property Methods }

    { static Methods }
    {class} function init: JIZKCService_Stub; cdecl;
    {class} function asInterface(iin: JIBinder): JIZKCService; cdecl;

    { static Property }
  end;

  [JavaSignature('com/smartdevice/aidl/IZKCService$Stub')]
  JIZKCService_Stub = interface(JObject)
  ['{B4B557AA-8914-418B-B0E9-7AC6CB4C58A2}']
    { Property Methods }

    { methods }
    function asBinder: JIBinder; cdecl;
    function onTransact(code: Integer; data: JParcel; reply: JParcel; flags: Integer): Boolean; cdecl;

    { Property }
  end;

  TJIZKCService_Stub = class(TJavaGenericImport<JIZKCService_StubClass, JIZKCService_Stub>) end;

  JIZKCServiceClass = interface(JObjectClass)
  ['{5F1394B5-1DFC-44C0-82B1-018D24D6A817}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/smartdevice/aidl/IZKCService')]
  JIZKCService = interface(IJavaInstance)
  ['{A16DA182-C49A-447D-813C-95F2B835C961}']
    { Property Methods }

    { methods }
    function setModuleFlag(P1: Integer): Boolean; cdecl;
    procedure registerCallBack(P1: JString; P2: JICallBack); cdecl;
    procedure unregisterCallBack(P1: JString; P2: JICallBack); cdecl;
    procedure stopRunningTask; cdecl;
    function isTaskRunning: Boolean; cdecl;
    procedure getFirmwareVersion; cdecl;
    function getServiceVersion: JString; cdecl;
    function getDeviceModel: Integer; cdecl;
    procedure printerInit; cdecl;
    function getPrinterStatus: JString; cdecl;
    procedure printerSelfChecking; cdecl;
    function checkPrinterAvailable: Boolean; cdecl;
    procedure sendRAWData(P1: JString; P2: TJavaArray<Byte>); cdecl;
    procedure setAlignment(P1: Integer); cdecl;
    procedure setTypeface(P1: Integer); cdecl;
    procedure setFontSize(P1: Integer); cdecl;
    procedure printGBKText(P1: JString); cdecl;
    procedure printUnicodeText(P1: JString); cdecl;
    procedure printTextWithFont(P1: JString; P2: Integer; P3: Integer); cdecl;
    procedure printTextAlgin(P1: JString; P2: Integer; P3: Integer; P4: Integer); cdecl;
    procedure printColumnsText(P1: TJavaObjectArray<JString>; P2: TJavaArray<Integer>; P3: TJavaArray<Integer>); cdecl;
    procedure printBitmap(P1: JBitmap); cdecl;
    procedure printBitmapAlgin(P1: JBitmap; P2: Integer; P3: Integer; P4: Integer); cdecl;
    function createBarCode(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Boolean): JBitmap; cdecl;
    function createQRCode(P1: JString; P2: Integer; P3: Integer): JBitmap; cdecl;
    procedure generateSpace; cdecl;
    function printImageGray(P1: JBitmap): Boolean; cdecl;
    function printRasterImage(P1: JBitmap): Boolean; cdecl;
    function printUnicode_1F30(P1: JString): Boolean; cdecl;
    procedure setPrintLanguage(P1: JString); cdecl;
    function getFirmwareVersion1: JString; cdecl;
    function getFirmwareVersion2: JString; cdecl;
    procedure openBackLight(P1: Integer); cdecl;
    function showRGB565Image(P1: JBitmap): Boolean; cdecl;
    function showRGB565ImageByPath(P1: JString): Boolean; cdecl;
    function showRGB565ImageLocation(P1: JBitmap; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Boolean; cdecl;
    function updateLogo(P1: JBitmap): Boolean; cdecl;
    function updateLogoByPath(P1: JString): Boolean; cdecl;
    function showDotImage(P1: Integer; P2: Integer; P3: JBitmap): Boolean; cdecl;
    function showRGB565ImageCenter(P1: JBitmap): Boolean; cdecl;
    function Open: Integer; cdecl;
    function Close(P1: Int64): Integer; cdecl;
    function setGPIO(P1: Integer; P2: Integer): Boolean; cdecl;
    function openCard(P1: Integer): Integer; cdecl;
    function openCard2(P1: TJavaArray<Integer>; P2: Integer): Integer; cdecl;
    function openCard3(P1: Int64; P2: Integer): Integer; cdecl;
    function CloseCard: Integer; cdecl;
    function CloseCard2(P1: Int64; P2: Boolean): Integer; cdecl;
    function ResetCard(P1: Integer): TJavaArray<Byte>; cdecl;
    function ResetCard2(P1: Int64; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function ResetCard3(P1: Int64; P2: Integer; P3: Integer): TJavaArray<Byte>; cdecl;
    function CardApdu(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function CardApdu2(P1: Int64; P2: TJavaArray<Byte>; P3: Integer; P4: TJavaArray<Byte>; P5: TJavaArray<Integer>): Integer; cdecl;
    function CardApdu3(P1: Int64; P2: TJavaArray<Byte>; P3: Integer): TJavaArray<Byte>; cdecl;
    procedure openScan(P1: Boolean); cdecl;
    procedure scan; cdecl;
    procedure dataAppendEnter(P1: Boolean); cdecl;
    procedure appendRingTone(P1: Boolean); cdecl;
    procedure continueScan(P1: Boolean); cdecl;
    procedure scanRepeatHint(P1: Boolean); cdecl;
    procedure recoveryFactorySet(P1: Boolean); cdecl;
    function sendCommand(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function isScanning: Boolean; cdecl;
    function getIdentifyInfo: JString; cdecl;
    function turnOn: Boolean; cdecl;
    function turnOff: Boolean; cdecl;
    function getHeader: JBitmap; cdecl;

    { Property }
  end;

  TJIZKCService = class(TJavaGenericImport<JIZKCServiceClass, JIZKCService>) end;

  JBuildConfigClass = interface(JObjectClass)
  ['{52BDBF9A-AC6F-452C-B2B5-88FEDD284B0C}']
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

  [JavaSignature('com/zkc/baseLibrary/BuildConfig')]
  JBuildConfig = interface(JObject)
  ['{C5DC28CD-51BC-4619-A622-5079F3639B08}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBuildConfig = class(TJavaGenericImport<JBuildConfigClass, JBuildConfig>) end;

  JMessageType_BaiscMessageClass = interface(JObjectClass)
  ['{4B919EF8-B121-462F-9744-A74415142ABE}']
    { static Property Methods }
    {class} function _GetBASE: Integer;
    {class} function _GetSEVICE_BIND_SUCCESS: Integer;
    {class} function _GetSEVICE_BIND_FAIL: Integer;
    {class} function _GetGET_IDETIFY_INFO_SUCCESS: Integer;
    {class} function _GetDETECT_PRINTER_FAIL: Integer;
    {class} function _GetDETECT_PRINTER_SUCCESS: Integer;
    {class} function _GetPRINTER_LINK_TIMEOUT: Integer;
    {class} function _GetSCAN_RESULT_GET_SUCCESS: Integer;

    { static Methods }

    { static Property }
    {class} property BASE: Integer read _GetBASE;
    {class} property SEVICE_BIND_SUCCESS: Integer read _GetSEVICE_BIND_SUCCESS;
    {class} property SEVICE_BIND_FAIL: Integer read _GetSEVICE_BIND_FAIL;
    {class} property GET_IDETIFY_INFO_SUCCESS: Integer read _GetGET_IDETIFY_INFO_SUCCESS;
    {class} property DETECT_PRINTER_FAIL: Integer read _GetDETECT_PRINTER_FAIL;
    {class} property DETECT_PRINTER_SUCCESS: Integer read _GetDETECT_PRINTER_SUCCESS;
    {class} property PRINTER_LINK_TIMEOUT: Integer read _GetPRINTER_LINK_TIMEOUT;
    {class} property SCAN_RESULT_GET_SUCCESS: Integer read _GetSCAN_RESULT_GET_SUCCESS;
  end;

  [JavaSignature('com/zkc/baseLibrary/MessageType$BaiscMessage')]
  JMessageType_BaiscMessage = interface(IJavaInstance)
  ['{68F1025E-3345-4A41-9BDE-6CF7A73B8F3C}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJMessageType_BaiscMessage = class(TJavaGenericImport<JMessageType_BaiscMessageClass, JMessageType_BaiscMessage>) end;

  JMessageTypeClass = interface(JObjectClass)
  ['{1C279038-DD21-4B7B-B99D-F719609FE5F5}']
    { static Property Methods }

    { static Methods }
    {class} function init: JMessageType; cdecl;

    { static Property }
  end;

  [JavaSignature('com/zkc/baseLibrary/MessageType')]
  JMessageType = interface(JObject)
  ['{5A24CFD7-1052-4C22-8945-5B6AC3ED4F6D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJMessageType = class(TJavaGenericImport<JMessageTypeClass, JMessageType>) end;

//  JZkcManager_1Class = interface(JObjectClass)
//  ['{A2BCD90B-780C-4F9A-ADAC-45B360481943}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/zkc/baseLibrary/ZkcManager$1')]
//  JZkcManager_1 = interface(JObject)
//  ['{4C84082F-7238-4783-860A-2CF8D119F3F3}']
//    { Property Methods }
//
//    { methods }
//    procedure onServiceDisconnected(name: JComponentName); cdecl;
//    procedure onServiceConnected(name: JComponentName; service: JIBinder); cdecl;
//
//    { Property }
//  end;

//  TJZkcManager_1 = class(TJavaGenericImport<JZkcManager_1Class, JZkcManager_1>) end;

  JZkcManager_DetectPrinterThreadClass = interface(JObjectClass)
  ['{FCA058AE-3F01-4A2C-9CEB-E91F23070D3F}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/zkc/baseLibrary/ZkcManager$DetectPrinterThread')]
  JZkcManager_DetectPrinterThread = interface(JObject)
  ['{2137FDF7-140D-4B48-A6FB-36CF94C9950A}']
    { Property Methods }

    { methods }
    procedure run; cdecl;

    { Property }
  end;

  TJZkcManager_DetectPrinterThread = class(TJavaGenericImport<JZkcManager_DetectPrinterThreadClass, JZkcManager_DetectPrinterThread>) end;

  JZkcManagerClass = interface(JObjectClass)
  ['{3019FEA7-4BA9-4ED1-A614-161D625759C6}']
    { static Property Methods }
    {class} function _GetmIzkcService: JIZKCService;

    { static Methods }
    {class} function init: JZkcManager; cdecl;
    {class} function getInstance: JZkcManager; cdecl;

    { static Property }
    {class} property mIzkcService: JIZKCService read _GetmIzkcService;
  end;

  [JavaSignature('com/zkc/baseLibrary/ZkcManager')]
  JZkcManager = interface(JObject)
  ['{919FCFD6-9D63-4519-841E-6B561987B1AF}']
    { Property Methods }

    { methods }
    procedure beginLinkToPrinter; cdecl;
    procedure onCreate(mContext: JContext; mHandler: JHandler); cdecl;
    procedure onDestroy; cdecl;

    { Property }
  end;

  TJZkcManager = class(TJavaGenericImport<JZkcManagerClass, JZkcManager>) end;

{$ENDIF}
implementation
{$IFDEF ANDROID}


procedure RegisterTypes;
begin
  TRegTypes.RegisterType('zkcsdk.JICallBack_Stub_Proxy',
    TypeInfo(zkcsdk.JICallBack_Stub_Proxy));
  TRegTypes.RegisterType('zkcsdk.JICallBack_Stub',
    TypeInfo(zkcsdk.JICallBack_Stub));
  TRegTypes.RegisterType('zkcsdk.JICallBack',
    TypeInfo(zkcsdk.JICallBack));
  TRegTypes.RegisterType('zkcsdk.JIZKCService_Stub_Proxy',
    TypeInfo(zkcsdk.JIZKCService_Stub_Proxy));
  TRegTypes.RegisterType('Androidapi.JNI.zkcsdk.JIZKCService_Stub',
    TypeInfo(zkcsdk.JIZKCService_Stub));
  TRegTypes.RegisterType('zkcsdk.JIZKCService',
    TypeInfo(zkcsdk.JIZKCService));
  TRegTypes.RegisterType('zkcsdk.JBuildConfig',
    TypeInfo(zkcsdk.JBuildConfig));
  TRegTypes.RegisterType('zkcsdk.JMessageType_BaiscMessage',
    TypeInfo(zkcsdk.JMessageType_BaiscMessage));
  TRegTypes.RegisterType('zkcsdk.JMessageType',
    TypeInfo(zkcsdk.JMessageType));
//  TRegTypes.RegisterType('zkcsdk.JZkcManager_1',
//    TypeInfo(zkcsdk.JZkcManager_1));
  TRegTypes.RegisterType('zkcsdk.JZkcManager_DetectPrinterThread',
    TypeInfo(zkcsdk.JZkcManager_DetectPrinterThread));
  TRegTypes.RegisterType('zkcsdk.JZkcManager',
    TypeInfo(zkcsdk.JZkcManager));
end;


initialization
  RegisterTypes;

{$ENDIF}

end.

