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
//  生成时间：2017-06-16 14:45:54
//  工具版本：1.0.2015.5.11
//
//====================================================
unit Androidapi.JNI.SangforSDK;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.os,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.App,
  Androidapi.JNI.Net,
  Androidapi.JNI.Java.Security//,
//  Androidapi.JNI.javax.net.ssl.SSLSession,
//  Androidapi.JNI.org.apache.http.impl.cookie.BasicClientCookie,
//  Androidapi.JNI.javax.net.ssl.SSLContext
  ;


type
// ===== Forward declarations =====

  JVpnCommon = interface; //com.sangfor.ssl.common.VpnCommon
  JSangforAuthForward_CallbackHandler = interface; //com.sangfor.ssl.easyapp.SangforAuthForward$CallbackHandler
  JSangforAuthForward = interface; //com.sangfor.ssl.easyapp.SangforAuthForward
  JSangforNbAuth = interface; //com.sangfor.ssl.easyapp.SangforNbAuth
//  JAuthController_1 = interface; //com.sangfor.ssl.easyl3vpn.AuthController$1
//  JAuthController_2 = interface; //com.sangfor.ssl.easyl3vpn.AuthController$2
//  JAuthController_3 = interface; //com.sangfor.ssl.easyl3vpn.AuthController$3
//  JAuthController_4 = interface; //com.sangfor.ssl.easyl3vpn.AuthController$4
//  JAuthController_AuthTask_1 = interface; //com.sangfor.ssl.easyl3vpn.AuthController$AuthTask$1
  JAuthController_AuthTask = interface; //com.sangfor.ssl.easyl3vpn.AuthController$AuthTask
  JAuthController_CancelTask = interface; //com.sangfor.ssl.easyl3vpn.AuthController$CancelTask
  JAuthController = interface; //com.sangfor.ssl.easyl3vpn.AuthController
//  JL3vpnController_1 = interface; //com.sangfor.ssl.easyl3vpn.L3vpnController$1
//  JL3vpnController_2 = interface; //com.sangfor.ssl.easyl3vpn.L3vpnController$2
  JL3vpnController = interface; //com.sangfor.ssl.easyl3vpn.L3vpnController
  JSangforL3vpnAuth_CallbackHandler = interface; //com.sangfor.ssl.easyl3vpn.SangforL3vpnAuth$CallbackHandler
  JSangforL3vpnAuth_CheckUpdateThread = interface; //com.sangfor.ssl.easyl3vpn.SangforL3vpnAuth$CheckUpdateThread
  JSangforL3vpnAuth = interface; //com.sangfor.ssl.easyl3vpn.SangforL3vpnAuth
  JISangforAuth = interface; //com.sangfor.ssl.ISangforAuth
  JIVpnDelegate = interface; //com.sangfor.ssl.IVpnDelegate
//  JIPRcManager_1 = interface; //com.sangfor.ssl.l3vpn.service.IPRcManager$1
  JIPRcManager = interface; //com.sangfor.ssl.l3vpn.service.IPRcManager
  JServiceConstant = interface; //com.sangfor.ssl.l3vpn.service.ServiceConstant
  JServiceException = interface; //com.sangfor.ssl.l3vpn.service.ServiceException
  JSvpnService = interface; //com.sangfor.ssl.l3vpn.service.SvpnService
  JSvpnServiceManager = interface; //com.sangfor.ssl.l3vpn.service.SvpnServiceManager
  JBase64_Coder = interface; //com.sangfor.ssl.rdp.utils.crypto.Base64$Coder
  JBase64_Decoder = interface; //com.sangfor.ssl.rdp.utils.crypto.Base64$Decoder
  JBase64_Encoder = interface; //com.sangfor.ssl.rdp.utils.crypto.Base64$Encoder
  JBase64 = interface; //com.sangfor.ssl.rdp.utils.crypto.Base64
  JCrypto = interface; //com.sangfor.ssl.rdp.utils.crypto.Crypto
  JSangforAuth = interface; //com.sangfor.ssl.SangforAuth
  JAuthentication_InvalidFormatException = interface; //com.sangfor.ssl.service.auth.Authentication$InvalidFormatException
  JAuthentication = interface; //com.sangfor.ssl.service.auth.Authentication
  JCertAuth_CertAuth22 = interface; //com.sangfor.ssl.service.auth.CertAuth$CertAuth22
  JCertAuth_TrustAnyTrustManager = interface; //com.sangfor.ssl.service.auth.CertAuth$TrustAnyTrustManager
  JCertAuth = interface; //com.sangfor.ssl.service.auth.CertAuth
  JCertFileListItem = interface; //com.sangfor.ssl.service.auth.CertFileListItem
  JChallengeAuth = interface; //com.sangfor.ssl.service.auth.ChallengeAuth
  JEmptyAuth = interface; //com.sangfor.ssl.service.auth.EmptyAuth
  JHardIdAuth = interface; //com.sangfor.ssl.service.auth.HardIdAuth
  JPasswordAuth = interface; //com.sangfor.ssl.service.auth.PasswordAuth
  JPKCS12Cert_CertExistException = interface; //com.sangfor.ssl.service.auth.PKCS12Cert$CertExistException
  JPKCS12Cert_X509Exception = interface; //com.sangfor.ssl.service.auth.PKCS12Cert$X509Exception
  JPKCS12Cert = interface; //com.sangfor.ssl.service.auth.PKCS12Cert
  JSmsAuth = interface; //com.sangfor.ssl.service.auth.SmsAuth
  JTokenAuth = interface; //com.sangfor.ssl.service.auth.TokenAuth
  JDataManager = interface; //com.sangfor.ssl.service.data.DataManager
//  JLineHandler_1 = interface; //com.sangfor.ssl.service.line.LineHandler$1
  JLineHandler_LineUnit = interface; //com.sangfor.ssl.service.line.LineHandler$LineUnit
  JLineHandler = interface; //com.sangfor.ssl.service.line.LineHandler
  JLineHandlerListener = interface; //com.sangfor.ssl.service.line.LineHandlerListener
  JMultiLineHandler = interface; //com.sangfor.ssl.service.line.MultiLineHandler
  JWebAgentHandler = interface; //com.sangfor.ssl.service.line.WebAgentHandler
  JResourceManager_ResourceHandler = interface; //com.sangfor.ssl.service.setting.ResourceManager$ResourceHandler
  JResourceManager = interface; //com.sangfor.ssl.service.setting.ResourceManager
//  JSettingManager_1 = interface; //com.sangfor.ssl.service.setting.SettingManager$1
//  JSettingManager_1Rec = interface; //com.sangfor.ssl.service.setting.SettingManager$1Rec
  JSettingManager = interface; //com.sangfor.ssl.service.setting.SettingManager
  JSystemConfiguration_VpnInfo = interface; //com.sangfor.ssl.service.setting.SystemConfiguration$VpnInfo
  JSystemConfiguration = interface; //com.sangfor.ssl.service.setting.SystemConfiguration
  JClientMessage = interface; //com.sangfor.ssl.service.timeqry.ClientMessage
  JFormatTransfer = interface; //com.sangfor.ssl.service.timeqry.FormatTransfer
  JServerMessage = interface; //com.sangfor.ssl.service.timeqry.ServerMessage
//  JTimeQry_1 = interface; //com.sangfor.ssl.service.timeqry.TimeQry$1
  JTimeQry_FluxInfo = interface; //com.sangfor.ssl.service.timeqry.TimeQry$FluxInfo
//  JTimeQry_OnCreateRunnable_1 = interface; //com.sangfor.ssl.service.timeqry.TimeQry$OnCreateRunnable$1
  JTimeQry_OnCreateRunnable = interface; //com.sangfor.ssl.service.timeqry.TimeQry$OnCreateRunnable
  JTimeQry = interface; //com.sangfor.ssl.service.timeqry.TimeQry
  JTimeQryException = interface; //com.sangfor.ssl.service.timeqry.TimeQryException
  JTQProtocol = interface; //com.sangfor.ssl.service.timeqry.TQProtocol
  JCommon_AssertionFailed = interface; //com.sangfor.ssl.service.utils.Common$AssertionFailed
  JCommon = interface; //com.sangfor.ssl.service.utils.Common
  JIGeneral = interface; //com.sangfor.ssl.service.utils.IGeneral
  JLog = interface; //com.sangfor.ssl.service.utils.logger.Log
  JHttpConnect_TrustAnyHostnameVerifier = interface; //com.sangfor.ssl.service.utils.network.HttpConnect$TrustAnyHostnameVerifier
  JHttpConnect_TrustAnyTrustManager = interface; //com.sangfor.ssl.service.utils.network.HttpConnect$TrustAnyTrustManager
  JHttpConnect = interface; //com.sangfor.ssl.service.utils.network.HttpConnect
  JHttpHeadReader = interface; //com.sangfor.ssl.service.utils.network.HttpHeadReader
  JXmlReader = interface; //com.sangfor.ssl.service.utils.xml.XmlReader
  JSFException = interface; //com.sangfor.ssl.SFException

// ===== Interface declarations =====

  JVpnCommonClass = interface(JObjectClass)
  ['{1F3D442B-5C24-4080-BE62-10290DA38E88}']
    { static Property Methods }

    { static Methods }
    {class} function init: JVpnCommon; cdecl;
    {class} function ipToLong(ip: JString): Int64; cdecl;
    {class} function longToIP(sb: Int64): JString; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/common/VpnCommon')]
  JVpnCommon = interface(JObject)
  ['{5925020B-918D-429B-B9AD-85206812938D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJVpnCommon = class(TJavaGenericImport<JVpnCommonClass, JVpnCommon>) end;

  JSangforAuthForward_CallbackHandlerClass = interface(JObjectClass)
  ['{6DB5C186-9057-403F-A803-C0A35F77D1C8}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/easyapp/SangforAuthForward$CallbackHandler')]
  JSangforAuthForward_CallbackHandler = interface(JObject)
  ['{20D31754-0378-4252-BE7C-378E37F349C1}']
    { Property Methods }

    { methods }
    procedure handleMessage(msg: JMessage); cdecl;

    { Property }
  end;

  TJSangforAuthForward_CallbackHandler = class(TJavaGenericImport<JSangforAuthForward_CallbackHandlerClass, JSangforAuthForward_CallbackHandler>) end;

  JSangforAuthForwardClass = interface(JObjectClass)
  ['{121AAF73-A04E-48DD-A66C-25F70D960A42}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JSangforAuthForward; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/easyapp/SangforAuthForward')]
  JSangforAuthForward = interface(JObject)
  ['{C4491B20-CA8D-49FB-9A5D-A66E573A116D}']
    { Property Methods }

    { methods }
    procedure init(context: JContext; delegate: JIVpnDelegate); cdecl;
    function vpnInit(host: Int64; port: Integer): Boolean; cdecl;
    function setLoginParam(key: JString; value: JString): Boolean; cdecl;
    function vpnLogin(authType: Integer): Boolean; cdecl;
    function vpnCancelLogin: Boolean; cdecl;
    function vpnLogout: Boolean; cdecl;
    function vpnQuit: Boolean; cdecl;
    function vpnQueryStatus: Integer; cdecl;
    function vpnQueryHardID: JString; cdecl;
    function vpnGetRndCode: Integer; cdecl;
    function vpnGeterr: JString; cdecl;
    function vpnGetVersion: JString; cdecl;
    procedure setCryptFileRule(rules: JString); cdecl;
    procedure setExCrptFileRule(rules: JString); cdecl;

    { Property }
  end;

  TJSangforAuthForward = class(TJavaGenericImport<JSangforAuthForwardClass, JSangforAuthForward>) end;

  JSangforNbAuthClass = interface(JObjectClass)
  ['{722CD21F-72C1-4744-A5AE-764D8898629F}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JSangforNbAuth; cdecl; overload;
//    {class} function getInstance: JSangforAuthForward; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/easyapp/SangforNbAuth')]
  JSangforNbAuth = interface(JObject)
  ['{4DB7B07A-307F-4DDF-815F-E7ACADAB36FE}']
    { Property Methods }

    { methods }
    procedure init(context: JContext; delegate: JIVpnDelegate); cdecl;
    function vpnInit(host: Int64; port: Integer): Boolean; cdecl;
    function setLoginParam(key: JString; value: JString): Boolean; cdecl;
    function vpnLogin(authType: Integer): Boolean; cdecl;
    function vpnCancelLogin: Boolean; cdecl;
    function vpnLogout: Boolean; cdecl;
    function vpnQuit: Boolean; cdecl;
    function vpnQueryStatus: Integer; cdecl;
    function vpnQueryHardID: JString; cdecl;
    function vpnGetRndCode: Integer; cdecl;
    function vpnGeterr: JString; cdecl;
    function vpnGetVersion: JString; cdecl;
    function vpnL3vpnStart: Boolean; cdecl;

    { Property }
  end;

  TJSangforNbAuth = class(TJavaGenericImport<JSangforNbAuthClass, JSangforNbAuth>) end;

//  JAuthController_1Class = interface(JObjectClass)
//  ['{BEFBE5C7-400F-423D-899F-580343B2C040}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/easyl3vpn/AuthController$1')]
//  JAuthController_1 = interface(JObject)
//  ['{CDF72D08-C0AE-4CB3-A091-10C1642EEA21}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(msg: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJAuthController_1 = class(TJavaGenericImport<JAuthController_1Class, JAuthController_1>) end;

//  JAuthController_2Class = interface(JObjectClass)
//  ['{47BF3733-17E1-45D9-9465-AE767053596D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/easyl3vpn/AuthController$2')]
//  JAuthController_2 = interface(JObject)
//  ['{1CBD737C-BE55-4774-9A6D-145F6E2E4317}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJAuthController_2 = class(TJavaGenericImport<JAuthController_2Class, JAuthController_2>) end;

//  JAuthController_3Class = interface(JObjectClass)
//  ['{8E4EAA52-E133-4C6F-B0B9-D91B121A7E3C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/easyl3vpn/AuthController$3')]
//  JAuthController_3 = interface(JObject)
//  ['{961E7646-258A-4E30-BF3A-F407C589EF0D}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJAuthController_3 = class(TJavaGenericImport<JAuthController_3Class, JAuthController_3>) end;

//  JAuthController_4Class = interface(JObjectClass)
//  ['{0E1A42B4-D89D-45B9-BE44-3F432294E033}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/easyl3vpn/AuthController$4')]
//  JAuthController_4 = interface(JObject)
//  ['{522B73C5-04F6-4B24-8C38-45AE588E8066}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJAuthController_4 = class(TJavaGenericImport<JAuthController_4Class, JAuthController_4>) end;

//  JAuthController_AuthTask_1Class = interface(JObjectClass)
//  ['{AA7F62E3-2350-485E-947D-12F4FF70D937}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/easyl3vpn/AuthController$AuthTask$1')]
//  JAuthController_AuthTask_1 = interface(JObject)
//  ['{1A864AD2-3F9D-46E6-9B6D-6DF8CD616755}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJAuthController_AuthTask_1 = class(TJavaGenericImport<JAuthController_AuthTask_1Class, JAuthController_AuthTask_1>) end;

  JAuthController_AuthTaskClass = interface(JObjectClass)
  ['{21D55EF5-C31F-4899-AC55-BF8D6D68A4F7}']
    { static Property Methods }

    { static Methods }
    {class} function init(auth: JAuthController; P2: JAuthentication): JAuthController_AuthTask; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/easyl3vpn/AuthController$AuthTask')]
  JAuthController_AuthTask = interface(JObject)
  ['{23FF8F26-5399-4801-9026-519B15AE19A7}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAuthController_AuthTask = class(TJavaGenericImport<JAuthController_AuthTaskClass, JAuthController_AuthTask>) end;

  JAuthController_CancelTaskClass = interface(JObjectClass)
  ['{D486F644-9617-4556-9F21-D67A1AE4340C}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/easyl3vpn/AuthController$CancelTask')]
  JAuthController_CancelTask = interface(JObject)
  ['{E9490CE3-F6B7-4265-AD60-077E7DFE7C3D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAuthController_CancelTask = class(TJavaGenericImport<JAuthController_CancelTaskClass, JAuthController_CancelTask>) end;

  JAuthControllerClass = interface(JObjectClass)
  ['{A958D73E-AB9A-4BDD-B8BD-878BE74733BD}']
    { static Property Methods }
    {class} function _GetL3VPN_LOGOUT: Integer;
    {class} function _GetACTIVE_LOGOUT: Integer;

    { static Methods }
    {class} function getInstance: JAuthController; cdecl;
    {class} procedure quit; cdecl;

    { static Property }
    {class} property L3VPN_LOGOUT: Integer read _GetL3VPN_LOGOUT;
    {class} property ACTIVE_LOGOUT: Integer read _GetACTIVE_LOGOUT;
  end;

  [JavaSignature('com/sangfor/ssl/easyl3vpn/AuthController')]
  JAuthController = interface(JObject)
  ['{E18A6DAD-28CD-44A4-B9C6-FF8235577DC7}']
    { Property Methods }

    { methods }
    procedure &register(activity: JActivity; handler: JHandler); cdecl;
    procedure doCancelAuth; cdecl;
    procedure doPasswordAuth(userName: JString; password: JString; checksum: JString); cdecl;
    procedure doPasswordAuthRelogin(userName: JString; password: JString; checksum: JString); cdecl;
    procedure doCertAuth(certName: JString; certPasswd: JString); cdecl;
    procedure doSmsAuth(smsCode: JString); cdecl;
    procedure doTokenAuth(token: JString); cdecl;
    procedure doChallengeAuth(challenge: JString); cdecl;
    procedure doHardIdAuth(failedAndCollect: Boolean); cdecl;
    procedure doRegetSms; cdecl;
    function downloadConf: Boolean; cdecl;
    function updateTwfid: Boolean; cdecl;
    procedure svpnLogout(logoutType: Integer); cdecl;
    procedure doPreAuth; cdecl;
    procedure destoryObject; cdecl;
    procedure bindTimeQueryService; cdecl;
    procedure setReloginOk; cdecl;
    procedure unBindTimeQueryService; cdecl;
    function doGetRndCode: Integer; cdecl;
    function isReLoging: Boolean; cdecl;

    { Property }
  end;

  TJAuthController = class(TJavaGenericImport<JAuthControllerClass, JAuthController>) end;

//  JL3vpnController_1Class = interface(JObjectClass)
//  ['{8E6581E5-E76E-4C37-B36E-A8E30CE5677F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/easyl3vpn/L3vpnController$1')]
//  JL3vpnController_1 = interface(JObject)
//  ['{245F6AC0-A5BD-4BC7-B7DF-1E4647936ACA}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(msg: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJL3vpnController_1 = class(TJavaGenericImport<JL3vpnController_1Class, JL3vpnController_1>) end;

//  JL3vpnController_2Class = interface(JObjectClass)
//  ['{8ADFDE26-A976-469B-A473-F18B64FAA7AB}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/easyl3vpn/L3vpnController$2')]
//  JL3vpnController_2 = interface(JObject)
//  ['{190F648F-C3CB-40E8-9D27-086FDBAA5393}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJL3vpnController_2 = class(TJavaGenericImport<JL3vpnController_2Class, JL3vpnController_2>) end;

  JL3vpnControllerClass = interface(JObjectClass)
  ['{C4636718-D344-4495-A4B8-23E6CDAA9DD5}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JL3vpnController; cdecl;
    {class} procedure quit; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/easyl3vpn/L3vpnController')]
  JL3vpnController = interface(JObject)
  ['{AB5D0128-EF34-4FAE-90E0-8F44ACE8BA81}']
    { Property Methods }

    { methods }
    procedure &register(activity: JActivity; handler: JHandler); cdecl;
    procedure onL3vpn; cdecl;
    procedure startL3vpnService; cdecl;

    { Property }
  end;

  TJL3vpnController = class(TJavaGenericImport<JL3vpnControllerClass, JL3vpnController>) end;

  JSangforL3vpnAuth_CallbackHandlerClass = interface(JObjectClass)
  ['{9CC19384-C634-44C1-A087-C3785A8F1C3C}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/easyl3vpn/SangforL3vpnAuth$CallbackHandler')]
  JSangforL3vpnAuth_CallbackHandler = interface(JObject)
  ['{0757C284-0A7E-4A3D-9D9C-0C09671694B6}']
    { Property Methods }

    { methods }
    procedure handleMessage(msg: JMessage); cdecl;

    { Property }
  end;

  TJSangforL3vpnAuth_CallbackHandler = class(TJavaGenericImport<JSangforL3vpnAuth_CallbackHandlerClass, JSangforL3vpnAuth_CallbackHandler>) end;

  JSangforL3vpnAuth_CheckUpdateThreadClass = interface(JObjectClass)
  ['{7E5881A4-410A-48CB-BEC0-F58D69F0E1D7}']
    { static Property Methods }

    { static Methods }
    {class} function init(handler: JSangforL3vpnAuth; P2: JHandler): JSangforL3vpnAuth_CheckUpdateThread; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/easyl3vpn/SangforL3vpnAuth$CheckUpdateThread')]
  JSangforL3vpnAuth_CheckUpdateThread = interface(JObject)
  ['{FC3C35A0-38AB-4337-8AF6-1FACB9B96F55}']
    { Property Methods }

    { methods }
    procedure run; cdecl;

    { Property }
  end;

  TJSangforL3vpnAuth_CheckUpdateThread = class(TJavaGenericImport<JSangforL3vpnAuth_CheckUpdateThreadClass, JSangforL3vpnAuth_CheckUpdateThread>) end;

  JSangforL3vpnAuthClass = interface(JObjectClass)
  ['{F0227391-B398-4D2C-8868-11BC74B7FFFF}']
    { static Property Methods }
    {class} function _GetMSG_AUTH_RESULT_CALLBACK: Integer;
    {class} function _GetMSG_L3VPN_RESULT_CALLBACK: Integer;
    {class} function _GetMSG_RND_CODE_CALLBACK: Integer;
    {class} function _GetMSG_RELOGIN_RESULR_CALLBACK: Integer;
    {class} function _GetMSG_L3VPN_RELOGIN: Integer;
    {class} function _GetCONN_SERVICE_TIMEOUT: Integer;

    { static Methods }
    {class} function getInstance: JSangforL3vpnAuth; cdecl;

    { static Property }
    {class} property MSG_AUTH_RESULT_CALLBACK: Integer read _GetMSG_AUTH_RESULT_CALLBACK;
    {class} property MSG_L3VPN_RESULT_CALLBACK: Integer read _GetMSG_L3VPN_RESULT_CALLBACK;
    {class} property MSG_RND_CODE_CALLBACK: Integer read _GetMSG_RND_CODE_CALLBACK;
    {class} property MSG_RELOGIN_RESULR_CALLBACK: Integer read _GetMSG_RELOGIN_RESULR_CALLBACK;
    {class} property MSG_L3VPN_RELOGIN: Integer read _GetMSG_L3VPN_RELOGIN;
    {class} property CONN_SERVICE_TIMEOUT: Integer read _GetCONN_SERVICE_TIMEOUT;
  end;

  [JavaSignature('com/sangfor/ssl/easyl3vpn/SangforL3vpnAuth')]
  JSangforL3vpnAuth = interface(JObject)
  ['{51D99750-9346-4EBF-81E0-04737B723A30}']
    { Property Methods }
    function _GetauthBundle: JBundle;
    procedure _SetauthBundle(aauthBundle: JBundle);

    { methods }
    procedure init(activity: JContext; delegate: JIVpnDelegate); cdecl;
    function vpnInit(host: Int64; port: Integer): Boolean; cdecl;
    function setLoginParam(key: JString; value: JString): Boolean; cdecl;
    function vpnLogin(authType: Integer): Boolean; cdecl;
    procedure vpnRelogin(authType: Integer); cdecl;
    function vpnLogout: Boolean; cdecl;
    function vpnCancelLogin: Boolean; cdecl;
    function vpnQuit: Boolean; cdecl;
    function vpnL3vpnStart: Boolean; cdecl;
    procedure vpnSetError(err: JString); cdecl;
    function vpnGeterr: JString; cdecl;
    procedure vpnSetStatus(status: Integer); cdecl;
    function vpnQueryStatus: Integer; cdecl;
    function vpnGetRndCode: Integer; cdecl;

    { Property }
    property authBundle: JBundle read _GetauthBundle write _SetauthBundle;
  end;

  TJSangforL3vpnAuth = class(TJavaGenericImport<JSangforL3vpnAuthClass, JSangforL3vpnAuth>) end;

  JISangforAuthClass = interface(JObjectClass)
  ['{B6E9A480-0379-4CA2-9624-BA3A6A182CA4}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/ISangforAuth')]
  JISangforAuth = interface(IJavaInstance)
  ['{8B5ECB2A-8CA4-463D-A63B-A234F178A6BD}']
    { Property Methods }

    { methods }
    procedure init(P1: JContext; P2: JIVpnDelegate); cdecl;
    function vpnInit(P1: Int64; P2: Integer): Boolean; cdecl;
    function setLoginParam(P1: JString; P2: JString): Boolean; cdecl;
    function vpnLogin(P1: Integer): Boolean; cdecl;
    function vpnLogout: Boolean; cdecl;
    function vpnCancelLogin: Boolean; cdecl;
    function vpnQuit: Boolean; cdecl;
    function vpnL3vpnStart: Boolean; cdecl;
    function vpnGeterr: JString; cdecl;
    function vpnQueryStatus: Integer; cdecl;
    function vpnGetRndCode: Integer; cdecl;

    { Property }
  end;

  TJISangforAuth = class(TJavaGenericImport<JISangforAuthClass, JISangforAuth>) end;

  JIVpnDelegateClass = interface(JObjectClass)
  ['{07E1360F-D7BD-4AE3-92B2-B88DF26F2577}']
    { static Property Methods }
    {class} function _GetPASSWORD_AUTH_USERNAME: JString;
    {class} function _GetPASSWORD_AUTH_PASSWORD: JString;
    {class} function _GetHARDID_AUTH_HARDID: JString;
    {class} function _GetCERT_PASSWORD: JString;
    {class} function _GetCERT_P12_FILE_NAME: JString;
    {class} function _GetSMS_AUTH_CODE: JString;
    {class} function _GetSET_RND_CODE_STR: JString;
    {class} function _GetAUTH_CONNECT_TIME_OUT: JString;
    {class} function _GetAUTO_LOGIN_OFF_KEY: JString;
    {class} function _GetAUTH_TYPE_INIT: Integer;
    {class} function _GetAUTH_TYPE_FAIL: Integer;
    {class} function _GetAUTH_TYPE_CERTIFICATE: Integer;
    {class} function _GetAUTH_TYPE_PASSWORD: Integer;
    {class} function _GetAUTH_TYPE_SMS: Integer;
    {class} function _GetAUTH_TYPE_SMS1: Integer;
    {class} function _GetAUTH_TYPE_HARDID: Integer;
    {class} function _GetAUTH_TYPE_NONE: Integer;
    {class} function _GetRESULT_VPN_L3VPN_FAIL: Integer;
    {class} function _GetRESULT_VPN_INIT_FAIL: Integer;
    {class} function _GetRESULT_VPN_AUTH_FAIL: Integer;
    {class} function _GetRESULT_VPN_NONE: Integer;
    {class} function _GetRESULT_VPN_INIT_SUCCESS: Integer;
    {class} function _GetRESULT_VPN_AUTH_SUCCESS: Integer;
    {class} function _GetRESULT_VPN_AUTH_LOGOUT: Integer;
    {class} function _GetRESULT_VPN_AUTH_CANCEL: Integer;
    {class} function _GetRESULT_VPN_L3VPN_SUCCESS: Integer;
    {class} function _GetRESULT_VPN_OTHER: Integer;
    {class} function _GetVPN_START_RELOGIN: Integer;
    {class} function _GetVPN_END_RELOGIN: Integer;
    {class} function _GetVPN_RELOGIN_SUCCESS: Integer;
    {class} function _GetVPN_RELOGIN_FAILED: Integer;
    {class} function _GetVPN_STATUS_UNSTART: Integer;
    {class} function _GetVPN_STATUS_INITING: Integer;
    {class} function _GetVPN_STATUS_INIT_OK: Integer;
    {class} function _GetVPN_STATUS_LOGINING: Integer;
    {class} function _GetVPN_STATUS_RELOGIN: Integer;
    {class} function _GetVPN_STATUS_AUTH_OK: Integer;
    {class} function _GetVPN_STATUS_EXITING: Integer;
    {class} function _GetVPN_STATUS_ERR_THREAD: Integer;
    {class} function _GetVPN_STATUS_LOGOUT: Integer;
    {class} function _GetVPN_STATUS_TIME_OUT: Integer;
    {class} function _GetVPN_STATUS_QUERY_ERR: Integer;
    {class} function _GetVPN_STATUS_CANCELING: Integer;
    {class} function _GetVPN_STATUS_ONLINE: Integer;
    {class} function _GetVPN_STATUS_OFFLINE: Integer;
    {class} function _GetVPN_OTHER_RELOGIN_FAIL: Integer;
    {class} function _GetREQUEST_L3VPNSERVICE: Integer;

    { static Methods }

    { static Property }
    {class} property PASSWORD_AUTH_USERNAME: JString read _GetPASSWORD_AUTH_USERNAME;
    {class} property PASSWORD_AUTH_PASSWORD: JString read _GetPASSWORD_AUTH_PASSWORD;
    {class} property HARDID_AUTH_HARDID: JString read _GetHARDID_AUTH_HARDID;
    {class} property CERT_PASSWORD: JString read _GetCERT_PASSWORD;
    {class} property CERT_P12_FILE_NAME: JString read _GetCERT_P12_FILE_NAME;
    {class} property SMS_AUTH_CODE: JString read _GetSMS_AUTH_CODE;
    {class} property SET_RND_CODE_STR: JString read _GetSET_RND_CODE_STR;
    {class} property AUTH_CONNECT_TIME_OUT: JString read _GetAUTH_CONNECT_TIME_OUT;
    {class} property AUTO_LOGIN_OFF_KEY: JString read _GetAUTO_LOGIN_OFF_KEY;
    {class} property AUTH_TYPE_INIT: Integer read _GetAUTH_TYPE_INIT;
    {class} property AUTH_TYPE_FAIL: Integer read _GetAUTH_TYPE_FAIL;
    {class} property AUTH_TYPE_CERTIFICATE: Integer read _GetAUTH_TYPE_CERTIFICATE;
    {class} property AUTH_TYPE_PASSWORD: Integer read _GetAUTH_TYPE_PASSWORD;
    {class} property AUTH_TYPE_SMS: Integer read _GetAUTH_TYPE_SMS;
    {class} property AUTH_TYPE_SMS1: Integer read _GetAUTH_TYPE_SMS1;
    {class} property AUTH_TYPE_HARDID: Integer read _GetAUTH_TYPE_HARDID;
    {class} property AUTH_TYPE_NONE: Integer read _GetAUTH_TYPE_NONE;
    {class} property RESULT_VPN_L3VPN_FAIL: Integer read _GetRESULT_VPN_L3VPN_FAIL;
    {class} property RESULT_VPN_INIT_FAIL: Integer read _GetRESULT_VPN_INIT_FAIL;
    {class} property RESULT_VPN_AUTH_FAIL: Integer read _GetRESULT_VPN_AUTH_FAIL;
    {class} property RESULT_VPN_NONE: Integer read _GetRESULT_VPN_NONE;
    {class} property RESULT_VPN_INIT_SUCCESS: Integer read _GetRESULT_VPN_INIT_SUCCESS;
    {class} property RESULT_VPN_AUTH_SUCCESS: Integer read _GetRESULT_VPN_AUTH_SUCCESS;
    {class} property RESULT_VPN_AUTH_LOGOUT: Integer read _GetRESULT_VPN_AUTH_LOGOUT;
    {class} property RESULT_VPN_AUTH_CANCEL: Integer read _GetRESULT_VPN_AUTH_CANCEL;
    {class} property RESULT_VPN_L3VPN_SUCCESS: Integer read _GetRESULT_VPN_L3VPN_SUCCESS;
    {class} property RESULT_VPN_OTHER: Integer read _GetRESULT_VPN_OTHER;
    {class} property VPN_START_RELOGIN: Integer read _GetVPN_START_RELOGIN;
    {class} property VPN_END_RELOGIN: Integer read _GetVPN_END_RELOGIN;
    {class} property VPN_RELOGIN_SUCCESS: Integer read _GetVPN_RELOGIN_SUCCESS;
    {class} property VPN_RELOGIN_FAILED: Integer read _GetVPN_RELOGIN_FAILED;
    {class} property VPN_STATUS_UNSTART: Integer read _GetVPN_STATUS_UNSTART;
    {class} property VPN_STATUS_INITING: Integer read _GetVPN_STATUS_INITING;
    {class} property VPN_STATUS_INIT_OK: Integer read _GetVPN_STATUS_INIT_OK;
    {class} property VPN_STATUS_LOGINING: Integer read _GetVPN_STATUS_LOGINING;
    {class} property VPN_STATUS_RELOGIN: Integer read _GetVPN_STATUS_RELOGIN;
    {class} property VPN_STATUS_AUTH_OK: Integer read _GetVPN_STATUS_AUTH_OK;
    {class} property VPN_STATUS_EXITING: Integer read _GetVPN_STATUS_EXITING;
    {class} property VPN_STATUS_ERR_THREAD: Integer read _GetVPN_STATUS_ERR_THREAD;
    {class} property VPN_STATUS_LOGOUT: Integer read _GetVPN_STATUS_LOGOUT;
    {class} property VPN_STATUS_TIME_OUT: Integer read _GetVPN_STATUS_TIME_OUT;
    {class} property VPN_STATUS_QUERY_ERR: Integer read _GetVPN_STATUS_QUERY_ERR;
    {class} property VPN_STATUS_CANCELING: Integer read _GetVPN_STATUS_CANCELING;
    {class} property VPN_STATUS_ONLINE: Integer read _GetVPN_STATUS_ONLINE;
    {class} property VPN_STATUS_OFFLINE: Integer read _GetVPN_STATUS_OFFLINE;
    {class} property VPN_OTHER_RELOGIN_FAIL: Integer read _GetVPN_OTHER_RELOGIN_FAIL;
    {class} property REQUEST_L3VPNSERVICE: Integer read _GetREQUEST_L3VPNSERVICE;
  end;

  [JavaSignature('com/sangfor/ssl/IVpnDelegate')]
  JIVpnDelegate = interface(IJavaInstance)
  ['{2FA169DF-7C71-45C5-AED1-BB7637B05FD4}']
    { Property Methods }

    { methods }
    procedure vpnCallback(P1: Integer; P2: Integer); cdecl;
    procedure reloginCallback(P1: Integer; P2: Integer); cdecl;
    procedure vpnRndCodeCallback(P1: TJavaArray<Byte>); cdecl;

    { Property }
  end;

  TJIVpnDelegate = class(TJavaGenericImport<JIVpnDelegateClass, JIVpnDelegate>) end;

//  JIPRcManager_1Class = interface(JObjectClass)
//  ['{DCDE79E8-F2AB-4801-A50E-1E1F1C6D0E54}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/l3vpn/service/IPRcManager$1')]
//  JIPRcManager_1 = interface(JObject)
//  ['{F3FBCD2D-81F3-4D00-8D66-E567518EB566}']
//    { Property Methods }
//
//    { methods }
//    function compare(o1: JObject; o2: JObject): Integer; cdecl;
//
//    { Property }
//  end;

//  TJIPRcManager_1 = class(TJavaGenericImport<JIPRcManager_1Class, JIPRcManager_1>) end;

  JIPRcManagerClass = interface(JObjectClass)
  ['{500923A4-5C13-416F-9DF8-890E829FD498}']
    { static Property Methods }

    { static Methods }
    {class} function init: JIPRcManager; cdecl;
    {class} function getInstance: JIPRcManager; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/l3vpn/service/IPRcManager')]
  JIPRcManager = interface(JObject)
  ['{40094A07-9356-4685-8264-F1D160CFB85A}']
    { Property Methods }

    { methods }
    procedure AddRoutes(builder: JVpnService_Builder; aexcept: JArrayList); cdecl;
    procedure AddDnsRoutes(builder: JVpnService_Builder; dnsStr: JString); cdecl;
    function isL3vpnResouces(dstIp: JString; port: Integer; atype: Integer): Boolean; cdecl;
    procedure clearRecorder; cdecl;

    { Property }
  end;

  TJIPRcManager = class(TJavaGenericImport<JIPRcManagerClass, JIPRcManager>) end;

  JServiceConstantClass = interface(JObjectClass)
  ['{C39849BF-EB77-4612-AF11-7E17F9E6272E}']
    { static Property Methods }
    {class} function _GetSERVICE_INIT_FAILED: Integer;
    {class} function _GetSERVICE_START_FAILED: Integer;
    {class} function _GetSERVICE_STOP_FAILED: Integer;
    {class} function _GetSERVICE_IP_CONFLIC: Integer;
    {class} function _GetSERVICE_IP_SHORTAGE: Integer;
    {class} function _GetSERVICE_IP_KICK: Integer;
    {class} function _GetSERVICE_IP_OTHER: Integer;
    {class} function _GetSERVICE_IP_QUIT: Integer;
    {class} function _GetDEVICE_NO_SUPORT: Integer;
    {class} function _GetUNKOWN_ERROR: Integer;
    {class} function _GetSERVICE_START_OK: Integer;
    {class} function _GetSERVICE_STOP_OK: Integer;
    {class} function _GetTUN_MTU: Integer;

    { static Methods }
    {class} function init: JServiceConstant; cdecl;

    { static Property }
    {class} property SERVICE_INIT_FAILED: Integer read _GetSERVICE_INIT_FAILED;
    {class} property SERVICE_START_FAILED: Integer read _GetSERVICE_START_FAILED;
    {class} property SERVICE_STOP_FAILED: Integer read _GetSERVICE_STOP_FAILED;
    {class} property SERVICE_IP_CONFLIC: Integer read _GetSERVICE_IP_CONFLIC;
    {class} property SERVICE_IP_SHORTAGE: Integer read _GetSERVICE_IP_SHORTAGE;
    {class} property SERVICE_IP_KICK: Integer read _GetSERVICE_IP_KICK;
    {class} property SERVICE_IP_OTHER: Integer read _GetSERVICE_IP_OTHER;
    {class} property SERVICE_IP_QUIT: Integer read _GetSERVICE_IP_QUIT;
    {class} property DEVICE_NO_SUPORT: Integer read _GetDEVICE_NO_SUPORT;
    {class} property UNKOWN_ERROR: Integer read _GetUNKOWN_ERROR;
    {class} property SERVICE_START_OK: Integer read _GetSERVICE_START_OK;
    {class} property SERVICE_STOP_OK: Integer read _GetSERVICE_STOP_OK;
    {class} property TUN_MTU: Integer read _GetTUN_MTU;
  end;

  [JavaSignature('com/sangfor/ssl/l3vpn/service/ServiceConstant')]
  JServiceConstant = interface(JObject)
  ['{35A08CC0-5C9D-4C2B-9F60-72B2E6B90972}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJServiceConstant = class(TJavaGenericImport<JServiceConstantClass, JServiceConstant>) end;

  JServiceExceptionClass = interface(JObjectClass)
  ['{9D7BA20E-322B-476D-B536-0CB24E5F2AC5}']
    { static Property Methods }

    { static Methods }
    {class} function init(error: Integer; msg: JString): JServiceException; cdecl; overload;
    {class} function init: JServiceException; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/l3vpn/service/ServiceException')]
  JServiceException = interface(JObject)
  ['{A4A3038D-2DC1-4849-8294-F85EF420DE90}']
    { Property Methods }

    { methods }
    function error: Integer; cdecl;

    { Property }
  end;

  TJServiceException = class(TJavaGenericImport<JServiceExceptionClass, JServiceException>) end;

  JSvpnServiceClass = interface(JObjectClass)
  ['{6C6D640E-73C1-4BBE-9799-819FB8446D8A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSvpnService; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/l3vpn/service/SvpnService')]
  JSvpnService = interface(JObject)
  ['{04BD4510-FA23-4B0F-855D-D6F22B8DBEAC}']
    { Property Methods }

    { methods }
    procedure onCreate; cdecl;
    function onStartCommand(intent: JIntent; flags: Integer; startId: Integer): Integer; cdecl;
    procedure onRevoke; cdecl;
    procedure onDestroy; cdecl;

    { Property }
  end;

  TJSvpnService = class(TJavaGenericImport<JSvpnServiceClass, JSvpnService>) end;

  JSvpnServiceManagerClass = interface(JObjectClass)
  ['{E3C5F4DD-34F3-46FD-8179-4AC2F41F8675}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSvpnServiceManager; cdecl;
    {class} function getInstance: JSvpnServiceManager; cdecl;
    {class} procedure destroy; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/l3vpn/service/SvpnServiceManager')]
  JSvpnServiceManager = interface(JObject)
  ['{1ABA33DF-1B2A-43B1-A857-5F2A2503417F}']
    { Property Methods }

    { methods }
    procedure init(handler: JHandler); cdecl;
    function prepare(context: JContext): JIntent; cdecl;
    procedure setVpnServiceInfo(service: JSvpnService; builder: JVpnService_Builder); cdecl;
    procedure startSvpnService(context: JContext); cdecl;
    function checkVpnServiceEnv: Boolean; cdecl;
    procedure stopSvpnSerice(context: JContext); cdecl;
    function isServiceRun: Boolean; cdecl;
    procedure start; cdecl;
    function stopThread: Integer; cdecl;
    procedure stop; cdecl;
    function getVpnHost: JString; cdecl;
    function InstallTunDev(virIp: JString): Integer; cdecl;
    procedure addDnsRoute; cdecl;
    function updateVirtualIp(virIp: JString): Integer; cdecl;
    procedure protectFd(fd: Integer); cdecl;
    function isL3vpnResouces(host: JString; port: Integer; atype: Integer): Integer; cdecl;
    procedure notifyUser(error: Integer; msg: JString); cdecl;
    function getSession: JString; cdecl;

    { Property }
  end;

  TJSvpnServiceManager = class(TJavaGenericImport<JSvpnServiceManagerClass, JSvpnServiceManager>) end;

  JBase64_CoderClass = interface(JObjectClass)
  ['{E782A073-FCEC-4D4D-9ABD-05486A0C26FE}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/rdp/utils/crypto/Base64$Coder')]
  JBase64_Coder = interface(JObject)
  ['{086EB4FD-2F59-4EBE-88AC-47482EC92FF3}']
    { Property Methods }
    function _Getoutput: TJavaArray<Byte>;
    procedure _Setoutput(aoutput: TJavaArray<Byte>);
    function _Getop: Integer;
    procedure _Setop(aop: Integer);

    { methods }
    function process(P1: TJavaArray<Byte>; P2: Integer; P3: Integer; P4: Boolean): Boolean; cdecl;
    function maxOutputSize(P1: Integer): Integer; cdecl;

    { Property }
    property output: TJavaArray<Byte> read _Getoutput write _Setoutput;
    property op: Integer read _Getop write _Setop;
  end;

  TJBase64_Coder = class(TJavaGenericImport<JBase64_CoderClass, JBase64_Coder>) end;

  JBase64_DecoderClass = interface(JObjectClass)
  ['{EFAE4599-28C5-42EE-BEDB-2C19BC98AADB}']
    { static Property Methods }

    { static Methods }
    {class} function init(flags: Integer; output: TJavaArray<Byte>): JBase64_Decoder; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/rdp/utils/crypto/Base64$Decoder')]
  JBase64_Decoder = interface(JObject)
  ['{62C57519-BA63-4847-920E-F4B660F9EA3C}']
    { Property Methods }

    { methods }
    function maxOutputSize(len: Integer): Integer; cdecl;
    function process(input: TJavaArray<Byte>; offset: Integer; len: Integer; finish: Boolean): Boolean; cdecl;

    { Property }
  end;

  TJBase64_Decoder = class(TJavaGenericImport<JBase64_DecoderClass, JBase64_Decoder>) end;

  JBase64_EncoderClass = interface(JObjectClass)
  ['{C203F4C2-F16C-47A1-8D5D-5233401B4E0C}']
    { static Property Methods }
    {class} function _GetLINE_GROUPS: Integer;

    { static Methods }
    {class} function init(flags: Integer; output: TJavaArray<Byte>): JBase64_Encoder; cdecl;

    { static Property }
    {class} property LINE_GROUPS: Integer read _GetLINE_GROUPS;
  end;

  [JavaSignature('com/sangfor/ssl/rdp/utils/crypto/Base64$Encoder')]
  JBase64_Encoder = interface(JObject)
  ['{76D2046D-CE86-4A19-8AA7-D2E2FA0FD7A8}']
    { Property Methods }
    function _Getdo_padding: Boolean;
    procedure _Setdo_padding(ado_padding: Boolean);
    function _Getdo_newline: Boolean;
    procedure _Setdo_newline(ado_newline: Boolean);
    function _Getdo_cr: Boolean;
    procedure _Setdo_cr(ado_cr: Boolean);

    { methods }
    function maxOutputSize(len: Integer): Integer; cdecl;
    function process(input: TJavaArray<Byte>; offset: Integer; len: Integer; finish: Boolean): Boolean; cdecl;

    { Property }
    property do_padding: Boolean read _Getdo_padding write _Setdo_padding;
    property do_newline: Boolean read _Getdo_newline write _Setdo_newline;
    property do_cr: Boolean read _Getdo_cr write _Setdo_cr;
  end;

  TJBase64_Encoder = class(TJavaGenericImport<JBase64_EncoderClass, JBase64_Encoder>) end;

  JBase64Class = interface(JObjectClass)
  ['{52AC135B-19F9-4EFA-85F4-53640C3C80A6}']
    { static Property Methods }
    {class} function _GetDEFAULT: Integer;
    {class} function _GetNO_PADDING: Integer;
    {class} function _GetNO_WRAP: Integer;
    {class} function _GetCRLF: Integer;
    {class} function _GetURL_SAFE: Integer;
    {class} function _GetNO_CLOSE: Integer;

    { static Methods }
    {class} function decode(flags: JString; P2: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function decode(flags: TJavaArray<Byte>; P2: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function decode(offset: TJavaArray<Byte>; len: Integer; flags: Integer; decoder: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function encodeToString(flags: TJavaArray<Byte>; e: Integer): JString; cdecl; overload;
    {class} function encodeToString(offset: TJavaArray<Byte>; len: Integer; flags: Integer; e: Integer): JString; cdecl; overload;
    {class} function encode(flags: TJavaArray<Byte>; P2: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function encode(offset: TJavaArray<Byte>; len: Integer; flags: Integer; encoder: Integer): TJavaArray<Byte>; cdecl; overload;

    { static Property }
    {class} property DEFAULT: Integer read _GetDEFAULT;
    {class} property NO_PADDING: Integer read _GetNO_PADDING;
    {class} property NO_WRAP: Integer read _GetNO_WRAP;
    {class} property CRLF: Integer read _GetCRLF;
    {class} property URL_SAFE: Integer read _GetURL_SAFE;
    {class} property NO_CLOSE: Integer read _GetNO_CLOSE;
  end;

  [JavaSignature('com/sangfor/ssl/rdp/utils/crypto/Base64')]
  JBase64 = interface(JObject)
  ['{115E2284-79F6-4412-9CBB-BF5ED9BBC6C9}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBase64 = class(TJavaGenericImport<JBase64Class, JBase64>) end;

  JCryptoClass = interface(JObjectClass)
  ['{292F76C9-9B05-4D2C-81EA-9AF11BD5E552}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCrypto; cdecl; overload;
    {class} function init(key: JString): JCrypto; cdecl; overload;
    {class} function byteToHex(hex: TJavaArray<Byte>): JString; cdecl;
    {class} function hexToByte(len: JString): TJavaArray<Byte>; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/rdp/utils/crypto/Crypto')]
  JCrypto = interface(JObject)
  ['{9B43A4EE-200B-4188-B295-299C78FDFC62}']
    { Property Methods }

    { methods }
    procedure encrypt(ain: JInputStream; aout: JOutputStream); cdecl; overload;
    function encrypt(plaintext: JString): JString; cdecl; overload;
    procedure decrypt(ain: JInputStream; aout: JOutputStream); cdecl; overload;
    function decrypt(hexCipherText: JString): JString; cdecl; overload;
    function decrypt(ciphertext: TJavaArray<Byte>): JString; cdecl; overload;

    { Property }
  end;

  TJCrypto = class(TJavaGenericImport<JCryptoClass, JCrypto>) end;

  JSangforAuthClass = interface(JObjectClass)
  ['{9FADE294-ACD0-4CFC-8EF7-57C0B247D377}']
    { static Property Methods }
    {class} function _GetAUTH_MODULE_EASYAPP: Integer;
    {class} function _GetAUTH_MODULE_L3VPN: Integer;

    { static Methods }
    {class} function getInstance: JSangforAuth; cdecl;

    { static Property }
    {class} property AUTH_MODULE_EASYAPP: Integer read _GetAUTH_MODULE_EASYAPP;
    {class} property AUTH_MODULE_L3VPN: Integer read _GetAUTH_MODULE_L3VPN;
  end;

  [JavaSignature('com/sangfor/ssl/SangforAuth')]
  JSangforAuth = interface(JObject)
  ['{95116A1E-7876-476A-85F5-F309CFE12EC5}']
    { Property Methods }

    { methods }
    procedure init(context: JContext; delegate: JIVpnDelegate); cdecl; overload;
    function getModuleUsed: Integer; cdecl;
    procedure init(context: JContext; delegate: JIVpnDelegate; useModule: Integer); cdecl; overload;
    function vpnInit(host: Int64; port: Integer): Boolean; cdecl;
    function setLoginParam(key: JString; value: JString): Boolean; cdecl;
    function vpnLogin(authType: Integer): Boolean; cdecl;
    function vpnLogout: Boolean; cdecl;
    function vpnCancelLogin: Boolean; cdecl;
    function vpnQuit: Boolean; cdecl;
    function vpnL3vpnStart: Boolean; cdecl;
    function vpnGeterr: JString; cdecl;
    function vpnQueryStatus: Integer; cdecl;
    function vpnGetRndCode: Integer; cdecl;

    { Property }
  end;

  TJSangforAuth = class(TJavaGenericImport<JSangforAuthClass, JSangforAuth>) end;

  JAuthentication_InvalidFormatExceptionClass = interface(JObjectClass)
  ['{435F34D6-32CF-460E-BD64-E074C42765C6}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/Authentication$InvalidFormatException')]
  JAuthentication_InvalidFormatException = interface(JObject)
  ['{7DFB23AE-A27D-4F80-BA8A-22B62E91E0DC}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAuthentication_InvalidFormatException = class(TJavaGenericImport<JAuthentication_InvalidFormatExceptionClass, JAuthentication_InvalidFormatException>) end;

  JAuthenticationClass = interface(JObjectClass)
  ['{498C4D68-E359-4240-8C18-8B6F30764F21}']
    { static Property Methods }
    {class} function _GetRESULT_INVALID_FORMAT: Integer;
    {class} function _GetRESULT_NETWORK_ERROR: Integer;
    {class} function _GetRESULT_FAILED: Integer;
    {class} function _GetRESULT_OK: Integer;
    {class} function _GetRESULT_NEXT: Integer;
    {class} function _GetRESULT_TIMEOUT: Integer;
    {class} function _GetAUTH_DUMMY: Integer;
    {class} function _GetAUTH_CERT: Integer;
    {class} function _GetAUTH_PASSWORD: Integer;
    {class} function _GetAUTH_SMS: Integer;
    {class} function _GetAUTH_HARDWARE_ID: Integer;
    {class} function _GetAUTH_USBKEY: Integer;
    {class} function _GetAUTH_RADIUS: Integer;
    {class} function _GetAUTH_TOKEN: Integer;
    {class} function _GetAUTH_TWFID: Integer;
    {class} function _GetAUTH_REGET_SMS: Integer;

    { static Methods }
    {class} function create(P1: Integer): JAuthentication; cdecl;
    {class} function init(atype: Integer): JAuthentication; cdecl;

    { static Property }
    {class} property RESULT_INVALID_FORMAT: Integer read _GetRESULT_INVALID_FORMAT;
    {class} property RESULT_NETWORK_ERROR: Integer read _GetRESULT_NETWORK_ERROR;
    {class} property RESULT_FAILED: Integer read _GetRESULT_FAILED;
    {class} property RESULT_OK: Integer read _GetRESULT_OK;
    {class} property RESULT_NEXT: Integer read _GetRESULT_NEXT;
    {class} property RESULT_TIMEOUT: Integer read _GetRESULT_TIMEOUT;
    {class} property AUTH_DUMMY: Integer read _GetAUTH_DUMMY;
    {class} property AUTH_CERT: Integer read _GetAUTH_CERT;
    {class} property AUTH_PASSWORD: Integer read _GetAUTH_PASSWORD;
    {class} property AUTH_SMS: Integer read _GetAUTH_SMS;
    {class} property AUTH_HARDWARE_ID: Integer read _GetAUTH_HARDWARE_ID;
    {class} property AUTH_USBKEY: Integer read _GetAUTH_USBKEY;
    {class} property AUTH_RADIUS: Integer read _GetAUTH_RADIUS;
    {class} property AUTH_TOKEN: Integer read _GetAUTH_TOKEN;
    {class} property AUTH_TWFID: Integer read _GetAUTH_TWFID;
    {class} property AUTH_REGET_SMS: Integer read _GetAUTH_REGET_SMS;
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/Authentication')]
  JAuthentication = interface(JObject)
  ['{D0A866E1-00B4-4861-A593-45CCA1CEE982}']
    { Property Methods }

    { methods }
    function getBaseUrl: JString; cdecl;
    function getAuthType: Integer; cdecl;
    function getResult: Integer; cdecl;
    function getMessage: JString; cdecl;
    function getNextAuthType: Integer; cdecl;
    function getSmsStillValid: Boolean; cdecl;
    function getChallengeMessage: JString; cdecl;
    function isInternalCA: Boolean; cdecl;
    function getCertCharset: JString; cdecl;
    function preAuthenticate: JBundle; cdecl;
    function authenticate(params: JBundle): Integer; cdecl;
    procedure cancel; cdecl;

    { Property }
  end;

  TJAuthentication = class(TJavaGenericImport<JAuthenticationClass, JAuthentication>) end;

  JCertAuth_CertAuth22Class = interface(JObjectClass)
  ['{A777AEDD-C77F-45F1-9D0F-D94104F1CAB9}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/CertAuth$CertAuth22')]
  JCertAuth_CertAuth22 = interface(JObject)
  ['{59E64178-2D43-43CB-A726-5D4827E14A7A}']
    { Property Methods }

    { methods }
    function doRequestAuth(url: JString; params: JBundle): JString; cdecl;

    { Property }
  end;

  TJCertAuth_CertAuth22 = class(TJavaGenericImport<JCertAuth_CertAuth22Class, JCertAuth_CertAuth22>) end;

  JCertAuth_TrustAnyTrustManagerClass = interface(JObjectClass)
  ['{CFF19775-464C-4F87-BD9D-2750D2A574F6}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/CertAuth$TrustAnyTrustManager')]
  JCertAuth_TrustAnyTrustManager = interface(JObject)
  ['{1929F4B7-5631-4603-AE8D-1729FE85BE77}']
    { Property Methods }

    { methods }
    procedure checkClientTrusted(chain: TJavaObjectArray<JX509Certificate>; authType: JString); cdecl;
    procedure checkServerTrusted(chain: TJavaObjectArray<JX509Certificate>; authType: JString); cdecl;
    function getAcceptedIssuers: TJavaObjectArray<JX509Certificate>; cdecl;

    { Property }
  end;

  TJCertAuth_TrustAnyTrustManager = class(TJavaGenericImport<JCertAuth_TrustAnyTrustManagerClass, JCertAuth_TrustAnyTrustManager>) end;

  JCertAuthClass = interface(JObjectClass)
  ['{AF2BC5F8-C135-497D-B919-7B5E4E65FE80}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCertAuth; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/CertAuth')]
  JCertAuth = interface(JObject)
  ['{3EDAD9E4-CBAB-43B5-9B99-09C34A95A845}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJCertAuth = class(TJavaGenericImport<JCertAuthClass, JCertAuth>) end;

  JCertFileListItemClass = interface(JObjectClass)
  ['{03493A6C-BD6F-4FE1-950E-05CF374273F3}']
    { static Property Methods }

    { static Methods }
    {class} function init(afile: JFile): JCertFileListItem; cdecl;
    {class} function decodeCertName(fileName: JFile): JString; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/CertFileListItem')]
  JCertFileListItem = interface(JObject)
  ['{99AD2334-CEC1-410D-810A-B1572A0D29ED}']
    { Property Methods }

    { methods }
    function getFile: JFile; cdecl;
    function toString: JString; cdecl;

    { Property }
  end;

  TJCertFileListItem = class(TJavaGenericImport<JCertFileListItemClass, JCertFileListItem>) end;

  JChallengeAuthClass = interface(JObjectClass)
  ['{BFBA661A-16C9-407A-80E3-041DDBDC9232}']
    { static Property Methods }

    { static Methods }
    {class} function init: JChallengeAuth; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/ChallengeAuth')]
  JChallengeAuth = interface(JObject)
  ['{2FD0DD98-4E56-4062-BF53-12579550785F}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJChallengeAuth = class(TJavaGenericImport<JChallengeAuthClass, JChallengeAuth>) end;

  JEmptyAuthClass = interface(JObjectClass)
  ['{93E63CBB-3BF1-4523-9B4D-FB127EDA7F86}']
    { static Property Methods }

    { static Methods }
    {class} function init: JEmptyAuth; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/EmptyAuth')]
  JEmptyAuth = interface(JObject)
  ['{193A7D7F-8AB7-406A-BA1F-94EF44840CB2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJEmptyAuth = class(TJavaGenericImport<JEmptyAuthClass, JEmptyAuth>) end;

  JHardIdAuthClass = interface(JObjectClass)
  ['{208095FE-9630-4817-97DF-E6D430D0E12A}']
    { static Property Methods }
    {class} function _GetHIDAUTH_ERROR: Integer;
    {class} function _GetHIDAUTH_COLLECT: Integer;
    {class} function _GetHIDAUTH_AUTH: Integer;
    {class} function _GetHIDRET_CRITICAL: Integer;
    {class} function _GetHIDRET_FAILED: Integer;
    {class} function _GetHIDRET_OK: Integer;
    {class} function _GetHIDRET_EXIST_NOTPASSED: Integer;
    {class} function _GetHIDRET_EXIST_PASSED: Integer;
    {class} function _GetHIDRET_INVALID: Integer;
    {class} function _GetHIDRET_HID_LIMIT: Integer;
    {class} function _GetHIDRET_UPDATE_FAILED: Integer;
    {class} function _GetHIDRET_GROUP_LIMIT: Integer;
    {class} function _GetHIDRET_SN_LIMIT: Integer;
    {class} function _GetHIDRET_FORCE_PASS: Integer;

    { static Methods }
    {class} function init(context: JContext; failedAndCollect: Boolean): JHardIdAuth; cdecl;
    {class} function getHardwareIdByContext(devid: JContext): JString; cdecl;
    {class} function getModelByContext(model: JContext): JString; cdecl;
    {class} function getMacAddressByContext(wm: JContext): JString; cdecl;

    { static Property }
    {class} property HIDAUTH_ERROR: Integer read _GetHIDAUTH_ERROR;
    {class} property HIDAUTH_COLLECT: Integer read _GetHIDAUTH_COLLECT;
    {class} property HIDAUTH_AUTH: Integer read _GetHIDAUTH_AUTH;
    {class} property HIDRET_CRITICAL: Integer read _GetHIDRET_CRITICAL;
    {class} property HIDRET_FAILED: Integer read _GetHIDRET_FAILED;
    {class} property HIDRET_OK: Integer read _GetHIDRET_OK;
    {class} property HIDRET_EXIST_NOTPASSED: Integer read _GetHIDRET_EXIST_NOTPASSED;
    {class} property HIDRET_EXIST_PASSED: Integer read _GetHIDRET_EXIST_PASSED;
    {class} property HIDRET_INVALID: Integer read _GetHIDRET_INVALID;
    {class} property HIDRET_HID_LIMIT: Integer read _GetHIDRET_HID_LIMIT;
    {class} property HIDRET_UPDATE_FAILED: Integer read _GetHIDRET_UPDATE_FAILED;
    {class} property HIDRET_GROUP_LIMIT: Integer read _GetHIDRET_GROUP_LIMIT;
    {class} property HIDRET_SN_LIMIT: Integer read _GetHIDRET_SN_LIMIT;
    {class} property HIDRET_FORCE_PASS: Integer read _GetHIDRET_FORCE_PASS;
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/HardIdAuth')]
  JHardIdAuth = interface(JObject)
  ['{ECF42B6A-F748-4D08-A976-560ADD660CE1}']
    { Property Methods }

    { methods }
    function getHardIdAuthType: Integer; cdecl;
    function isFailedAndCollect: Boolean; cdecl;
    function getHardwareId: JString; cdecl;

    { Property }
  end;

  TJHardIdAuth = class(TJavaGenericImport<JHardIdAuthClass, JHardIdAuth>) end;

  JPasswordAuthClass = interface(JObjectClass)
  ['{3A6590D5-C4FF-4566-898A-02DA7C0AE0C2}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPasswordAuth; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/PasswordAuth')]
  JPasswordAuth = interface(JObject)
  ['{545990A2-A040-473C-8D5A-C88412F834FE}']
    { Property Methods }

    { methods }
    function getChecksumDrawable: JDrawable; cdecl;
    function getChecksumByteArray: TJavaArray<Byte>; cdecl;

    { Property }
  end;

  TJPasswordAuth = class(TJavaGenericImport<JPasswordAuthClass, JPasswordAuth>) end;

  JPKCS12Cert_CertExistExceptionClass = interface(JObjectClass)
  ['{3DCC4BF0-7B9A-4606-87D7-55B832B55FA7}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPKCS12Cert_CertExistException; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/PKCS12Cert$CertExistException')]
  JPKCS12Cert_CertExistException = interface(JObject)
  ['{1474F626-5163-4064-A5A7-013B29767B41}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJPKCS12Cert_CertExistException = class(TJavaGenericImport<JPKCS12Cert_CertExistExceptionClass, JPKCS12Cert_CertExistException>) end;

  JPKCS12Cert_X509ExceptionClass = interface(JObjectClass)
  ['{B599C394-3484-443B-AC59-B6DD260E73E3}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPKCS12Cert_X509Exception; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/PKCS12Cert$X509Exception')]
  JPKCS12Cert_X509Exception = interface(JObject)
  ['{44852A42-46E2-442C-A835-23916839E137}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJPKCS12Cert_X509Exception = class(TJavaGenericImport<JPKCS12Cert_X509ExceptionClass, JPKCS12Cert_X509Exception>) end;

  JPKCS12CertClass = interface(JObjectClass)
  ['{77D36EBD-D451-4180-BD14-CE7035AF73AC}']
    { static Property Methods }

    { static Methods }
    {class} function init(context: JContext; certFile: JFile): JPKCS12Cert; cdecl; overload;
    {class} function init(context: JContext; certFile: JFile; password: JString): JPKCS12Cert; cdecl; overload;
    {class} procedure setCertCharset(isInternalCA: JString; P2: Boolean); cdecl;
    {class} function getCryptKey: JString; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/PKCS12Cert')]
  JPKCS12Cert = interface(JObject)
  ['{9B386BD3-A28E-4FAE-B1BC-96FF9B95A71C}']
    { Property Methods }

    { methods }
    procedure save(path: JFile; password: JString); cdecl;
    function getSubject: JString; cdecl;
    function getCertUserName: JString; cdecl;
    function getSubjectMap: JMap; cdecl;

    { Property }
  end;

  TJPKCS12Cert = class(TJavaGenericImport<JPKCS12CertClass, JPKCS12Cert>) end;

  JSmsAuthClass = interface(JObjectClass)
  ['{C0F019BF-B5ED-4469-9EE0-FF01D331B73D}']
    { static Property Methods }
    {class} function _GetREGET_RET_INVALID: Integer;
    {class} function _GetREGET_RET_NETWORK: Integer;
    {class} function _GetREGET_RET_OK: Integer;
    {class} function _GetREGET_RET_FAILED: Integer;
    {class} function _GetREGET_RET_CRITICAL: Integer;

    { static Methods }
    {class} function init: JSmsAuth; cdecl;

    { static Property }
    {class} property REGET_RET_INVALID: Integer read _GetREGET_RET_INVALID;
    {class} property REGET_RET_NETWORK: Integer read _GetREGET_RET_NETWORK;
    {class} property REGET_RET_OK: Integer read _GetREGET_RET_OK;
    {class} property REGET_RET_FAILED: Integer read _GetREGET_RET_FAILED;
    {class} property REGET_RET_CRITICAL: Integer read _GetREGET_RET_CRITICAL;
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/SmsAuth')]
  JSmsAuth = interface(JObject)
  ['{94CF4F41-5150-450C-A7A8-D573FFC330ED}']
    { Property Methods }

    { methods }
    function regetSmsCode: Integer; cdecl;

    { Property }
  end;

  TJSmsAuth = class(TJavaGenericImport<JSmsAuthClass, JSmsAuth>) end;

  JTokenAuthClass = interface(JObjectClass)
  ['{D80BC5FC-7772-4364-97BD-70651ACDD309}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTokenAuth; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/auth/TokenAuth')]
  JTokenAuth = interface(JObject)
  ['{E6DBB556-FB0E-4F83-AB95-B2544F0A733B}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTokenAuth = class(TJavaGenericImport<JTokenAuthClass, JTokenAuth>) end;

  JDataManagerClass = interface(JObjectClass)
  ['{68AA4C73-C95D-45AD-98D9-7F0D8B0D76D1}']
    { static Property Methods }
    {class} function _GetRC_URL: JString;
    {class} function _GetCONF_URL: JString;
    {class} function _GetCHANGE_TEL_URL: JString;
    {class} function _GetCHANGE_NOTE_URL: JString;
    {class} function _GetCHANGE_PASSWORD_URL: JString;
    {class} function _GetSSO_INFO_URL: JString;
    {class} function _GetSSO_CHANGE_URL: JString;

    { static Methods }
    {class} function init: JDataManager; cdecl;
    {class} function getInstance: JDataManager; cdecl;

    { static Property }
    {class} property RC_URL: JString read _GetRC_URL;
    {class} property CONF_URL: JString read _GetCONF_URL;
    {class} property CHANGE_TEL_URL: JString read _GetCHANGE_TEL_URL;
    {class} property CHANGE_NOTE_URL: JString read _GetCHANGE_NOTE_URL;
    {class} property CHANGE_PASSWORD_URL: JString read _GetCHANGE_PASSWORD_URL;
    {class} property SSO_INFO_URL: JString read _GetSSO_INFO_URL;
    {class} property SSO_CHANGE_URL: JString read _GetSSO_CHANGE_URL;
  end;

  [JavaSignature('com/sangfor/ssl/service/data/DataManager')]
  JDataManager = interface(JObject)
  ['{20778FC9-FC01-43FC-A767-1FB831063EC2}']
    { Property Methods }

    { methods }
    function getConf: JObject; cdecl;
    function getRclist: JObject; cdecl;
    function request(url: JString; params: JMap): JObject; cdecl; overload;
    function request(url: JString; params: JMap; atype: JString): JObject; cdecl; overload;

    { Property }
  end;

  TJDataManager = class(TJavaGenericImport<JDataManagerClass, JDataManager>) end;

//  JLineHandler_1Class = interface(JObjectClass)
//  ['{6156234C-76AC-405A-8938-47C7C9027FBD}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/service/line/LineHandler$1')]
//  JLineHandler_1 = interface(JObject)
//  ['{B895B464-4CFB-4871-B242-48A8CF5D6300}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJLineHandler_1 = class(TJavaGenericImport<JLineHandler_1Class, JLineHandler_1>) end;

  JLineHandler_LineUnitClass = interface(JObjectClass)
  ['{49B03AB6-B92C-43B2-B2DA-79F589197844}']
    { static Property Methods }

    { static Methods }
    {class} function init: JLineHandler_LineUnit; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/line/LineHandler$LineUnit')]
  JLineHandler_LineUnit = interface(JObject)
  ['{F918CEE2-1A3C-434E-920F-F937F0CFF759}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLineHandler_LineUnit = class(TJavaGenericImport<JLineHandler_LineUnitClass, JLineHandler_LineUnit>) end;

  JLineHandlerClass = interface(JObjectClass)
  ['{A3A65BC7-4E26-45FE-B6B8-7F1B1AB9B080}']
    { static Property Methods }

    { static Methods }
    {class} function init: JLineHandler; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/line/LineHandler')]
  JLineHandler = interface(JObject)
  ['{2D688263-758A-4AF1-8A2D-B8117908AA5D}']
    { Property Methods }

    { methods }
    procedure setListener(listener: JLineHandlerListener); cdecl;
    function getLineHead: JLineHandler; cdecl;
    procedure cancel; cdecl;
    procedure handle(url: JString); cdecl;

    { Property }
  end;

  TJLineHandler = class(TJavaGenericImport<JLineHandlerClass, JLineHandler>) end;

  JLineHandlerListenerClass = interface(JObjectClass)
  ['{07F5F199-C3A9-4AFC-BE5F-7C7540B159DF}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/line/LineHandlerListener')]
  JLineHandlerListener = interface(IJavaInstance)
  ['{F0034D16-2022-454C-8B47-52744512411E}']
    { Property Methods }

    { methods }
    procedure selectLineSuccess(P1: JString); cdecl;
    procedure selectLineError(P1: Integer); cdecl;

    { Property }
  end;

  TJLineHandlerListener = class(TJavaGenericImport<JLineHandlerListenerClass, JLineHandlerListener>) end;

  JMultiLineHandlerClass = interface(JObjectClass)
  ['{149ABDDB-B659-4C43-8BE2-6D0A9699F9B6}']
    { static Property Methods }

    { static Methods }
    {class} function init: JMultiLineHandler; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/line/MultiLineHandler')]
  JMultiLineHandler = interface(JObject)
  ['{270DBC5F-CF08-4DB8-814A-4C3E52CE971F}']
    { Property Methods }

    { methods }
    function getLines(content: JString): JArrayList; cdecl;

    { Property }
  end;

  TJMultiLineHandler = class(TJavaGenericImport<JMultiLineHandlerClass, JMultiLineHandler>) end;

  JWebAgentHandlerClass = interface(JObjectClass)
  ['{89E659F7-1E18-4BD8-A415-363D002AF78E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JWebAgentHandler; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/line/WebAgentHandler')]
  JWebAgentHandler = interface(JObject)
  ['{26D2F65D-DE94-42DD-8B55-217127DA5CC2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJWebAgentHandler = class(TJavaGenericImport<JWebAgentHandlerClass, JWebAgentHandler>) end;

  JResourceManager_ResourceHandlerClass = interface(JObjectClass)
  ['{7ABE1F7E-085E-447A-B54C-56D6A262504C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JResourceManager_ResourceHandler; cdecl;
    {class} function htmlDecode(decodeStr: JString): JString; cdecl;
    {class} function handle(dnsMap: JMap; svc: JMap): JMap; cdecl;
    {class} function getAddrByName(dnsMap: JString; oldIpString: JMap): JString; cdecl;
    {class} function isAllWebRc(rcid: JMap): Boolean; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/setting/ResourceManager$ResourceHandler')]
  JResourceManager_ResourceHandler = interface(JObject)
  ['{3E734672-0480-421B-B9CB-6269E87519A9}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJResourceManager_ResourceHandler = class(TJavaGenericImport<JResourceManager_ResourceHandlerClass, JResourceManager_ResourceHandler>) end;

  JResourceManagerClass = interface(JObjectClass)
  ['{76ED3923-35BD-4522-8688-D8FAB3101111}']
    { static Property Methods }
    {class} function _GetisAbleWork: Boolean;
    {class} function _GetRESOURCE_TPYE_WEB: Integer;
    {class} function _GetRESOURCE_TPYE_TCP: Integer;
    {class} function _GetRESOURCE_TPYE_L3VPN: Integer;
    {class} function _GetFAVORITE_LIMIT: Integer;
    {class} function _GetHISTORY_LIMIT: Integer;
    {class} function _GetRC_SVC_RDESKTOP: JString;
    {class} function _GetRC_SVC_REMOTEAPP: JString;
    {class} function _GetRC_SVC_SHAREDESK: JString;
    {class} function _GetRC_SVC_VIRTUALDESK: JString;
    {class} function _GetRC_SVR_ALLIP: JString;

    { static Methods }
    {class} function getInstance: JResourceManager; cdecl;
    {class} procedure destoryObject; cdecl;

    { static Property }
    {class} property isAbleWork: Boolean read _GetisAbleWork;
    {class} property RESOURCE_TPYE_WEB: Integer read _GetRESOURCE_TPYE_WEB;
    {class} property RESOURCE_TPYE_TCP: Integer read _GetRESOURCE_TPYE_TCP;
    {class} property RESOURCE_TPYE_L3VPN: Integer read _GetRESOURCE_TPYE_L3VPN;
    {class} property FAVORITE_LIMIT: Integer read _GetFAVORITE_LIMIT;
    {class} property HISTORY_LIMIT: Integer read _GetHISTORY_LIMIT;
    {class} property RC_SVC_RDESKTOP: JString read _GetRC_SVC_RDESKTOP;
    {class} property RC_SVC_REMOTEAPP: JString read _GetRC_SVC_REMOTEAPP;
    {class} property RC_SVC_SHAREDESK: JString read _GetRC_SVC_SHAREDESK;
    {class} property RC_SVC_VIRTUALDESK: JString read _GetRC_SVC_VIRTUALDESK;
    {class} property RC_SVR_ALLIP: JString read _GetRC_SVR_ALLIP;
  end;

  [JavaSignature('com/sangfor/ssl/service/setting/ResourceManager')]
  JResourceManager = interface(JObject)
  ['{5CBBF126-46F9-4102-9B73-4FBF0618E852}']
    { Property Methods }

    { methods }
    function parseRcXml(data: JString): Boolean; cdecl;
    function getGroupByID(gpId: JString): JMap; cdecl;
    function getGroups: JArrayList; cdecl;
    function getEasyLink(rcid: JString): JMap; cdecl;
    function getRcsByGroupID(gpId: JString): JArrayList; cdecl;
    function getRcByID(rcId: JString): JMap; cdecl;
    function getDnsInof: JMap; cdecl;
    function getDefaultWebRc: JMap; cdecl;
    function getResouceByType(rcType: Integer): JArrayList; cdecl;
    function containGlobalWebRc: Boolean; cdecl;
    function containL3vpnRc: Boolean; cdecl;
    function getFavorites: JArrayList; cdecl;
    function getHistory: JArrayList; cdecl;
    function isFavorite(rc: JMap): Boolean; cdecl;
    function getDNSRcIpMap: JMap; cdecl;
    function getAllRappRcIds: JArrayList; cdecl;

    { Property }
  end;

  TJResourceManager = class(TJavaGenericImport<JResourceManagerClass, JResourceManager>) end;

//  JSettingManager_1Class = interface(JObjectClass)
//  ['{D8936C81-20FC-48B9-802E-B9B7E0A8FFE5}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/service/setting/SettingManager$1')]
//  JSettingManager_1 = interface(JObject)
//  ['{8C219C81-7782-4705-8C98-F69A9052D5CC}']
//    { Property Methods }
//
//    { methods }
//    function compare(lhs: JSettingManager_1Rec; rhs: JSettingManager_1Rec): Integer; cdecl; overload;
//    function compare(P1: JObject; P2: JObject): Integer; cdecl; overload;
//
//    { Property }
//  end;

//  TJSettingManager_1 = class(TJavaGenericImport<JSettingManager_1Class, JSettingManager_1>) end;

//  JSettingManager_1RecClass = interface(JObjectClass)
//  ['{EB839F5E-53A9-432D-9CC9-33F2FC71D984}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(url_: JSettingManager; P2: JString; time_: Int64): JSettingManager_1Rec; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/service/setting/SettingManager$1Rec')]
//  JSettingManager_1Rec = interface(JObject)
//  ['{8EA0BB75-D9EF-4352-9457-578162E0D662}']
//    { Property Methods }
//    function _Geturl: JString;
//    procedure _Seturl(aurl: JString);
//    function _Gettime: Int64;
//    procedure _Settime(atime: Int64);
//
//    { methods }
//    function toString: JString; cdecl;
//
//    { Property }
//    property url: JString read _Geturl write _Seturl;
//    property time: Int64 read _Gettime write _Settime;
//  end;

//  TJSettingManager_1Rec = class(TJavaGenericImport<JSettingManager_1RecClass, JSettingManager_1Rec>) end;

  JSettingManagerClass = interface(JObjectClass)
  ['{FCCC99F7-CFC6-41D8-B462-9E5A46E7006A}']
    { static Property Methods }
    {class} function _GetisAbleWork: Boolean;
    {class} function _GetGLOBAL_URL_KEY: JString;
    {class} function _GetGLOBAL_HOST_KEY: JString;
    {class} function _GetGLOBAL_NEED_SHOW_PSWSTRATEGY: JString;
    {class} function _GetGLOBAL_PSW_STRATEGY_CODE: JString;
    {class} function _GetGLOBAL_PPTP_ENABLE: JString;
    {class} function _GetGLOBAL_LASTUSERNAME: JString;
    {class} function _GetGLOBAL_CURRENT_STATE: JString;
    {class} function _GetSTATE_ONLINE: Integer;
    {class} function _GetSTATE_OFFLINE: Integer;
    {class} function _GetSTATE_CONNECT: Integer;
    {class} function _GetMAX_SETTING_COUNT: Integer;
    {class} function _GetGLOBAL_TIMEQRY_UPDATE: JString;
    {class} function _GetTIMEQRY_UPDATE: Integer;
    {class} function _GetTIMEQRY_QUERY: Integer;
    {class} function _GetSETTING_ICON_MODE: JString;
    {class} function _GetSETTING_USERNAME: JString;
    {class} function _GetSETTING_PASSWORD: JString;
    {class} function _GetSETTING_CERTNAME: JString;
    {class} function _GetSETTING_STARTAUTH: JString;
    {class} function _GetSETTING_PWDSAVE: JString;
    {class} function _GetSETTING_AUTOLOGIN: JString;
    {class} function _GetSETTING_RDRCOLOR: JString;
    {class} function _GetSETTING_RDPRECONNECT: JString;
    {class} function _GetSETTING_SND_PALY: JString;
    {class} function _GetSETTING_SND_RECORD: JString;
    {class} function _GetSETTING_RDPWIDTH: JString;
    {class} function _GetSETTING_RDPHEIGHT: JString;
    {class} function _GetSETTING_RDPAUTO_RESOLUTION: JString;
    {class} function _GetSETTING_RDPAR_SIZE: JString;
    {class} function _GetSETTING_SHOWKEYBOARD: JString;
    {class} function _GetSETTING_AUTO_ROTATE: JString;
    {class} function _GetSETTING_RDP_SMOOTH_FONT: JString;
    {class} function _GetSETTING_RDP_DRAG_WINDOW: JString;
    {class} function _GetSETTING_RDP_ANIMATION: JString;
    {class} function _GetSETTING_RDP_THEMING: JString;
    {class} function _GetSETTING_NOWIFITIPS: JString;
    {class} function _GetSETTING_LASTLOGINTIME: JString;
    {class} function _GetSETTING_FAVORITE: JString;
    {class} function _GetSETTING_HISTORY: JString;
    {class} function _GetSETTING_LOSSY_COMPRESSION: JString;
    {class} function _GetSETTING_STREAM_MERGE: JString;
    {class} function _GetTWFID_HOST: JString;
    {class} function _GetTWFID_REALLINE: JString;
    {class} function _GetTWFID_TWFID: JString;
    {class} function _GetTWFID_LOGOUT: JString;
    {class} function _GetTWFID_NOTE: JString;
    {class} function _GetTWFID_TEL: JString;
    {class} function _GetRDP_HOSTNAME: JString;
    {class} function _GetRDP_HOST: JString;
    {class} function _GetRDP_PORT: JString;
    {class} function _GetRDP_USER: JString;
    {class} function _GetRDP_PASS: JString;
    {class} function _GetRDP_DOMAIN: JString;
    {class} function _GetRDP_AUTORESOLUTION: JString;
    {class} function _GetRDP_AR_SIZE: JString;
    {class} function _GetRDP_WIDTH: JString;
    {class} function _GetRDP_HEIGHT: JString;
    {class} function _GetRDP_AR_LARGE: Integer;
    {class} function _GetRDP_AR_SMALL: Integer;
    {class} function _GetRDP_CONTROLMODEL: JString;
    {class} function _GetRDP_DEFAULTHOST: JString;
    {class} function _GetDEFAULT_RDP_COLOR: Integer;

    { static Methods }
    {class} function getInstance: JSettingManager; cdecl;
    {class} procedure destoryObject; cdecl;

    { static Property }
    {class} property isAbleWork: Boolean read _GetisAbleWork;
    {class} property GLOBAL_URL_KEY: JString read _GetGLOBAL_URL_KEY;
    {class} property GLOBAL_HOST_KEY: JString read _GetGLOBAL_HOST_KEY;
    {class} property GLOBAL_NEED_SHOW_PSWSTRATEGY: JString read _GetGLOBAL_NEED_SHOW_PSWSTRATEGY;
    {class} property GLOBAL_PSW_STRATEGY_CODE: JString read _GetGLOBAL_PSW_STRATEGY_CODE;
    {class} property GLOBAL_PPTP_ENABLE: JString read _GetGLOBAL_PPTP_ENABLE;
    {class} property GLOBAL_LASTUSERNAME: JString read _GetGLOBAL_LASTUSERNAME;
    {class} property GLOBAL_CURRENT_STATE: JString read _GetGLOBAL_CURRENT_STATE;
    {class} property STATE_ONLINE: Integer read _GetSTATE_ONLINE;
    {class} property STATE_OFFLINE: Integer read _GetSTATE_OFFLINE;
    {class} property STATE_CONNECT: Integer read _GetSTATE_CONNECT;
    {class} property MAX_SETTING_COUNT: Integer read _GetMAX_SETTING_COUNT;
    {class} property GLOBAL_TIMEQRY_UPDATE: JString read _GetGLOBAL_TIMEQRY_UPDATE;
    {class} property TIMEQRY_UPDATE: Integer read _GetTIMEQRY_UPDATE;
    {class} property TIMEQRY_QUERY: Integer read _GetTIMEQRY_QUERY;
    {class} property SETTING_ICON_MODE: JString read _GetSETTING_ICON_MODE;
    {class} property SETTING_USERNAME: JString read _GetSETTING_USERNAME;
    {class} property SETTING_PASSWORD: JString read _GetSETTING_PASSWORD;
    {class} property SETTING_CERTNAME: JString read _GetSETTING_CERTNAME;
    {class} property SETTING_STARTAUTH: JString read _GetSETTING_STARTAUTH;
    {class} property SETTING_PWDSAVE: JString read _GetSETTING_PWDSAVE;
    {class} property SETTING_AUTOLOGIN: JString read _GetSETTING_AUTOLOGIN;
    {class} property SETTING_RDRCOLOR: JString read _GetSETTING_RDRCOLOR;
    {class} property SETTING_RDPRECONNECT: JString read _GetSETTING_RDPRECONNECT;
    {class} property SETTING_SND_PALY: JString read _GetSETTING_SND_PALY;
    {class} property SETTING_SND_RECORD: JString read _GetSETTING_SND_RECORD;
    {class} property SETTING_RDPWIDTH: JString read _GetSETTING_RDPWIDTH;
    {class} property SETTING_RDPHEIGHT: JString read _GetSETTING_RDPHEIGHT;
    {class} property SETTING_RDPAUTO_RESOLUTION: JString read _GetSETTING_RDPAUTO_RESOLUTION;
    {class} property SETTING_RDPAR_SIZE: JString read _GetSETTING_RDPAR_SIZE;
    {class} property SETTING_SHOWKEYBOARD: JString read _GetSETTING_SHOWKEYBOARD;
    {class} property SETTING_AUTO_ROTATE: JString read _GetSETTING_AUTO_ROTATE;
    {class} property SETTING_RDP_SMOOTH_FONT: JString read _GetSETTING_RDP_SMOOTH_FONT;
    {class} property SETTING_RDP_DRAG_WINDOW: JString read _GetSETTING_RDP_DRAG_WINDOW;
    {class} property SETTING_RDP_ANIMATION: JString read _GetSETTING_RDP_ANIMATION;
    {class} property SETTING_RDP_THEMING: JString read _GetSETTING_RDP_THEMING;
    {class} property SETTING_NOWIFITIPS: JString read _GetSETTING_NOWIFITIPS;
    {class} property SETTING_LASTLOGINTIME: JString read _GetSETTING_LASTLOGINTIME;
    {class} property SETTING_FAVORITE: JString read _GetSETTING_FAVORITE;
    {class} property SETTING_HISTORY: JString read _GetSETTING_HISTORY;
    {class} property SETTING_LOSSY_COMPRESSION: JString read _GetSETTING_LOSSY_COMPRESSION;
    {class} property SETTING_STREAM_MERGE: JString read _GetSETTING_STREAM_MERGE;
    {class} property TWFID_HOST: JString read _GetTWFID_HOST;
    {class} property TWFID_REALLINE: JString read _GetTWFID_REALLINE;
    {class} property TWFID_TWFID: JString read _GetTWFID_TWFID;
    {class} property TWFID_LOGOUT: JString read _GetTWFID_LOGOUT;
    {class} property TWFID_NOTE: JString read _GetTWFID_NOTE;
    {class} property TWFID_TEL: JString read _GetTWFID_TEL;
    {class} property RDP_HOSTNAME: JString read _GetRDP_HOSTNAME;
    {class} property RDP_HOST: JString read _GetRDP_HOST;
    {class} property RDP_PORT: JString read _GetRDP_PORT;
    {class} property RDP_USER: JString read _GetRDP_USER;
    {class} property RDP_PASS: JString read _GetRDP_PASS;
    {class} property RDP_DOMAIN: JString read _GetRDP_DOMAIN;
    {class} property RDP_AUTORESOLUTION: JString read _GetRDP_AUTORESOLUTION;
    {class} property RDP_AR_SIZE: JString read _GetRDP_AR_SIZE;
    {class} property RDP_WIDTH: JString read _GetRDP_WIDTH;
    {class} property RDP_HEIGHT: JString read _GetRDP_HEIGHT;
    {class} property RDP_AR_LARGE: Integer read _GetRDP_AR_LARGE;
    {class} property RDP_AR_SMALL: Integer read _GetRDP_AR_SMALL;
    {class} property RDP_CONTROLMODEL: JString read _GetRDP_CONTROLMODEL;
    {class} property RDP_DEFAULTHOST: JString read _GetRDP_DEFAULTHOST;
    {class} property DEFAULT_RDP_COLOR: Integer read _GetDEFAULT_RDP_COLOR;
  end;

  [JavaSignature('com/sangfor/ssl/service/setting/SettingManager')]
  JSettingManager = interface(JObject)
  ['{CB766C20-4367-4B48-8115-113EB41ED978}']
    { Property Methods }

    { methods }
    function getString(key: JString; defaultValue: JString): JString; cdecl;
    function getInt(key: JString; defaultValue: Integer): Integer; cdecl;
    function getBoolean(key: JString; defaultValue: Boolean): Boolean; cdecl;
    function get(key: JString; defaultValue: JObject): JObject; cdecl; overload;
    function get(key: JString): JObject; cdecl; overload;
    procedure &set(key: JString; value: JObject); cdecl;
    function getHistoryUrls: JArrayList; cdecl;
    procedure setGlobalValue(key: JString; value: JObject); cdecl;
    function getGlobalValue(key: JString; defaultValue: JObject): JObject; cdecl; overload;
    function getGlobalValue(key: JString): JObject; cdecl; overload;
    procedure removeSetting(url: JString); cdecl;
    function getSettingCount: Integer; cdecl;

    { Property }
  end;

  TJSettingManager = class(TJavaGenericImport<JSettingManagerClass, JSettingManager>) end;

  JSystemConfiguration_VpnInfoClass = interface(JObjectClass)
  ['{978EC6C1-B50C-49F1-9E6E-3114B9EDB760}']
    { static Property Methods }

    { static Methods }
    {class} function init(host: JString; port: Integer): JSystemConfiguration_VpnInfo; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/setting/SystemConfiguration$VpnInfo')]
  JSystemConfiguration_VpnInfo = interface(JObject)
  ['{D13E723A-954B-47D7-A296-E0760107E53F}']
    { Property Methods }

    { methods }
    function getHost: JString; cdecl;
    function getPort: Integer; cdecl;

    { Property }
  end;

  TJSystemConfiguration_VpnInfo = class(TJavaGenericImport<JSystemConfiguration_VpnInfoClass, JSystemConfiguration_VpnInfo>) end;

  JSystemConfigurationClass = interface(JObjectClass)
  ['{8AFA03A2-8E69-41F7-9002-2C226ED79E17}']
    { static Property Methods }
    {class} function _GetisAbleWork: Boolean;
    {class} function _GetCONFIG_TYPE_PHONEMODULE: Integer;
    {class} function _GetCONFIG_TYPE_LONGINAUTH: Integer;
    {class} function _GetCONFIG_TYPE_CONF: Integer;
    {class} function _GetON: JString;
    {class} function _GetOFF: JString;

    { static Methods }
    {class} function getInstance: JSystemConfiguration; cdecl;
    {class} procedure destoryObject; cdecl;

    { static Property }
    {class} property isAbleWork: Boolean read _GetisAbleWork;
    {class} property CONFIG_TYPE_PHONEMODULE: Integer read _GetCONFIG_TYPE_PHONEMODULE;
    {class} property CONFIG_TYPE_LONGINAUTH: Integer read _GetCONFIG_TYPE_LONGINAUTH;
    {class} property CONFIG_TYPE_CONF: Integer read _GetCONFIG_TYPE_CONF;
    {class} property &ON: JString read _GetON;
    {class} property OFF: JString read _GetOFF;
  end;

  [JavaSignature('com/sangfor/ssl/service/setting/SystemConfiguration')]
  JSystemConfiguration = interface(JObject)
  ['{23F43DD0-E65E-4940-84C5-B2A435728530}']
    { Property Methods }

    { methods }
    function parse(atype: Integer; xmlData: JString): Boolean; cdecl;
    function getString(atype: Integer; key: JString; defaultValue: JString): JString; cdecl;
    function get(atype: Integer; key: JString; defaultValue: JObject): JObject; cdecl; overload;
    function getVersionType: Integer; cdecl;
    function getAuthCipher: JString; cdecl;
    function getLinkCipher(key: JString): JString; cdecl;
    function getEnginValue(key: JString): JString; cdecl;
    function get(atype: Integer; key: JString): JObject; cdecl; overload;
    function isCrashed: Boolean; cdecl;
    function getBugReportUrl: JString; cdecl;
    function getVersion: JString; cdecl;
    function getVersionInt: Integer; cdecl;
    function sslProtocalSupported: Boolean; cdecl;
    function getSessionId: JString; cdecl;
    function getSslctx: JString; cdecl;
    function getRandomBytes: TJavaArray<Byte>; cdecl;
    function getVpnInfo: JSystemConfiguration_VpnInfo; cdecl;
    function isPublicUser: Boolean; cdecl;
    function getRetainSessionTime: Int64; cdecl;
    function getRappReuse: Boolean; cdecl;
    function isClipboardIncomingEnabled: Boolean; cdecl;
    function isL3vpnServiceSupported: Boolean; cdecl;
    function isClipboardOutgoingEnabled: Boolean; cdecl;

    { Property }
  end;

  TJSystemConfiguration = class(TJavaGenericImport<JSystemConfigurationClass, JSystemConfiguration>) end;

  JClientMessageClass = interface(JObjectClass)
  ['{E4C4E1AE-6278-48E7-B2B2-235EE6354280}']
    { static Property Methods }

    { static Methods }
    {class} function init: JClientMessage; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/timeqry/ClientMessage')]
  JClientMessage = interface(JObject)
  ['{AE941D3D-254B-4B5B-8CF2-CD9F408F46C7}']
    { Property Methods }

    { methods }
    function pack(atype: Integer; sendStamp: Integer; session: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function toArray: TJavaArray<Byte>; cdecl;

    { Property }
  end;

  TJClientMessage = class(TJavaGenericImport<JClientMessageClass, JClientMessage>) end;

  JFormatTransferClass = interface(JObjectClass)
  ['{4617949B-F203-45AA-BCB8-0EE8CE604F53}']
    { static Property Methods }

    { static Methods }
    {class} function init: JFormatTransfer; cdecl;
    {class} function toLH(result: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function toHH(result: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function toLH(result: Word): TJavaArray<Byte>; cdecl; overload;
    {class} function toHH(result: Word): TJavaArray<Byte>; cdecl; overload;
    {class} function hBytesToInt(s: TJavaArray<Byte>): Integer; cdecl; overload;
    {class} function lBytesToInt(s: TJavaArray<Byte>): Integer; cdecl; overload;
    {class} function hBytesToLong(s: TJavaArray<Byte>): Int64; cdecl; overload;
    {class} function lBytesToLong(s: TJavaArray<Byte>): Int64; cdecl; overload;
    {class} function hBytesToShort(s: TJavaArray<Byte>): Word; cdecl; overload;
    {class} function lBytesToShort(s: TJavaArray<Byte>): Word; cdecl; overload;
    {class} function hBytesToInt(pos: TJavaArray<Byte>; len: Integer; aarray: Integer): Integer; cdecl; overload;
    {class} function lBytesToInt(pos: TJavaArray<Byte>; len: Integer; aarray: Integer): Integer; cdecl; overload;
    {class} function hBytesToShort(pos: TJavaArray<Byte>; len: Integer; aarray: Integer): Word; cdecl; overload;
    {class} function lBytesToShort(pos: TJavaArray<Byte>; len: Integer; aarray: Integer): Word; cdecl; overload;
    {class} function lBytesToLong(pos: TJavaArray<Byte>; len: Integer; aarray: Integer): Int64; cdecl; overload;
    {class} function hBytesToLong(pos: TJavaArray<Byte>; len: Integer; aarray: Integer): Int64; cdecl; overload;
    {class} procedure printHex(i: TJavaArray<Byte>); cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/timeqry/FormatTransfer')]
  JFormatTransfer = interface(JObject)
  ['{875C6C26-FA18-4F5D-8425-E9BE4B231274}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJFormatTransfer = class(TJavaGenericImport<JFormatTransferClass, JFormatTransfer>) end;

  JServerMessageClass = interface(JObjectClass)
  ['{9C4E357D-099E-44A0-A565-8AAFEBC8F271}']
    { static Property Methods }

    { static Methods }
    {class} function init: JServerMessage; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/timeqry/ServerMessage')]
  JServerMessage = interface(JObject)
  ['{6CD37BEA-9060-4D38-B941-374E1DABCEE6}']
    { Property Methods }

    { methods }
    function checkHead: Boolean; cdecl;
    function getType: Integer; cdecl;
    function getSendStamp: Integer; cdecl;
    function getAckTimeout: Integer; cdecl;
    function getSession: JString; cdecl;
    function getRtUpFlux: Integer; cdecl;
    function getRtDownFlux: Integer; cdecl;
    function getTotalUpFlux: Int64; cdecl;
    function getTotalDownFlux: Int64; cdecl;
    function getBroadcaseMsgLength: Integer; cdecl;
    function getBroadcastMsg: JString; cdecl;
    function toArray: TJavaArray<Byte>; cdecl;

    { Property }
  end;

  TJServerMessage = class(TJavaGenericImport<JServerMessageClass, JServerMessage>) end;

//  JTimeQry_1Class = interface(JObjectClass)
//  ['{6342238E-D067-4926-86FA-B7B28F81DB42}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/service/timeqry/TimeQry$1')]
//  JTimeQry_1 = interface(JObject)
//  ['{984E0B52-BE0D-4114-83AB-27102A8179A7}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJTimeQry_1 = class(TJavaGenericImport<JTimeQry_1Class, JTimeQry_1>) end;

  JTimeQry_FluxInfoClass = interface(JObjectClass)
  ['{681CB76D-95E4-4749-89A9-3FE6B6A871FD}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JTimeQry): JTimeQry_FluxInfo; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/timeqry/TimeQry$FluxInfo')]
  JTimeQry_FluxInfo = interface(JObject)
  ['{002E5EC7-3747-4D79-BFBB-8FCB87A25B93}']
    { Property Methods }
    function _GettotalDownFlux: Int64;
    procedure _SettotalDownFlux(atotalDownFlux: Int64);
    function _GettotalUpFlux: Int64;
    procedure _SettotalUpFlux(atotalUpFlux: Int64);
    function _GetcurUpFlux: Int64;
    procedure _SetcurUpFlux(acurUpFlux: Int64);
    function _GetcurDownFlux: Int64;
    procedure _SetcurDownFlux(acurDownFlux: Int64);

    { methods }

    { Property }
    property totalDownFlux: Int64 read _GettotalDownFlux write _SettotalDownFlux;
    property totalUpFlux: Int64 read _GettotalUpFlux write _SettotalUpFlux;
    property curUpFlux: Int64 read _GetcurUpFlux write _SetcurUpFlux;
    property curDownFlux: Int64 read _GetcurDownFlux write _SetcurDownFlux;
  end;

  TJTimeQry_FluxInfo = class(TJavaGenericImport<JTimeQry_FluxInfoClass, JTimeQry_FluxInfo>) end;

//  JTimeQry_OnCreateRunnable_1Class = interface(JObjectClass)
//  ['{A5004021-A229-4108-B266-53F6CC96120E}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/sangfor/ssl/service/timeqry/TimeQry$OnCreateRunnable$1')]
//  JTimeQry_OnCreateRunnable_1 = interface(JObject)
//  ['{1E89880E-511F-40CA-8D63-63C0FBB71BE8}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJTimeQry_OnCreateRunnable_1 = class(TJavaGenericImport<JTimeQry_OnCreateRunnable_1Class, JTimeQry_OnCreateRunnable_1>) end;

  JTimeQry_OnCreateRunnableClass = interface(JObjectClass)
  ['{5325E8FC-1AD9-4D0C-9B9A-120A669A23EB}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/timeqry/TimeQry$OnCreateRunnable')]
  JTimeQry_OnCreateRunnable = interface(JObject)
  ['{59A71AA5-2818-4577-9147-ADD0FBE5DD79}']
    { Property Methods }

    { methods }
    procedure run; cdecl;

    { Property }
  end;

  TJTimeQry_OnCreateRunnable = class(TJavaGenericImport<JTimeQry_OnCreateRunnableClass, JTimeQry_OnCreateRunnable>) end;

  JTimeQryClass = interface(JObjectClass)
  ['{95B319A0-BB06-49BC-9665-FAEBFAF76061}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTimeQry; cdecl;
    {class} function getInstance: JTimeQry; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/timeqry/TimeQry')]
  JTimeQry = interface(JObject)
  ['{25E9EF44-8ED3-431F-887C-D23E7F1EF197}']
    { Property Methods }

    { methods }
    procedure setReloginOk; cdecl;
    procedure start(handler: JHandler); cdecl;
    procedure stop; cdecl;
    procedure stopThread; cdecl;
    function getDuration: Int64; cdecl;
    function getCurrentStatus: Integer; cdecl;
    function getFlux: JTimeQry_FluxInfo; cdecl;
    procedure setTurboMode(enabled: Boolean); cdecl;
    procedure tryStopService; cdecl;

    { Property }
  end;

  TJTimeQry = class(TJavaGenericImport<JTimeQryClass, JTimeQry>) end;

  JTimeQryExceptionClass = interface(JObjectClass)
  ['{A0E97885-C177-444A-8291-316E85980C48}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JTimeQryException; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/timeqry/TimeQryException')]
  JTimeQryException = interface(JObject)
  ['{91D400E9-6FA1-42CE-A404-63DE743B6173}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTimeQryException = class(TJavaGenericImport<JTimeQryExceptionClass, JTimeQryException>) end;

  JTQProtocolClass = interface(JObjectClass)
  ['{D46CF934-79A0-47C5-89E3-B3929C558444}']
    { static Property Methods }
    {class} function _GetCLIENT_MSG_LENGTH: Integer;
    {class} function _GetSERVER_MSG_HEADER_LENGTH: Integer;
    {class} function _GetSERVER_MSG_DATA_LENGTH: Integer;
    {class} function _GetSERVER_MSG_LENGTH: Integer;
    {class} function _GetMSG_TYPE_UPDATE: Integer;
    {class} function _GetMSG_TYPE_QUIT: Integer;
    {class} function _GetMSG_TYPE_QRY: Integer;
    {class} function _GetMSG_TYPE_CONN: Integer;
    {class} function _GetACK_MSG_TYPE_QUERY: Integer;
    {class} function _GetACK_MSG_TYPE_UPDATE: Integer;
    {class} function _GetACK_MSG_TYPE_SHUTDOWN: Integer;
    {class} function _GetACK_MSG_TYPE_NEWSESSION: Integer;
    {class} function _GetACK_MSG_TYPE_CONNEC: Integer;

    { static Methods }
    {class} function init: JTQProtocol; cdecl;
    {class} function fetchServerFixHeaderV3: TJavaArray<Byte>; cdecl;
    {class} function fetchClientAckV3: TJavaArray<Byte>; cdecl;
    {class} function fetchHandshakeReqV3(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;

    { static Property }
    {class} property CLIENT_MSG_LENGTH: Integer read _GetCLIENT_MSG_LENGTH;
    {class} property SERVER_MSG_HEADER_LENGTH: Integer read _GetSERVER_MSG_HEADER_LENGTH;
    {class} property SERVER_MSG_DATA_LENGTH: Integer read _GetSERVER_MSG_DATA_LENGTH;
    {class} property SERVER_MSG_LENGTH: Integer read _GetSERVER_MSG_LENGTH;
    {class} property MSG_TYPE_UPDATE: Integer read _GetMSG_TYPE_UPDATE;
    {class} property MSG_TYPE_QUIT: Integer read _GetMSG_TYPE_QUIT;
    {class} property MSG_TYPE_QRY: Integer read _GetMSG_TYPE_QRY;
    {class} property MSG_TYPE_CONN: Integer read _GetMSG_TYPE_CONN;
    {class} property ACK_MSG_TYPE_QUERY: Integer read _GetACK_MSG_TYPE_QUERY;
    {class} property ACK_MSG_TYPE_UPDATE: Integer read _GetACK_MSG_TYPE_UPDATE;
    {class} property ACK_MSG_TYPE_SHUTDOWN: Integer read _GetACK_MSG_TYPE_SHUTDOWN;
    {class} property ACK_MSG_TYPE_NEWSESSION: Integer read _GetACK_MSG_TYPE_NEWSESSION;
    {class} property ACK_MSG_TYPE_CONNEC: Integer read _GetACK_MSG_TYPE_CONNEC;
  end;

  [JavaSignature('com/sangfor/ssl/service/timeqry/TQProtocol')]
  JTQProtocol = interface(JObject)
  ['{DD2A20F5-EF72-45F8-A23A-26B5C61C0220}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTQProtocol = class(TJavaGenericImport<JTQProtocolClass, JTQProtocol>) end;

  JCommon_AssertionFailedClass = interface(JObjectClass)
  ['{C3E487D3-233C-4D2F-AC9D-FC92DAE5FBEB}']
    { static Property Methods }

    { static Methods }
    {class} function init(msg: JString): JCommon_AssertionFailed; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/utils/Common$AssertionFailed')]
  JCommon_AssertionFailed = interface(JObject)
  ['{4ABAD125-710F-4824-A25C-70D43C70FCA9}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJCommon_AssertionFailed = class(TJavaGenericImport<JCommon_AssertionFailedClass, JCommon_AssertionFailed>) end;

  JCommonClass = interface(JObjectClass)
  ['{E05B0DF0-67D5-4551-92B7-ECB1CAA98937}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCommon; cdecl;
    {class} function hasVisit: Boolean; cdecl;
    {class} procedure setVisit(P1: Boolean); cdecl;
    {class} procedure ASSERT(msg: Boolean; P2: JString); cdecl;
    {class} function isChinese: Boolean; cdecl;
    {class} function isLanguageChange: Boolean; cdecl;
//    {class} procedure restartThinEC(cls: JContext; it: JClass); cdecl;
    {class} function settingIsAbleWork: Boolean; cdecl;
    {class} function StringIsEmpty(P1: JString): Boolean; cdecl;
    {class} function toInt(ch: JString): Integer; cdecl;
    {class} function updateVersion(minVersion: JString; serviceVersion: JString; local: JString): Integer; cdecl;
    {class} function versionToInt(P1: JString): Integer; cdecl;
    {class} function mbStringLength(totalLength: JString): Integer; cdecl;
    {class} function encrypt(byteArrayInputStream: JString): JString; cdecl;
    {class} function decrypt(crypto: JString): JString; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/utils/Common')]
  JCommon = interface(JObject)
  ['{74EFC629-5B7E-43E5-BB85-F8FE583E8AD9}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJCommon = class(TJavaGenericImport<JCommonClass, JCommon>) end;

  JIGeneralClass = interface(JObjectClass)
  ['{DBA54A7B-6049-4EA7-8B23-2700AC79EE28}']
    { static Property Methods }
    {class} function _GetCN_LANGUAGE: JString;
    {class} function _GetEN_LANGUAGE: JString;
    {class} function _GetVPN_VERSION_521: JString;
    {class} function _GetVPN_VERSION_53: JString;
    {class} function _GetVPN_VERSION_55: JString;
    {class} function _GetVPN_VERSION_56: JString;
    {class} function _GetVPN_VERSION_58: JString;
    {class} function _GetVPN_VERSION_60: JString;
    {class} function _GetVPN_VERSION_60_VDI_10: JString;
    {class} function _GetVPN_VERSION_60_VDI_20: JString;
    {class} function _GetVPN_VERSION_62_VDI_20: JString;
    {class} function _GetVPN_VERINT_521: Integer;
    {class} function _GetVPN_VERINT_53: Integer;
    {class} function _GetVPN_VERINT_55: Integer;
    {class} function _GetVPN_VERINT_56: Integer;
    {class} function _GetVPN_VERINT_58: Integer;
    {class} function _GetVPN_VERINT_60: Integer;
    {class} function _GetVPN_VERINT_60_VDI_10: Integer;
    {class} function _GetVPN_VERINT_60_VDI_20: Integer;
    {class} function _GetVPN_VERINT_62_VDI_20: Integer;
    {class} function _GetCURRENT_VERSION: JString;
    {class} function _GetCURRENT_VERSION_INT: Integer;
    {class} function _GetSUPPORT_VERSION_MIN: JString;
    {class} function _GetSUPPORT_L3VPN_MIN: JString;
    {class} function _GetSUPPORT_L3VPN_MIN_INT: Integer;
    {class} function _GetSUPPORT_L3VPN_MIN_SDK: Integer;
    {class} function _GetVERSION_NONE: Integer;
    {class} function _GetVERSION_UPDATE: Integer;
    {class} function _GetVERSION_INVALID: Integer;
    {class} function _GetVERSION_FAIL: Integer;
    {class} function _GetINSTALL_TIME_KEY: JString;
    {class} function _GetDEFAULT_SSL_PORT: Integer;
    {class} function _GetTIMEQRY_SLEEP: Integer;
    {class} function _GetTIMEQRY_MINI_SLEEP: Integer;
    {class} function _GetRE_CONN_TIMEQRY_TIME: Integer;
    {class} function _GetTIMEQRY_INTERRUPT_TIME: Integer;
    {class} function _GetTIMEQRY_STATIE_ONLINE: Integer;
    {class} function _GetTIMEQRY_STATIE_OFFLINE: Integer;
    {class} function _GetTIMEQRY_NOTIFY_TYPE: JString;
    {class} function _GetTIMEQRY_NOTIFY_TWFID: JString;
    {class} function _GetTIMEQRY_PARAM_TWFID: JString;
    {class} function _GetTIMEQRY_PARAM_IPADDR: JString;
    {class} function _GetTIMEQRY_PARAM_PORT: JString;
    {class} function _GetACTIVITY_INTENT_CANCEL: JString;
    {class} function _GetLINE_CONN_SERVICE_TIMEOUT: Integer;
    {class} function _GetCHOOSE_LINE_SLEEP: Integer;
    {class} function _GetSERVICE_ADDR: JString;
    {class} function _GetLOG_TAG_PPTP: JString;
    {class} function _GetLOG_TAG_STRANG: JString;
    {class} function _GetLOG_TAG_NETWORK: JString;
    {class} function _GetLOG_TAG_AUTH: JString;
    {class} function _GetLOG_TAG_RESOURCE: JString;
    {class} function _GetLOG_TAG_SETTING: JString;
    {class} function _GetLOG_TAG_TIMEQRY: JString;
    {class} function _GetLOG_TAG_STATE: JString;
    {class} function _GetBROADCAST_ACTION_OOM: JString;
    {class} function _GetSERVICE_ACTION_TIMEQRY: JString;
    {class} function _GetSERVICE_ACTION_L3VPN: JString;
    {class} function _GetBROADCAST_ACTION_TIMEQRY: JString;
    {class} function _GetBROADCAST_ACTION_TIMEQRY_MSG: Integer;
    {class} function _GetBROADCAST_ACTION_LOGINOUT: Integer;
    {class} function _GetBROADCAST_ACTION_UPDATE: Integer;
    {class} function _GetBROADCAST_ACTION_ONLINE: Integer;
    {class} function _GetBROADCAST_ACTION_OFFLINE: Integer;
    {class} function _GetETHERNET_STATE_CHANGED_ACTION: JString;
    {class} function _GetEXTRA_ETHERNET_STATE: JString;
    {class} function _GetETHER_STATE_DISCONNECTED: Integer;
    {class} function _GetETHER_STATE_CONNECTING: Integer;
    {class} function _GetETHER_STATE_CONNECTED: Integer;
    {class} function _GetHTTP_TYPE_PORT: JString;
    {class} function _GetHTTP_TYPE_GET: JString;
    {class} function _GetPROTO_HTTP_HEAD: JString;
    {class} function _GetPROTO_HTTPS_HEAD: JString;
    {class} function _GetHTTP_HEAD_USER_AGENT: JString;
    {class} function _GetHTTP_HEAD_COOKIE: JString;
    {class} function _GetHTTP_HEAD_CONTENT: JString;
    {class} function _GetHTTP_HEAD_CHARSET: JString;
    {class} function _GetHTTP_HEAD_RES_COOKIE: JString;
    {class} function _GetUSER_AGENT_VALUE_DEFAULT: JString;
    {class} function _GetHTTP_READ_LENGTH: Integer;
    {class} function _GetHTTP_KEEPALIVE_ERR_SDK: Integer;
    {class} function _GetHTTP_CERT_ERR_SDK: Integer;
    {class} function _GetHTTP_CONN_ERR_SDK: Integer;
    {class} function _GetAUTH_TYPE_CERT: Integer;
    {class} function _GetAUTH_TYPE_PWD: Integer;
    {class} function _GetAUTH_TYPE_SMS: Integer;
    {class} function _GetAUTH_TYPE_REGETSMS: Integer;
    {class} function _GetAUTH_TYPE_HID: Integer;
    {class} function _GetAUTH_TYPE_USBKEY: Integer;
    {class} function _GetAUTH_TYPE_RADIUS: Integer;
    {class} function _GetAUTH_TYPE_TOKEN: Integer;
    {class} function _GetAUTH_TYPE_TWFID: Integer;
    {class} function _GetAUTH_RESULT_FAIL: Integer;
    {class} function _GetAUTH_RESULT_SUCCESS: Integer;
    {class} function _GetAUTH_RESULT_SUCCESS_NEXT: Integer;
    {class} function _GetAUTH_RESULT_SESSION_TIMEOUT: Integer;
    {class} function _GetCOOKIE_TWFID_STRING: JString;
    {class} function _GetPOST_TOKEN_STRING: JString;
    {class} function _GetPOST_RADIUS_STRING: JString;
    {class} function _GetPOST_HIDCODE_STRING: JString;
    {class} function _GetPOST_SMSCODE_STRING: JString;
    {class} function _GetPOST_USERNAME_STRING: JString;
    {class} function _GetPOST_PWD_STRING: JString;
    {class} function _GetPOST_CODE_STRING: JString;
    {class} function _GetWEBAGENT_SINGLE_TAG1: JString;
    {class} function _GetWEBAGENT_SINGLE_TAG2: JString;
    {class} function _GetWEBAGENT_SINGLE_TAG3: JString;
    {class} function _GetWEBAGENT_IMG_TAG3: JString;
    {class} function _GetWEBAGENT_IMGACTIVE_TAG3: JString;
    {class} function _GetMULTILINE_INDEX_TAG1: JString;
    {class} function _GetMULTILINE_INDEX_TAG2: JString;
    {class} function _GetMULTILINE_INDEX_TAG3: JString;
    {class} function _GetMULTILINE_IMG_TAG: JString;
    {class} function _GetGET_HTTPS_ADDR: JString;
    {class} function _GetLINE_ERROR_CODE_URL_EMPTY: Integer;
    {class} function _GetLINE_ERROR_CODE_NOT_CONN: Integer;
    {class} function _GetLINE_ERROR_CODE_NOT_ADDR: Integer;
    {class} function _GetHIGH_LIGHT_ITEM_COLOR: Integer;
    {class} function _GetTABLET_MIN_VERSION: Integer;
    {class} function _GetPHONE_DEV: JString;
    {class} function _GetTABLET_DEV: JString;
    {class} function _GetTIMEQRY_ERROR_SLEEP: Integer;
    {class} function _GetLOSSY_TYPE_NONE: Integer;
    {class} function _GetLOSSY_TYPE_JPEG: Integer;
    {class} function _GetMERGE_TYPE_NONE: Integer;
    {class} function _GetMERGE_TYPE_FORCED: Integer;
    {class} function _GetMERGE_TYPE_ADAPTIVE: Integer;
    {class} function _GetBUSINESS_CIPHER_SUITE: JString;
    {class} function _GetNATION_CIPHER_SUITE: JString;
    {class} function _GetVERSION_TYPE_SSL: Integer;
    {class} function _GetVERSION_TYPE_VSP: Integer;
    {class} function _GetVERSION_TYPE_VDI: Integer;
    {class} function _GetHTTP_OK: Integer;
    {class} function _GetHTTP_MOVED_PERM: Integer;
    {class} function _GetHTTP_MOVED_TEMP: Integer;

    { static Methods }

    { static Property }
    {class} property CN_LANGUAGE: JString read _GetCN_LANGUAGE;
    {class} property EN_LANGUAGE: JString read _GetEN_LANGUAGE;
    {class} property VPN_VERSION_521: JString read _GetVPN_VERSION_521;
    {class} property VPN_VERSION_53: JString read _GetVPN_VERSION_53;
    {class} property VPN_VERSION_55: JString read _GetVPN_VERSION_55;
    {class} property VPN_VERSION_56: JString read _GetVPN_VERSION_56;
    {class} property VPN_VERSION_58: JString read _GetVPN_VERSION_58;
    {class} property VPN_VERSION_60: JString read _GetVPN_VERSION_60;
    {class} property VPN_VERSION_60_VDI_10: JString read _GetVPN_VERSION_60_VDI_10;
    {class} property VPN_VERSION_60_VDI_20: JString read _GetVPN_VERSION_60_VDI_20;
    {class} property VPN_VERSION_62_VDI_20: JString read _GetVPN_VERSION_62_VDI_20;
    {class} property VPN_VERINT_521: Integer read _GetVPN_VERINT_521;
    {class} property VPN_VERINT_53: Integer read _GetVPN_VERINT_53;
    {class} property VPN_VERINT_55: Integer read _GetVPN_VERINT_55;
    {class} property VPN_VERINT_56: Integer read _GetVPN_VERINT_56;
    {class} property VPN_VERINT_58: Integer read _GetVPN_VERINT_58;
    {class} property VPN_VERINT_60: Integer read _GetVPN_VERINT_60;
    {class} property VPN_VERINT_60_VDI_10: Integer read _GetVPN_VERINT_60_VDI_10;
    {class} property VPN_VERINT_60_VDI_20: Integer read _GetVPN_VERINT_60_VDI_20;
    {class} property VPN_VERINT_62_VDI_20: Integer read _GetVPN_VERINT_62_VDI_20;
    {class} property CURRENT_VERSION: JString read _GetCURRENT_VERSION;
    {class} property CURRENT_VERSION_INT: Integer read _GetCURRENT_VERSION_INT;
    {class} property SUPPORT_VERSION_MIN: JString read _GetSUPPORT_VERSION_MIN;
    {class} property SUPPORT_L3VPN_MIN: JString read _GetSUPPORT_L3VPN_MIN;
    {class} property SUPPORT_L3VPN_MIN_INT: Integer read _GetSUPPORT_L3VPN_MIN_INT;
    {class} property SUPPORT_L3VPN_MIN_SDK: Integer read _GetSUPPORT_L3VPN_MIN_SDK;
    {class} property VERSION_NONE: Integer read _GetVERSION_NONE;
    {class} property VERSION_UPDATE: Integer read _GetVERSION_UPDATE;
    {class} property VERSION_INVALID: Integer read _GetVERSION_INVALID;
    {class} property VERSION_FAIL: Integer read _GetVERSION_FAIL;
    {class} property INSTALL_TIME_KEY: JString read _GetINSTALL_TIME_KEY;
    {class} property DEFAULT_SSL_PORT: Integer read _GetDEFAULT_SSL_PORT;
    {class} property TIMEQRY_SLEEP: Integer read _GetTIMEQRY_SLEEP;
    {class} property TIMEQRY_MINI_SLEEP: Integer read _GetTIMEQRY_MINI_SLEEP;
    {class} property RE_CONN_TIMEQRY_TIME: Integer read _GetRE_CONN_TIMEQRY_TIME;
    {class} property TIMEQRY_INTERRUPT_TIME: Integer read _GetTIMEQRY_INTERRUPT_TIME;
    {class} property TIMEQRY_STATIE_ONLINE: Integer read _GetTIMEQRY_STATIE_ONLINE;
    {class} property TIMEQRY_STATIE_OFFLINE: Integer read _GetTIMEQRY_STATIE_OFFLINE;
    {class} property TIMEQRY_NOTIFY_TYPE: JString read _GetTIMEQRY_NOTIFY_TYPE;
    {class} property TIMEQRY_NOTIFY_TWFID: JString read _GetTIMEQRY_NOTIFY_TWFID;
    {class} property TIMEQRY_PARAM_TWFID: JString read _GetTIMEQRY_PARAM_TWFID;
    {class} property TIMEQRY_PARAM_IPADDR: JString read _GetTIMEQRY_PARAM_IPADDR;
    {class} property TIMEQRY_PARAM_PORT: JString read _GetTIMEQRY_PARAM_PORT;
    {class} property ACTIVITY_INTENT_CANCEL: JString read _GetACTIVITY_INTENT_CANCEL;
    {class} property LINE_CONN_SERVICE_TIMEOUT: Integer read _GetLINE_CONN_SERVICE_TIMEOUT;
    {class} property CHOOSE_LINE_SLEEP: Integer read _GetCHOOSE_LINE_SLEEP;
    {class} property SERVICE_ADDR: JString read _GetSERVICE_ADDR;
    {class} property LOG_TAG_PPTP: JString read _GetLOG_TAG_PPTP;
    {class} property LOG_TAG_STRANG: JString read _GetLOG_TAG_STRANG;
    {class} property LOG_TAG_NETWORK: JString read _GetLOG_TAG_NETWORK;
    {class} property LOG_TAG_AUTH: JString read _GetLOG_TAG_AUTH;
    {class} property LOG_TAG_RESOURCE: JString read _GetLOG_TAG_RESOURCE;
    {class} property LOG_TAG_SETTING: JString read _GetLOG_TAG_SETTING;
    {class} property LOG_TAG_TIMEQRY: JString read _GetLOG_TAG_TIMEQRY;
    {class} property LOG_TAG_STATE: JString read _GetLOG_TAG_STATE;
    {class} property BROADCAST_ACTION_OOM: JString read _GetBROADCAST_ACTION_OOM;
    {class} property SERVICE_ACTION_TIMEQRY: JString read _GetSERVICE_ACTION_TIMEQRY;
    {class} property SERVICE_ACTION_L3VPN: JString read _GetSERVICE_ACTION_L3VPN;
    {class} property BROADCAST_ACTION_TIMEQRY: JString read _GetBROADCAST_ACTION_TIMEQRY;
    {class} property BROADCAST_ACTION_TIMEQRY_MSG: Integer read _GetBROADCAST_ACTION_TIMEQRY_MSG;
    {class} property BROADCAST_ACTION_LOGINOUT: Integer read _GetBROADCAST_ACTION_LOGINOUT;
    {class} property BROADCAST_ACTION_UPDATE: Integer read _GetBROADCAST_ACTION_UPDATE;
    {class} property BROADCAST_ACTION_ONLINE: Integer read _GetBROADCAST_ACTION_ONLINE;
    {class} property BROADCAST_ACTION_OFFLINE: Integer read _GetBROADCAST_ACTION_OFFLINE;
    {class} property ETHERNET_STATE_CHANGED_ACTION: JString read _GetETHERNET_STATE_CHANGED_ACTION;
    {class} property EXTRA_ETHERNET_STATE: JString read _GetEXTRA_ETHERNET_STATE;
    {class} property ETHER_STATE_DISCONNECTED: Integer read _GetETHER_STATE_DISCONNECTED;
    {class} property ETHER_STATE_CONNECTING: Integer read _GetETHER_STATE_CONNECTING;
    {class} property ETHER_STATE_CONNECTED: Integer read _GetETHER_STATE_CONNECTED;
    {class} property HTTP_TYPE_PORT: JString read _GetHTTP_TYPE_PORT;
    {class} property HTTP_TYPE_GET: JString read _GetHTTP_TYPE_GET;
    {class} property PROTO_HTTP_HEAD: JString read _GetPROTO_HTTP_HEAD;
    {class} property PROTO_HTTPS_HEAD: JString read _GetPROTO_HTTPS_HEAD;
    {class} property HTTP_HEAD_USER_AGENT: JString read _GetHTTP_HEAD_USER_AGENT;
    {class} property HTTP_HEAD_COOKIE: JString read _GetHTTP_HEAD_COOKIE;
    {class} property HTTP_HEAD_CONTENT: JString read _GetHTTP_HEAD_CONTENT;
    {class} property HTTP_HEAD_CHARSET: JString read _GetHTTP_HEAD_CHARSET;
    {class} property HTTP_HEAD_RES_COOKIE: JString read _GetHTTP_HEAD_RES_COOKIE;
    {class} property USER_AGENT_VALUE_DEFAULT: JString read _GetUSER_AGENT_VALUE_DEFAULT;
    {class} property HTTP_READ_LENGTH: Integer read _GetHTTP_READ_LENGTH;
    {class} property HTTP_KEEPALIVE_ERR_SDK: Integer read _GetHTTP_KEEPALIVE_ERR_SDK;
    {class} property HTTP_CERT_ERR_SDK: Integer read _GetHTTP_CERT_ERR_SDK;
    {class} property HTTP_CONN_ERR_SDK: Integer read _GetHTTP_CONN_ERR_SDK;
    {class} property AUTH_TYPE_CERT: Integer read _GetAUTH_TYPE_CERT;
    {class} property AUTH_TYPE_PWD: Integer read _GetAUTH_TYPE_PWD;
    {class} property AUTH_TYPE_SMS: Integer read _GetAUTH_TYPE_SMS;
    {class} property AUTH_TYPE_REGETSMS: Integer read _GetAUTH_TYPE_REGETSMS;
    {class} property AUTH_TYPE_HID: Integer read _GetAUTH_TYPE_HID;
    {class} property AUTH_TYPE_USBKEY: Integer read _GetAUTH_TYPE_USBKEY;
    {class} property AUTH_TYPE_RADIUS: Integer read _GetAUTH_TYPE_RADIUS;
    {class} property AUTH_TYPE_TOKEN: Integer read _GetAUTH_TYPE_TOKEN;
    {class} property AUTH_TYPE_TWFID: Integer read _GetAUTH_TYPE_TWFID;
    {class} property AUTH_RESULT_FAIL: Integer read _GetAUTH_RESULT_FAIL;
    {class} property AUTH_RESULT_SUCCESS: Integer read _GetAUTH_RESULT_SUCCESS;
    {class} property AUTH_RESULT_SUCCESS_NEXT: Integer read _GetAUTH_RESULT_SUCCESS_NEXT;
    {class} property AUTH_RESULT_SESSION_TIMEOUT: Integer read _GetAUTH_RESULT_SESSION_TIMEOUT;
    {class} property COOKIE_TWFID_STRING: JString read _GetCOOKIE_TWFID_STRING;
    {class} property POST_TOKEN_STRING: JString read _GetPOST_TOKEN_STRING;
    {class} property POST_RADIUS_STRING: JString read _GetPOST_RADIUS_STRING;
    {class} property POST_HIDCODE_STRING: JString read _GetPOST_HIDCODE_STRING;
    {class} property POST_SMSCODE_STRING: JString read _GetPOST_SMSCODE_STRING;
    {class} property POST_USERNAME_STRING: JString read _GetPOST_USERNAME_STRING;
    {class} property POST_PWD_STRING: JString read _GetPOST_PWD_STRING;
    {class} property POST_CODE_STRING: JString read _GetPOST_CODE_STRING;
    {class} property WEBAGENT_SINGLE_TAG1: JString read _GetWEBAGENT_SINGLE_TAG1;
    {class} property WEBAGENT_SINGLE_TAG2: JString read _GetWEBAGENT_SINGLE_TAG2;
    {class} property WEBAGENT_SINGLE_TAG3: JString read _GetWEBAGENT_SINGLE_TAG3;
    {class} property WEBAGENT_IMG_TAG3: JString read _GetWEBAGENT_IMG_TAG3;
    {class} property WEBAGENT_IMGACTIVE_TAG3: JString read _GetWEBAGENT_IMGACTIVE_TAG3;
    {class} property MULTILINE_INDEX_TAG1: JString read _GetMULTILINE_INDEX_TAG1;
    {class} property MULTILINE_INDEX_TAG2: JString read _GetMULTILINE_INDEX_TAG2;
    {class} property MULTILINE_INDEX_TAG3: JString read _GetMULTILINE_INDEX_TAG3;
    {class} property MULTILINE_IMG_TAG: JString read _GetMULTILINE_IMG_TAG;
    {class} property GET_HTTPS_ADDR: JString read _GetGET_HTTPS_ADDR;
    {class} property LINE_ERROR_CODE_URL_EMPTY: Integer read _GetLINE_ERROR_CODE_URL_EMPTY;
    {class} property LINE_ERROR_CODE_NOT_CONN: Integer read _GetLINE_ERROR_CODE_NOT_CONN;
    {class} property LINE_ERROR_CODE_NOT_ADDR: Integer read _GetLINE_ERROR_CODE_NOT_ADDR;
    {class} property HIGH_LIGHT_ITEM_COLOR: Integer read _GetHIGH_LIGHT_ITEM_COLOR;
    {class} property TABLET_MIN_VERSION: Integer read _GetTABLET_MIN_VERSION;
    {class} property PHONE_DEV: JString read _GetPHONE_DEV;
    {class} property TABLET_DEV: JString read _GetTABLET_DEV;
    {class} property TIMEQRY_ERROR_SLEEP: Integer read _GetTIMEQRY_ERROR_SLEEP;
    {class} property LOSSY_TYPE_NONE: Integer read _GetLOSSY_TYPE_NONE;
    {class} property LOSSY_TYPE_JPEG: Integer read _GetLOSSY_TYPE_JPEG;
    {class} property MERGE_TYPE_NONE: Integer read _GetMERGE_TYPE_NONE;
    {class} property MERGE_TYPE_FORCED: Integer read _GetMERGE_TYPE_FORCED;
    {class} property MERGE_TYPE_ADAPTIVE: Integer read _GetMERGE_TYPE_ADAPTIVE;
    {class} property BUSINESS_CIPHER_SUITE: JString read _GetBUSINESS_CIPHER_SUITE;
    {class} property NATION_CIPHER_SUITE: JString read _GetNATION_CIPHER_SUITE;
    {class} property VERSION_TYPE_SSL: Integer read _GetVERSION_TYPE_SSL;
    {class} property VERSION_TYPE_VSP: Integer read _GetVERSION_TYPE_VSP;
    {class} property VERSION_TYPE_VDI: Integer read _GetVERSION_TYPE_VDI;
    {class} property HTTP_OK: Integer read _GetHTTP_OK;
    {class} property HTTP_MOVED_PERM: Integer read _GetHTTP_MOVED_PERM;
    {class} property HTTP_MOVED_TEMP: Integer read _GetHTTP_MOVED_TEMP;
  end;

  [JavaSignature('com/sangfor/ssl/service/utils/IGeneral')]
  JIGeneral = interface(IJavaInstance)
  ['{30AE2171-A566-4587-BA07-E81B849E4FC5}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIGeneral = class(TJavaGenericImport<JIGeneralClass, JIGeneral>) end;

  JLogClass = interface(JObjectClass)
  ['{EFF5DD6E-8E76-4F6E-8A8D-6C969EA41B1B}']
    { static Property Methods }
    {class} function _GetERROR: Integer;
    {class} function _GetWARN: Integer;
    {class} function _GetINFO: Integer;
    {class} function _GetDEBUG: Integer;
    {class} function _GetLEVEL: Integer;

    { static Methods }
    {class} function init: JLog; overload;cdecl;
    {class} procedure init(P1: JContext); overload;cdecl;
    {class} procedure shutdown; cdecl;
    {class} procedure error(msg: JString; s: JString); cdecl; overload;
    {class} procedure error(msg: JString; tr: JString; s: JThrowable); cdecl; overload;
    {class} procedure warn(msg: JString; s: JString); cdecl; overload;
    {class} procedure warn(msg: JString; tr: JString; s: JThrowable); cdecl; overload;
    {class} procedure info(msg: JString; s: JString); cdecl; overload;
    {class} procedure info(msg: JString; tr: JString; s: JThrowable); cdecl; overload;
    {class} procedure debug(msg: JString; s: JString); cdecl; overload;
    {class} procedure debug(msg: JString; tr: JString; s: JThrowable); cdecl; overload;
    {class} procedure SCOV; cdecl;
    {class} procedure flush; cdecl;
    {class} function getLogcat: JString; cdecl;
    {class} function getDeviceInfo: JString; cdecl;
    {class} procedure packLogs(os: JFile); cdecl;

    { static Property }
    {class} property ERROR: Integer read _GetERROR;
    {class} property WARN: Integer read _GetWARN;
    {class} property INFO: Integer read _GetINFO;
    {class} property DEBUG: Integer read _GetDEBUG;
    {class} property LEVEL: Integer read _GetLEVEL;
  end;

  [JavaSignature('com/sangfor/ssl/service/utils/logger/Log')]
  JLog = interface(JObject)
  ['{34502D22-BEE7-4C32-A104-3F975512DD35}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLog = class(TJavaGenericImport<JLogClass, JLog>) end;

  JHttpConnect_TrustAnyHostnameVerifierClass = interface(JObjectClass)
  ['{97E5226F-45F7-4B24-A8C3-4F6B5C81632A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JHttpConnect_TrustAnyHostnameVerifier; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/utils/network/HttpConnect$TrustAnyHostnameVerifier')]
  JHttpConnect_TrustAnyHostnameVerifier = interface(JObject)
  ['{108F81E4-A36B-4FC5-9CE7-D1E069662367}']
    { Property Methods }

    { methods }
//    function verify(hostname: JString; session: JSSLSession): Boolean; cdecl;

    { Property }
  end;

  TJHttpConnect_TrustAnyHostnameVerifier = class(TJavaGenericImport<JHttpConnect_TrustAnyHostnameVerifierClass, JHttpConnect_TrustAnyHostnameVerifier>) end;

  JHttpConnect_TrustAnyTrustManagerClass = interface(JObjectClass)
  ['{CB78B1E7-81C4-4231-81B4-AEE57BDF7FCE}']
    { static Property Methods }

    { static Methods }
    {class} function init: JHttpConnect_TrustAnyTrustManager; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/utils/network/HttpConnect$TrustAnyTrustManager')]
  JHttpConnect_TrustAnyTrustManager = interface(JObject)
  ['{D50ACEF8-6B60-4578-BD22-37F059009DB6}']
    { Property Methods }

    { methods }
    procedure checkClientTrusted(chain: TJavaObjectArray<JX509Certificate>; authType: JString); cdecl;
    procedure checkServerTrusted(chain: TJavaObjectArray<JX509Certificate>; authType: JString); cdecl;
    function getAcceptedIssuers: TJavaObjectArray<JX509Certificate>; cdecl;

    { Property }
  end;

  TJHttpConnect_TrustAnyTrustManager = class(TJavaGenericImport<JHttpConnect_TrustAnyTrustManagerClass, JHttpConnect_TrustAnyTrustManager>) end;

  JHttpConnectClass = interface(JObjectClass)
  ['{5333A5E4-26E0-42FD-869E-AFB3D1DF339A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JHttpConnect; cdecl;
    {class} procedure initializeCookies; cdecl;
    {class} function isHttpsAddr(P1: JString): Boolean; cdecl;
    {class} function isHttpAddr(P1: JString): Boolean; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/utils/network/HttpConnect')]
  JHttpConnect = interface(JObject)
  ['{5F816407-5014-452C-A619-3ADDD43EA088}']
    { Property Methods }

    { methods }
//    procedure addCookie(cookie: JBasicClientCookie); cdecl;
//    procedure delCookie(cookie: JBasicClientCookie); cdecl;
    function getAllCookie: JList; cdecl;
    function getCookie(src: JString; name: JString): JString; cdecl;
    procedure setCookie(src: JString; name: JString; value: JString); cdecl;
//    procedure setSSLContext(sslContext: JSSLContext); cdecl;
    procedure setTimeOut(time: Integer); cdecl;
    procedure setDoOutput(isDoOutput: Boolean); cdecl;
    procedure setUseCache(isUseCache: Boolean); cdecl;
    procedure setAddDevParam(isAddDevParam: Boolean); cdecl;
    procedure setUploadFile(afile: JFile); cdecl;
    function getTimeOut: Integer; cdecl;
    function getResponseCode: Integer; cdecl;
    procedure addRequestHeader(key: JString; value: JString); cdecl;
    function requestStringWithURL(url: JString; params: JMap): JString; cdecl; overload;
    function requestStringWithURL(url: JString; params: JMap; atype: JString): JString; cdecl; overload;
    function requestStringWithURL(url: JString; params: JMap; atype: JString; cipher: JString): JString; cdecl; overload;
    function requestWithURL(url: JString; params: JMap): TJavaArray<Byte>; cdecl; overload;
    function requestWithURL(url: JString; params: JMap; atype: JString): TJavaArray<Byte>; cdecl; overload;
    function request(url: JString; head: JMap; param: JMap; atype: JString; timeOut: Integer): TJavaArray<Byte>; cdecl;

    { Property }
  end;

  TJHttpConnect = class(TJavaGenericImport<JHttpConnectClass, JHttpConnect>) end;

  JHttpHeadReaderClass = interface(JObjectClass)
  ['{E671D450-3C6C-41FD-82F3-B8768254AAFF}']
    { static Property Methods }

    { static Methods }
    {class} function init: JHttpHeadReader; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/utils/network/HttpHeadReader')]
  JHttpHeadReader = interface(JObject)
  ['{D9174711-5152-45EA-ABA5-327FBDE270B7}']
    { Property Methods }

    { methods }
    function parseHttpHeader(stream: JString): JString; cdecl;
    function statusCode: Integer; cdecl;
    function httpBody: JString; cdecl;
    function httpLocation: JString; cdecl;

    { Property }
  end;

  TJHttpHeadReader = class(TJavaGenericImport<JHttpHeadReaderClass, JHttpHeadReader>) end;

  JXmlReaderClass = interface(JObjectClass)
  ['{14D629FB-9874-439E-9159-1E8045D52666}']
    { static Property Methods }

    { static Methods }
    {class} function init: JXmlReader; cdecl;
    {class} function parse(P1: JString): JMap; cdecl;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/service/utils/xml/XmlReader')]
  JXmlReader = interface(JObject)
  ['{CC3ED451-9CCF-4916-B1A7-BE24CA34CA3C}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJXmlReader = class(TJavaGenericImport<JXmlReaderClass, JXmlReader>) end;

  JSFExceptionClass = interface(JObjectClass)
  ['{167CAC82-3CB9-416E-A3D0-D6265ECEA4F3}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSFException; cdecl; overload;
    {class} function init(reason: JString): JSFException; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/sangfor/ssl/SFException')]
  JSFException = interface(JObject)
  ['{209B39AA-0F18-4F87-80C2-CB2ADF3A094C}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJSFException = class(TJavaGenericImport<JSFExceptionClass, JSFException>) end;

{$ENDIF}
implementation
{$IFDEF ANDROID}


procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JVpnCommon',
    TypeInfo(Androidapi.JNI.SangforSDK.JVpnCommon));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSangforAuthForward_CallbackHandler',
    TypeInfo(Androidapi.JNI.SangforSDK.JSangforAuthForward_CallbackHandler));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSangforAuthForward',
    TypeInfo(Androidapi.JNI.SangforSDK.JSangforAuthForward));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSangforNbAuth',
    TypeInfo(Androidapi.JNI.SangforSDK.JSangforNbAuth));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JAuthController_1',
//    TypeInfo(Androidapi.JNI.SangforSDK.JAuthController_1));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JAuthController_2',
//    TypeInfo(Androidapi.JNI.SangforSDK.JAuthController_2));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JAuthController_3',
//    TypeInfo(Androidapi.JNI.SangforSDK.JAuthController_3));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JAuthController_4',
//    TypeInfo(Androidapi.JNI.SangforSDK.JAuthController_4));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JAuthController_AuthTask_1',
//    TypeInfo(Androidapi.JNI.SangforSDK.JAuthController_AuthTask_1));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JAuthController_AuthTask',
    TypeInfo(Androidapi.JNI.SangforSDK.JAuthController_AuthTask));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JAuthController_CancelTask',
    TypeInfo(Androidapi.JNI.SangforSDK.JAuthController_CancelTask));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JAuthController',
    TypeInfo(Androidapi.JNI.SangforSDK.JAuthController));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JL3vpnController_1',
//    TypeInfo(Androidapi.JNI.SangforSDK.JL3vpnController_1));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JL3vpnController_2',
//    TypeInfo(Androidapi.JNI.SangforSDK.JL3vpnController_2));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JL3vpnController',
    TypeInfo(Androidapi.JNI.SangforSDK.JL3vpnController));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSangforL3vpnAuth_CallbackHandler',
    TypeInfo(Androidapi.JNI.SangforSDK.JSangforL3vpnAuth_CallbackHandler));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSangforL3vpnAuth_CheckUpdateThread',
    TypeInfo(Androidapi.JNI.SangforSDK.JSangforL3vpnAuth_CheckUpdateThread));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSangforL3vpnAuth',
    TypeInfo(Androidapi.JNI.SangforSDK.JSangforL3vpnAuth));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JISangforAuth',
    TypeInfo(Androidapi.JNI.SangforSDK.JISangforAuth));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JIVpnDelegate',
    TypeInfo(Androidapi.JNI.SangforSDK.JIVpnDelegate));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JIPRcManager_1',
//    TypeInfo(Androidapi.JNI.SangforSDK.JIPRcManager_1));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JIPRcManager',
    TypeInfo(Androidapi.JNI.SangforSDK.JIPRcManager));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JServiceConstant',
    TypeInfo(Androidapi.JNI.SangforSDK.JServiceConstant));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JServiceException',
    TypeInfo(Androidapi.JNI.SangforSDK.JServiceException));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSvpnService',
    TypeInfo(Androidapi.JNI.SangforSDK.JSvpnService));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSvpnServiceManager',
    TypeInfo(Androidapi.JNI.SangforSDK.JSvpnServiceManager));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JBase64_Coder',
    TypeInfo(Androidapi.JNI.SangforSDK.JBase64_Coder));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JBase64_Decoder',
    TypeInfo(Androidapi.JNI.SangforSDK.JBase64_Decoder));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JBase64_Encoder',
    TypeInfo(Androidapi.JNI.SangforSDK.JBase64_Encoder));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JBase64',
    TypeInfo(Androidapi.JNI.SangforSDK.JBase64));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JCrypto',
    TypeInfo(Androidapi.JNI.SangforSDK.JCrypto));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSangforAuth',
    TypeInfo(Androidapi.JNI.SangforSDK.JSangforAuth));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JAuthentication_InvalidFormatException',
    TypeInfo(Androidapi.JNI.SangforSDK.JAuthentication_InvalidFormatException));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JAuthentication',
    TypeInfo(Androidapi.JNI.SangforSDK.JAuthentication));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JCertAuth_CertAuth22',
    TypeInfo(Androidapi.JNI.SangforSDK.JCertAuth_CertAuth22));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JCertAuth_TrustAnyTrustManager',
    TypeInfo(Androidapi.JNI.SangforSDK.JCertAuth_TrustAnyTrustManager));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JCertAuth',
    TypeInfo(Androidapi.JNI.SangforSDK.JCertAuth));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JCertFileListItem',
    TypeInfo(Androidapi.JNI.SangforSDK.JCertFileListItem));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JChallengeAuth',
    TypeInfo(Androidapi.JNI.SangforSDK.JChallengeAuth));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JEmptyAuth',
    TypeInfo(Androidapi.JNI.SangforSDK.JEmptyAuth));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JHardIdAuth',
    TypeInfo(Androidapi.JNI.SangforSDK.JHardIdAuth));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JPasswordAuth',
    TypeInfo(Androidapi.JNI.SangforSDK.JPasswordAuth));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JPKCS12Cert_CertExistException',
    TypeInfo(Androidapi.JNI.SangforSDK.JPKCS12Cert_CertExistException));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JPKCS12Cert_X509Exception',
    TypeInfo(Androidapi.JNI.SangforSDK.JPKCS12Cert_X509Exception));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JPKCS12Cert',
    TypeInfo(Androidapi.JNI.SangforSDK.JPKCS12Cert));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSmsAuth',
    TypeInfo(Androidapi.JNI.SangforSDK.JSmsAuth));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JTokenAuth',
    TypeInfo(Androidapi.JNI.SangforSDK.JTokenAuth));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JDataManager',
    TypeInfo(Androidapi.JNI.SangforSDK.JDataManager));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JLineHandler_1',
//    TypeInfo(Androidapi.JNI.SangforSDK.JLineHandler_1));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JLineHandler_LineUnit',
    TypeInfo(Androidapi.JNI.SangforSDK.JLineHandler_LineUnit));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JLineHandler',
    TypeInfo(Androidapi.JNI.SangforSDK.JLineHandler));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JLineHandlerListener',
    TypeInfo(Androidapi.JNI.SangforSDK.JLineHandlerListener));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JMultiLineHandler',
    TypeInfo(Androidapi.JNI.SangforSDK.JMultiLineHandler));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JWebAgentHandler',
    TypeInfo(Androidapi.JNI.SangforSDK.JWebAgentHandler));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JResourceManager_ResourceHandler',
    TypeInfo(Androidapi.JNI.SangforSDK.JResourceManager_ResourceHandler));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JResourceManager',
    TypeInfo(Androidapi.JNI.SangforSDK.JResourceManager));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSettingManager_1',
//    TypeInfo(Androidapi.JNI.SangforSDK.JSettingManager_1));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSettingManager_1Rec',
//    TypeInfo(Androidapi.JNI.SangforSDK.JSettingManager_1Rec));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSettingManager',
    TypeInfo(Androidapi.JNI.SangforSDK.JSettingManager));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSystemConfiguration_VpnInfo',
    TypeInfo(Androidapi.JNI.SangforSDK.JSystemConfiguration_VpnInfo));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSystemConfiguration',
    TypeInfo(Androidapi.JNI.SangforSDK.JSystemConfiguration));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JClientMessage',
    TypeInfo(Androidapi.JNI.SangforSDK.JClientMessage));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JFormatTransfer',
    TypeInfo(Androidapi.JNI.SangforSDK.JFormatTransfer));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JServerMessage',
    TypeInfo(Androidapi.JNI.SangforSDK.JServerMessage));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JTimeQry_1',
//    TypeInfo(Androidapi.JNI.SangforSDK.JTimeQry_1));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JTimeQry_FluxInfo',
//    TypeInfo(Androidapi.JNI.SangforSDK.JTimeQry_FluxInfo));
//  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JTimeQry_OnCreateRunnable_1',
//    TypeInfo(Androidapi.JNI.SangforSDK.JTimeQry_OnCreateRunnable_1));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JTimeQry_OnCreateRunnable',
    TypeInfo(Androidapi.JNI.SangforSDK.JTimeQry_OnCreateRunnable));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JTimeQry',
    TypeInfo(Androidapi.JNI.SangforSDK.JTimeQry));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JTimeQryException',
    TypeInfo(Androidapi.JNI.SangforSDK.JTimeQryException));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JTQProtocol',
    TypeInfo(Androidapi.JNI.SangforSDK.JTQProtocol));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JCommon_AssertionFailed',
    TypeInfo(Androidapi.JNI.SangforSDK.JCommon_AssertionFailed));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JCommon',
    TypeInfo(Androidapi.JNI.SangforSDK.JCommon));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JIGeneral',
    TypeInfo(Androidapi.JNI.SangforSDK.JIGeneral));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JLog',
    TypeInfo(Androidapi.JNI.SangforSDK.JLog));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JHttpConnect_TrustAnyHostnameVerifier',
    TypeInfo(Androidapi.JNI.SangforSDK.JHttpConnect_TrustAnyHostnameVerifier));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JHttpConnect_TrustAnyTrustManager',
    TypeInfo(Androidapi.JNI.SangforSDK.JHttpConnect_TrustAnyTrustManager));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JHttpConnect',
    TypeInfo(Androidapi.JNI.SangforSDK.JHttpConnect));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JHttpHeadReader',
    TypeInfo(Androidapi.JNI.SangforSDK.JHttpHeadReader));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JXmlReader',
    TypeInfo(Androidapi.JNI.SangforSDK.JXmlReader));
  TRegTypes.RegisterType('Androidapi.JNI.SangforSDK.JSFException',
    TypeInfo(Androidapi.JNI.SangforSDK.JSFException));
end;


initialization
  RegisterTypes;

{$ENDIF}

end.

