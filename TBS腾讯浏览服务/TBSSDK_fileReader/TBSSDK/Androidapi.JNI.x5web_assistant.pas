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
//  生成时间：2017-12-25 0:17:51
//  工具版本：1.0.2015.5.11
//
//====================================================
unit Androidapi.JNI.x5web_assistant;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNIBridge, 
  Androidapi.JNI.tbs_sdk_thirdapp,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText, 
  Androidapi.JNI.os;


type
// ===== Forward declarations =====

  JMyWebChromeClient = interface; //com.ggggcexx.x5web_assistant.MyWebChromeClient
  JMyWebViewClient = interface; //com.ggggcexx.x5web_assistant.MyWebViewClient
  JOnMyWebChromeClientListener = interface; //com.ggggcexx.x5web_assistant.OnMyWebChromeClientListener
  JOnMyWebViewClienListener = interface; //com.ggggcexx.x5web_assistant.OnMyWebViewClienListener

// ===== Interface declarations =====

  JMyWebChromeClientClass = interface(JObjectClass)
  ['{101A2461-BF96-4243-88A5-07C594807299}']
    { static Property Methods }

    { static Methods }
    {class} function init: JMyWebChromeClient; cdecl;

    { static Property }
  end;

  [JavaSignature('com/ggggcexx/x5web_assistant/MyWebChromeClient')]
  JMyWebChromeClient = interface(JObject)
  ['{CAED25F4-F46B-4A48-9EE8-8BB6ED014663}']
    { Property Methods }

    { methods }
    {class} procedure setListener(P1: JOnMyWebChromeClientListener); cdecl;
    {class} function getListener: JOnMyWebChromeClientListener; cdecl;

    function getDefaultVideoPoster: JBitmap; cdecl;
    function getVideoLoadingProgressView: JView; cdecl;
    procedure getVisitedHistory(arg0: JValueCallback); cdecl;
    procedure onCloseWindow(arg0: JWebView); cdecl;
    function onConsoleMessage(arg0: JConsoleMessage): Boolean; cdecl;
    function onCreateWindow(arg0: JWebView; arg1: Boolean; arg2: Boolean; arg3: JMessage): Boolean; cdecl;
    procedure onExceededDatabaseQuota(arg0: JString; arg1: JString; arg2: Int64; arg3: Int64; P5: Int64; arg5: JWebStorage_QuotaUpdater); cdecl;
    procedure onGeolocationPermissionsHidePrompt; cdecl;
    procedure onGeolocationPermissionsShowPrompt(arg0: JString; arg1: JGeolocationPermissionsCallback); cdecl;
    procedure onHideCustomView; cdecl;
    function onJsAlert(arg0: JWebView; arg1: JString; arg2: JString; arg3: JJsResult): Boolean; cdecl;
    function onJsBeforeUnload(arg0: JWebView; arg1: JString; arg2: JString; arg3: JJsResult): Boolean; cdecl;
    function onJsConfirm(arg0: JWebView; arg1: JString; arg2: JString; arg3: JJsResult): Boolean; cdecl;
    function onJsPrompt(arg0: JWebView; arg1: JString; arg2: JString; arg3: JString; arg4: JJsPromptResult): Boolean; cdecl;
    function onJsTimeout: Boolean; cdecl;
    procedure onProgressChanged(arg0: JWebView; arg1: Integer); cdecl;
    procedure onReachedMaxAppCacheSize(arg0: Int64; arg1: Int64; P3: JWebStorage_QuotaUpdater); cdecl;
    procedure onReceivedIcon(arg0: JWebView; arg1: JBitmap); cdecl;
    procedure onReceivedTitle(arg0: JWebView; arg1: JString); cdecl;
    procedure onReceivedTouchIconUrl(arg0: JWebView; arg1: JString; arg2: Boolean); cdecl;
    procedure onRequestFocus(arg0: JWebView); cdecl;
    procedure onShowCustomView(arg0: JView; arg1: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
    procedure onShowCustomView(arg0: JView; arg1: Integer; arg2: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
    function onShowFileChooser(arg0: JWebView; arg1: JValueCallback; arg2: JWebChromeClient_FileChooserParams): Boolean; cdecl;
    procedure openFileChooser(arg0: JValueCallback; arg1: JString; arg2: JString); cdecl;

    { Property }
  end;

  TJMyWebChromeClient = class(TJavaGenericImport<JMyWebChromeClientClass, JMyWebChromeClient>) end;

  JMyWebViewClientClass = interface(JObjectClass)
  ['{0DFEF62E-8972-409C-AA68-7B20801E47AC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JMyWebViewClient; cdecl;

    { static Property }
  end;

  [JavaSignature('com/ggggcexx/x5web_assistant/MyWebViewClient')]
  JMyWebViewClient = interface(JObject)
  ['{89EDB6F5-7791-44B1-A797-2AB1A9D5FE03}']
    { Property Methods }

    { methods }
    {class} procedure setListener(P1: JOnMyWebViewClienListener); cdecl;
    {class} function getListener: JOnMyWebViewClienListener; cdecl;
    function shouldOverrideUrlLoading(view: JWebView; url: JString): Boolean; cdecl;
    procedure doUpdateVisitedHistory(arg0: JWebView; arg1: JString; arg2: Boolean); cdecl;
    procedure onDetectedBlankScreen(arg0: JString; arg1: Integer); cdecl;
    procedure onFormResubmission(arg0: JWebView; arg1: JMessage; arg2: JMessage); cdecl;
    procedure onLoadResource(arg0: JWebView; arg1: JString); cdecl;
    procedure onPageStarted(arg0: JWebView; arg1: JString; arg2: JBitmap); cdecl;
    procedure onReceivedClientCertRequest(arg0: JWebView; arg1: JClientCertRequest); cdecl;
    procedure onReceivedError(arg0: JWebView; arg1: Integer; arg2: JString; arg3: JString); cdecl; overload;
    procedure onReceivedError(arg0: JWebView; arg1: JWebResourceRequest; arg2: JWebResourceError); cdecl; overload;
    procedure onReceivedHttpAuthRequest(arg0: JWebView; arg1: JHttpAuthHandler; arg2: JString; arg3: JString); cdecl;
    procedure onReceivedHttpError(arg0: JWebView; arg1: JWebResourceRequest; arg2: JWebResourceResponse); cdecl;
    procedure onReceivedLoginRequest(arg0: JWebView; arg1: JString; arg2: JString; arg3: JString); cdecl;
    procedure onReceivedSslError(arg0: JWebView; arg1: JSslErrorHandler; arg2: JSslError); cdecl;
    procedure onScaleChanged(arg0: JWebView; arg1: Single; arg2: Single); cdecl;
    procedure onTooManyRedirects(arg0: JWebView; arg1: JMessage; arg2: JMessage); cdecl;
    procedure onUnhandledKeyEvent(arg0: JWebView; arg1: JKeyEvent); cdecl;
    function shouldInterceptRequest(arg0: JWebView; arg1: JString): JWebResourceResponse; cdecl; overload;
    function shouldInterceptRequest(arg0: JWebView; arg1: JWebResourceRequest; arg2: JBundle): JWebResourceResponse; cdecl; overload;
    function shouldInterceptRequest(arg0: JWebView; arg1: JWebResourceRequest): JWebResourceResponse; cdecl; overload;
    function shouldOverrideKeyEvent(arg0: JWebView; arg1: JKeyEvent): Boolean; cdecl;
    procedure onPageFinished(view: JWebView; url: JString); cdecl;

    { Property }
  end;

  TJMyWebViewClient = class(TJavaGenericImport<JMyWebViewClientClass, JMyWebViewClient>) end;

  JOnMyWebChromeClientListenerClass = interface(JObjectClass)
  ['{A4FCC84B-B6D2-4905-8F4B-E569CB23732A}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/ggggcexx/x5web_assistant/OnMyWebChromeClientListener')]
  JOnMyWebChromeClientListener = interface(IJavaInstance)
  ['{F306B57F-EE85-4942-A47A-BD907D6C21FC}']
    { Property Methods }

    { methods }
//    function getDefaultVideoPoster: JBitmap; cdecl;
//    function getVideoLoadingProgressView: JView; cdecl;
//    procedure getVisitedHistory(P1: JValueCallback); cdecl;
//    procedure onCloseWindow(P1: JWebView); cdecl;
//    function onConsoleMessage(P1: JConsoleMessage): Boolean; cdecl;
//    function onCreateWindow(P1: JWebView; P2: Boolean; P3: Boolean; P4: JMessage): Boolean; cdecl;
//    procedure onExceededDatabaseQuota(P1: JString; P2: JString; P3: Int64; P4: Int64; P5: Int64; P6: JWebStorage_QuotaUpdater); cdecl;
//    procedure onGeolocationPermissionsHidePrompt; cdecl;
//    procedure onGeolocationPermissionsShowPrompt(P1: JString; P2: JGeolocationPermissionsCallback); cdecl;
    procedure onHideCustomView; cdecl;
    function onJsAlert(P1: JWebView; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
//    function onJsBeforeUnload(P1: JWebView; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    function onJsConfirm(P1: JWebView; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
//    function onJsPrompt(P1: JWebView; P2: JString; P3: JString; P4: JString; P5: JJsPromptResult): Boolean; cdecl;
//    function onJsTimeout: Boolean; cdecl;
    procedure onProgressChanged(P1: JWebView; P2: Integer); cdecl;
//    procedure onReachedMaxAppCacheSize(P1: Int64; P2: Int64; P3: JWebStorage_QuotaUpdater); cdecl;
//    procedure onReceivedIcon(P1: JWebView; P2: JBitmap); cdecl;
//    procedure onReceivedTitle(P1: JWebView; P2: JString); cdecl;
//    procedure onReceivedTouchIconUrl(P1: JWebView; P2: JString; P3: Boolean); cdecl;
//    procedure onRequestFocus(P1: JWebView); cdecl;
    procedure onShowCustomView(P1: JView; P2: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
//    procedure onShowCustomView(P1: JView; P2: Integer; P3: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
//    function onShowFileChooser(P1: JWebView; P2: JValueCallback; P3: JWebChromeClient_FileChooserParams): Boolean; cdecl;
//    procedure openFileChooser(P1: JValueCallback; P2: JString; P3: JString); cdecl;

    { Property }
  end;

  TJOnMyWebChromeClientListener = class(TJavaGenericImport<JOnMyWebChromeClientListenerClass, JOnMyWebChromeClientListener>) end;

  JOnMyWebViewClienListenerClass = interface(JObjectClass)
  ['{DF214261-7CAF-4F73-A624-A3FDE73DF541}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/ggggcexx/x5web_assistant/OnMyWebViewClienListener')]
  JOnMyWebViewClienListener = interface(IJavaInstance)
  ['{980418C2-8541-4BE6-AD8C-07E63CCF9221}']
    { Property Methods }

    { methods }
    function shouldOverrideUrlLoading(P1: JWebView; P2: JString): Boolean; cdecl;
//    procedure doUpdateVisitedHistory(P1: JWebView; P2: JString; P3: Boolean); cdecl;
//    procedure onDetectedBlankScreen(P1: JString; P2: Integer); cdecl;
//    procedure onFormResubmission(P1: JWebView; P2: JMessage; P3: JMessage); cdecl;
//    procedure onLoadResource(P1: JWebView; P2: JString); cdecl;
//    procedure onPageStarted(P1: JWebView; P2: JString; P3: JBitmap); cdecl;
//    procedure onReceivedClientCertRequest(P1: JWebView; P2: JClientCertRequest); cdecl;
//    procedure onReceivedError(P1: JWebView; P2: Integer; P3: JString; P4: JString); cdecl; overload;
//    procedure onReceivedError(P1: JWebView; P2: JWebResourceRequest; P3: JWebResourceError); cdecl; overload;
//    procedure onReceivedHttpAuthRequest(P1: JWebView; P2: JHttpAuthHandler; P3: JString; P4: JString); cdecl;
//    procedure onReceivedHttpError(P1: JWebView; P2: JWebResourceRequest; P3: JWebResourceResponse); cdecl;
//    procedure onReceivedLoginRequest(P1: JWebView; P2: JString; P3: JString; P4: JString); cdecl;
//    procedure onReceivedSslError(P1: JWebView; P2: JSslErrorHandler; P3: JSslError); cdecl;
//    procedure onScaleChanged(P1: JWebView; P2: Single; P3: Single); cdecl;
//    procedure onTooManyRedirects(P1: JWebView; P2: JMessage; P3: JMessage); cdecl;
//    procedure onUnhandledKeyEvent(P1: JWebView; P2: JKeyEvent); cdecl;
//    function shouldInterceptRequest(P1: JWebView; P2: JString): JWebResourceResponse; cdecl; overload;
//    function shouldInterceptRequest(P1: JWebView; P2: JWebResourceRequest; P3: JBundle): JWebResourceResponse; cdecl; overload;
//    function shouldInterceptRequest(P1: JWebView; P2: JWebResourceRequest): JWebResourceResponse; cdecl; overload;
//    function shouldOverrideKeyEvent(P1: JWebView; P2: JKeyEvent): Boolean; cdecl;
    procedure onPageFinished(P1: JWebView; P2: JString); cdecl;

    { Property }
  end;

  TJOnMyWebViewClienListener = class(TJavaGenericImport<JOnMyWebViewClienListenerClass, JOnMyWebViewClienListener>) end;

{$ENDIF}
implementation
//{$IFDEF ANDROID}
//
//
//procedure RegisterTypes;
//begin
//  TRegTypes.RegisterType('Androidapi.JNI.x5web_assistant.JMyWebChromeClient',
//    TypeInfo(Androidapi.JNI.x5web_assistant.JMyWebChromeClient));
//  TRegTypes.RegisterType('Androidapi.JNI.x5web_assistant.JMyWebViewClient',
//    TypeInfo(Androidapi.JNI.x5web_assistant.JMyWebViewClient));
//  TRegTypes.RegisterType('Androidapi.JNI.x5web_assistant.JOnMyWebChromeClientListener',
//    TypeInfo(Androidapi.JNI.x5web_assistant.JOnMyWebChromeClientListener));
//  TRegTypes.RegisterType('Androidapi.JNI.x5web_assistant.JOnMyWebViewClienListener',
//    TypeInfo(Androidapi.JNI.x5web_assistant.JOnMyWebViewClienListener));
//end;
//
//
//initialization
//  RegisterTypes;
//
//{$ENDIF}

end.
