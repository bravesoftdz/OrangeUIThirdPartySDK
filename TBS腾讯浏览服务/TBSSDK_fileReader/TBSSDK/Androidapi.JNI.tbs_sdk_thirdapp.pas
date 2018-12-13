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
//  生成时间：2017-12-24 19:26:46
//  工具版本：1.0.2015.5.11
//
//====================================================
unit Androidapi.JNI.tbs_sdk_thirdapp;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Dalvik,
  Androidapi.JNI.os,
  Androidapi.JNI.Webkit,
  Androidapi.JNI.Java.Security,
  Androidapi.JNI.Net,
  Androidapi.JNI.Widget,
  Androidapi.JNI.App,
  Androidapi.JNI.Media,
//  Androidapi.JNI.java.nio.channels.FileLock,
  Androidapi.JNI.Util;


type
// ===== Forward declarations =====

  JDexLoader_TbsCorePrivateClassLoader = interface; //com.tencent.smtt.export.external.DexLoader$TbsCorePrivateClassLoader
  JDexLoader = interface; //com.tencent.smtt.export.external.DexLoader
  JIX5WebChromeClientExtension = interface; //com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
  JIX5WebSettingsExtension = interface; //com.tencent.smtt.export.external.extension.interfaces.IX5WebSettingsExtension
  JIX5WebViewClientExtension = interface; //com.tencent.smtt.export.external.extension.interfaces.IX5WebViewClientExtension
  JIX5WebViewExtension = interface; //com.tencent.smtt.export.external.extension.interfaces.IX5WebViewExtension
  JProxyWebChromeClientExtension = interface; //com.tencent.smtt.export.external.extension.proxy.ProxyWebChromeClientExtension
  JProxyWebViewClientExtension = interface; //com.tencent.smtt.export.external.extension.proxy.ProxyWebViewClientExtension
  JX5ProxyWebViewClientExtension = interface; //com.tencent.smtt.export.external.extension.proxy.X5ProxyWebViewClientExtension
  JClientCertRequest = interface; //com.tencent.smtt.export.external.interfaces.ClientCertRequest
  JConsoleMessage_MessageLevel = interface; //com.tencent.smtt.export.external.interfaces.ConsoleMessage$MessageLevel
  JConsoleMessage = interface; //com.tencent.smtt.export.external.interfaces.ConsoleMessage
  JDownloadListener = interface; //com.tencent.smtt.export.external.interfaces.DownloadListener
  JGeolocationPermissionsCallback = interface; //com.tencent.smtt.export.external.interfaces.GeolocationPermissionsCallback
  JHttpAuthHandler = interface; //com.tencent.smtt.export.external.interfaces.HttpAuthHandler
  JIconListener = interface; //com.tencent.smtt.export.external.interfaces.IconListener
  JISelectionInterface = interface; //com.tencent.smtt.export.external.interfaces.ISelectionInterface
  JIX5DateSorter = interface; //com.tencent.smtt.export.external.interfaces.IX5DateSorter
  JIX5ScrollListener = interface; //com.tencent.smtt.export.external.interfaces.IX5ScrollListener
  JIX5WebBackForwardList = interface; //com.tencent.smtt.export.external.interfaces.IX5WebBackForwardList
  JIX5WebBackForwardListClient = interface; //com.tencent.smtt.export.external.interfaces.IX5WebBackForwardListClient
  JIX5WebChromeClient_CustomViewCallback = interface; //com.tencent.smtt.export.external.interfaces.IX5WebChromeClient$CustomViewCallback
  JIX5WebChromeClient_FileChooserParams = interface; //com.tencent.smtt.export.external.interfaces.IX5WebChromeClient$FileChooserParams
  JIX5WebChromeClient = interface; //com.tencent.smtt.export.external.interfaces.IX5WebChromeClient
  JIX5WebHistoryItem = interface; //com.tencent.smtt.export.external.interfaces.IX5WebHistoryItem
  JIX5WebSettings_LayoutAlgorithm = interface; //com.tencent.smtt.export.external.interfaces.IX5WebSettings$LayoutAlgorithm
  JIX5WebSettings_PluginState = interface; //com.tencent.smtt.export.external.interfaces.IX5WebSettings$PluginState
  JIX5WebSettings_RenderPriority = interface; //com.tencent.smtt.export.external.interfaces.IX5WebSettings$RenderPriority
  JIX5WebSettings_TextSize = interface; //com.tencent.smtt.export.external.interfaces.IX5WebSettings$TextSize
  JIX5WebSettings_ZoomDensity = interface; //com.tencent.smtt.export.external.interfaces.IX5WebSettings$ZoomDensity
  JIX5WebSettings = interface; //com.tencent.smtt.export.external.interfaces.IX5WebSettings
  JIX5WebViewBase_FindListener = interface; //com.tencent.smtt.export.external.interfaces.IX5WebViewBase$FindListener
  JIX5WebViewBase_HitTestResult_AnchorData = interface; //com.tencent.smtt.export.external.interfaces.IX5WebViewBase$HitTestResult$AnchorData
  JIX5WebViewBase_HitTestResult_EditableData = interface; //com.tencent.smtt.export.external.interfaces.IX5WebViewBase$HitTestResult$EditableData
  JIX5WebViewBase_HitTestResult_ImageAnchorData = interface; //com.tencent.smtt.export.external.interfaces.IX5WebViewBase$HitTestResult$ImageAnchorData
  JIX5WebViewBase_HitTestResult_ImageData = interface; //com.tencent.smtt.export.external.interfaces.IX5WebViewBase$HitTestResult$ImageData
  JIX5WebViewBase_HitTestResult = interface; //com.tencent.smtt.export.external.interfaces.IX5WebViewBase$HitTestResult
  JIX5WebViewBase_ImageInfo = interface; //com.tencent.smtt.export.external.interfaces.IX5WebViewBase$ImageInfo
  JIX5WebViewBase_PictureListener = interface; //com.tencent.smtt.export.external.interfaces.IX5WebViewBase$PictureListener
  JIX5WebViewBase_WebViewTransport = interface; //com.tencent.smtt.export.external.interfaces.IX5WebViewBase$WebViewTransport
  JIX5WebViewBase = interface; //com.tencent.smtt.export.external.interfaces.IX5WebViewBase
  JIX5WebViewClient = interface; //com.tencent.smtt.export.external.interfaces.IX5WebViewClient
  JJsPromptResult = interface; //com.tencent.smtt.export.external.interfaces.JsPromptResult
  JJsResult = interface; //com.tencent.smtt.export.external.interfaces.JsResult
  JMediaAccessPermissionsCallback = interface; //com.tencent.smtt.export.external.interfaces.MediaAccessPermissionsCallback
  JQuotaUpdater = interface; //com.tencent.smtt.export.external.interfaces.QuotaUpdater
  JSslError = interface; //com.tencent.smtt.export.external.interfaces.SslError
  JSslErrorHandler = interface; //com.tencent.smtt.export.external.interfaces.SslErrorHandler
  JWebResourceError = interface; //com.tencent.smtt.export.external.interfaces.WebResourceError
  JWebResourceRequest = interface; //com.tencent.smtt.export.external.interfaces.WebResourceRequest
  JWebResourceResponse = interface; //com.tencent.smtt.export.external.interfaces.WebResourceResponse
  JLibraryLoader = interface; //com.tencent.smtt.export.external.LibraryLoader
//  Jlibwebp_1 = interface; //com.tencent.smtt.export.external.libwebp$1
  Jlibwebp = interface; //com.tencent.smtt.export.external.libwebp
  JProxyWebChromeClient = interface; //com.tencent.smtt.export.external.proxy.ProxyWebChromeClient
  JProxyWebViewClient = interface; //com.tencent.smtt.export.external.proxy.ProxyWebViewClient
  JX5ProxyWebChromeClient = interface; //com.tencent.smtt.export.external.proxy.X5ProxyWebChromeClient
  JX5ProxyWebViewClient = interface; //com.tencent.smtt.export.external.proxy.X5ProxyWebViewClient
  JTbsCoreSettings = interface; //com.tencent.smtt.export.external.TbsCoreSettings
  JWebViewWizardBase = interface; //com.tencent.smtt.export.external.WebViewWizardBase
//  Ja = interface; //com.tencent.smtt.sdk.a.a
//  Jb = interface; //com.tencent.smtt.sdk.a.b
//  Jc = interface; //com.tencent.smtt.sdk.a.c
//  Jd_1 = interface; //com.tencent.smtt.sdk.a.d$1
//  Jd_a = interface; //com.tencent.smtt.sdk.a.d$a
//  Jd_b = interface; //com.tencent.smtt.sdk.a.d$b
//  Jd = interface; //com.tencent.smtt.sdk.a.d
//  Ja = interface; //com.tencent.smtt.sdk.a
//  Jaa = interface; //com.tencent.smtt.sdk.aa
//  Jab = interface; //com.tencent.smtt.sdk.ab
//  Jac = interface; //com.tencent.smtt.sdk.ac
//  Jad = interface; //com.tencent.smtt.sdk.ad
//  Jae_a = interface; //com.tencent.smtt.sdk.ae$a
//  Jae_b = interface; //com.tencent.smtt.sdk.ae$b
//  Jae_c = interface; //com.tencent.smtt.sdk.ae$c
//  Jae_d = interface; //com.tencent.smtt.sdk.ae$d
//  Jae_e = interface; //com.tencent.smtt.sdk.ae$e
//  Jae_f = interface; //com.tencent.smtt.sdk.ae$f
//  Jae_g = interface; //com.tencent.smtt.sdk.ae$g
//  Jae = interface; //com.tencent.smtt.sdk.ae
//  Jaf = interface; //com.tencent.smtt.sdk.af
//  Jag = interface; //com.tencent.smtt.sdk.ag
//  Jah = interface; //com.tencent.smtt.sdk.ah
//  Jai = interface; //com.tencent.smtt.sdk.ai
//  Jaj = interface; //com.tencent.smtt.sdk.aj
//  Jak = interface; //com.tencent.smtt.sdk.ak
//  Jal = interface; //com.tencent.smtt.sdk.al
//  Jam = interface; //com.tencent.smtt.sdk.am
//  Jan = interface; //com.tencent.smtt.sdk.an
//  Jao = interface; //com.tencent.smtt.sdk.ao
//  Jap = interface; //com.tencent.smtt.sdk.ap
//  Jaq = interface; //com.tencent.smtt.sdk.aq
//  Jar = interface; //com.tencent.smtt.sdk.ar
//  Jas = interface; //com.tencent.smtt.sdk.as
//  Jat = interface; //com.tencent.smtt.sdk.at
//  Jau = interface; //com.tencent.smtt.sdk.au
//  Jav = interface; //com.tencent.smtt.sdk.av
//  Jaw = interface; //com.tencent.smtt.sdk.aw
//  Jax = interface; //com.tencent.smtt.sdk.ax
//  Jay = interface; //com.tencent.smtt.sdk.ay
//  Jaz = interface; //com.tencent.smtt.sdk.az
//  Ja = interface; //com.tencent.smtt.sdk.b.a.a
//  Jb = interface; //com.tencent.smtt.sdk.b.a.b
//  Jc = interface; //com.tencent.smtt.sdk.b.a.c
//  Jd = interface; //com.tencent.smtt.sdk.b.a.d
//  Je = interface; //com.tencent.smtt.sdk.b.a.e
//  Jf = interface; //com.tencent.smtt.sdk.b.a.f
//  Jg = interface; //com.tencent.smtt.sdk.b.a.g
//  Jh = interface; //com.tencent.smtt.sdk.b.a.h
//  Ji = interface; //com.tencent.smtt.sdk.b.a.i
//  Jb = interface; //com.tencent.smtt.sdk.b
//  Jba = interface; //com.tencent.smtt.sdk.ba
//  Jbb = interface; //com.tencent.smtt.sdk.bb
//  Jbc = interface; //com.tencent.smtt.sdk.bc
//  Jbd = interface; //com.tencent.smtt.sdk.bd
//  Jbe = interface; //com.tencent.smtt.sdk.be
//  Jbf = interface; //com.tencent.smtt.sdk.bf
//  Jbg = interface; //com.tencent.smtt.sdk.bg
//  Jbh = interface; //com.tencent.smtt.sdk.bh
//  Jbi = interface; //com.tencent.smtt.sdk.bi
//  Jbj = interface; //com.tencent.smtt.sdk.bj
//  Jbk = interface; //com.tencent.smtt.sdk.bk
//  Jbl = interface; //com.tencent.smtt.sdk.bl
//  Jbm = interface; //com.tencent.smtt.sdk.bm
//  Jbn = interface; //com.tencent.smtt.sdk.bn
//  Jbo = interface; //com.tencent.smtt.sdk.bo
//  Jbp = interface; //com.tencent.smtt.sdk.bp
//  Jc = interface; //com.tencent.smtt.sdk.c
  JCacheManager = interface; //com.tencent.smtt.sdk.CacheManager
//  JCookieManager_a = interface; //com.tencent.smtt.sdk.CookieManager$a
  JCookieManager = interface; //com.tencent.smtt.sdk.CookieManager
  JCookieSyncManager = interface; //com.tencent.smtt.sdk.CookieSyncManager
//  Jd = interface; //com.tencent.smtt.sdk.d
//  JDownloadListener = interface; //com.tencent.smtt.sdk.DownloadListener
//  Je = interface; //com.tencent.smtt.sdk.e
//  Jf = interface; //com.tencent.smtt.sdk.f
//  Jg = interface; //com.tencent.smtt.sdk.g
//  Jh = interface; //com.tencent.smtt.sdk.h
//  Ji = interface; //com.tencent.smtt.sdk.i
//  Jj = interface; //com.tencent.smtt.sdk.j
//  Jk = interface; //com.tencent.smtt.sdk.k
//  Jl = interface; //com.tencent.smtt.sdk.l
//  Jm = interface; //com.tencent.smtt.sdk.m
//  Jn = interface; //com.tencent.smtt.sdk.n
//  Jo = interface; //com.tencent.smtt.sdk.o
//  Jp = interface; //com.tencent.smtt.sdk.p
//  Jq = interface; //com.tencent.smtt.sdk.q
  JQbSdk_PreInitCallback = interface; //com.tencent.smtt.sdk.QbSdk$PreInitCallback
  JQbSdk = interface; //com.tencent.smtt.sdk.QbSdk
//  Jr = interface; //com.tencent.smtt.sdk.r
//  Js_a = interface; //com.tencent.smtt.sdk.s$a
//  Js = interface; //com.tencent.smtt.sdk.s
//  JSystemWebChromeClient_a = interface; //com.tencent.smtt.sdk.SystemWebChromeClient$a
//  JSystemWebChromeClient_b = interface; //com.tencent.smtt.sdk.SystemWebChromeClient$b
//  JSystemWebChromeClient_c = interface; //com.tencent.smtt.sdk.SystemWebChromeClient$c
//  JSystemWebChromeClient_d = interface; //com.tencent.smtt.sdk.SystemWebChromeClient$d
//  JSystemWebChromeClient_e = interface; //com.tencent.smtt.sdk.SystemWebChromeClient$e
//  JSystemWebChromeClient_f = interface; //com.tencent.smtt.sdk.SystemWebChromeClient$f
  JSystemWebChromeClient = interface; //com.tencent.smtt.sdk.SystemWebChromeClient
//  Jt = interface; //com.tencent.smtt.sdk.t
  JTbsConfig = interface; //com.tencent.smtt.sdk.TbsConfig
  JTbsCoreLoadStat_TbsSequenceQueue = interface; //com.tencent.smtt.sdk.TbsCoreLoadStat$TbsSequenceQueue
  JTbsCoreLoadStat = interface; //com.tencent.smtt.sdk.TbsCoreLoadStat
  JTbsDownloadConfig_TbsConfigKey = interface; //com.tencent.smtt.sdk.TbsDownloadConfig$TbsConfigKey
  JTbsDownloadConfig = interface; //com.tencent.smtt.sdk.TbsDownloadConfig
  JTbsDownloader_TbsDownloaderCallback = interface; //com.tencent.smtt.sdk.TbsDownloader$TbsDownloaderCallback
  JTbsDownloader = interface; //com.tencent.smtt.sdk.TbsDownloader
  JTbsLinuxToolsJni = interface; //com.tencent.smtt.sdk.TbsLinuxToolsJni
  JTbsListener_ErrorCode = interface; //com.tencent.smtt.sdk.TbsListener$ErrorCode
  JTbsListener = interface; //com.tencent.smtt.sdk.TbsListener
//  JTbsLogReport_a = interface; //com.tencent.smtt.sdk.TbsLogReport$a
  JTbsLogReport_EventType = interface; //com.tencent.smtt.sdk.TbsLogReport$EventType
  JTbsLogReport_TbsLogInfo = interface; //com.tencent.smtt.sdk.TbsLogReport$TbsLogInfo
  JTbsLogReport = interface; //com.tencent.smtt.sdk.TbsLogReport
  JTbsReaderView_ReaderCallback = interface; //com.tencent.smtt.sdk.TbsReaderView$ReaderCallback
  JTbsReaderView = interface; //com.tencent.smtt.sdk.TbsReaderView
  JTbsShareManager = interface; //com.tencent.smtt.sdk.TbsShareManager
  JTbsVideo = interface; //com.tencent.smtt.sdk.TbsVideo
//  Ju = interface; //com.tencent.smtt.sdk.u
//  Jv = interface; //com.tencent.smtt.sdk.v
  JValueCallback = interface; //com.tencent.smtt.sdk.ValueCallback
  JVideoActivity = interface; //com.tencent.smtt.sdk.VideoActivity
//  Jw = interface; //com.tencent.smtt.sdk.w
  JWebBackForwardList = interface; //com.tencent.smtt.sdk.WebBackForwardList
  JWebChromeClient_FileChooserParams = interface; //com.tencent.smtt.sdk.WebChromeClient$FileChooserParams
  JWebChromeClient = interface; //com.tencent.smtt.sdk.WebChromeClient
  JWebHistoryItem = interface; //com.tencent.smtt.sdk.WebHistoryItem
//  JWebIconDatabase_a = interface; //com.tencent.smtt.sdk.WebIconDatabase$a
  JWebIconDatabase = interface; //com.tencent.smtt.sdk.WebIconDatabase
  JWebSettings_LayoutAlgorithm = interface; //com.tencent.smtt.sdk.WebSettings$LayoutAlgorithm
  JWebSettings_PluginState = interface; //com.tencent.smtt.sdk.WebSettings$PluginState
  JWebSettings_RenderPriority = interface; //com.tencent.smtt.sdk.WebSettings$RenderPriority
  JWebSettings_TextSize = interface; //com.tencent.smtt.sdk.WebSettings$TextSize
  JWebSettings_ZoomDensity = interface; //com.tencent.smtt.sdk.WebSettings$ZoomDensity
  JWebSettings = interface; //com.tencent.smtt.sdk.WebSettings
  JWebStorage_QuotaUpdater = interface; //com.tencent.smtt.sdk.WebStorage$QuotaUpdater
  JWebStorage = interface; //com.tencent.smtt.sdk.WebStorage
//  JWebView_a = interface; //com.tencent.smtt.sdk.WebView$a
//  JWebView_b = interface; //com.tencent.smtt.sdk.WebView$b
  JWebView_HitTestResult = interface; //com.tencent.smtt.sdk.WebView$HitTestResult
  JWebView_PictureListener = interface; //com.tencent.smtt.sdk.WebView$PictureListener
  JWebView_WebViewTransport = interface; //com.tencent.smtt.sdk.WebView$WebViewTransport
  JWebView = interface; //com.tencent.smtt.sdk.WebView
  JWebViewCallbackClient = interface; //com.tencent.smtt.sdk.WebViewCallbackClient
  JWebViewClient = interface; //com.tencent.smtt.sdk.WebViewClient
  JWebViewDatabase = interface; //com.tencent.smtt.sdk.WebViewDatabase
//  Jx = interface; //com.tencent.smtt.sdk.x
//  Jy = interface; //com.tencent.smtt.sdk.y
//  Jz = interface; //com.tencent.smtt.sdk.z
//  Ja = interface; //com.tencent.smtt.utils.a
//  Jaa = interface; //com.tencent.smtt.utils.aa
  JApn = interface; //com.tencent.smtt.utils.Apn
//  Jb = interface; //com.tencent.smtt.utils.b
//  Jc = interface; //com.tencent.smtt.utils.c
//  Jd = interface; //com.tencent.smtt.utils.d
//  Je_a = interface; //com.tencent.smtt.utils.e$a
//  Je = interface; //com.tencent.smtt.utils.e
//  Jf = interface; //com.tencent.smtt.utils.f
//  Jg = interface; //com.tencent.smtt.utils.g
//  Jh = interface; //com.tencent.smtt.utils.h
//  Ji = interface; //com.tencent.smtt.utils.i
//  Jj = interface; //com.tencent.smtt.utils.j
//  Jk_a = interface; //com.tencent.smtt.utils.k$a
//  Jk_b = interface; //com.tencent.smtt.utils.k$b
//  Jk = interface; //com.tencent.smtt.utils.k
//  Jl = interface; //com.tencent.smtt.utils.l
  JLogFileUtils = interface; //com.tencent.smtt.utils.LogFileUtils
//  Jm = interface; //com.tencent.smtt.utils.m
//  Jn_a = interface; //com.tencent.smtt.utils.n$a
//  Jn = interface; //com.tencent.smtt.utils.n
//  Jo = interface; //com.tencent.smtt.utils.o
//  Jp = interface; //com.tencent.smtt.utils.p
//  Jq = interface; //com.tencent.smtt.utils.q
//  Jr = interface; //com.tencent.smtt.utils.r
//  Js = interface; //com.tencent.smtt.utils.s
//  Jt = interface; //com.tencent.smtt.utils.t
  JTbsLog = interface; //com.tencent.smtt.utils.TbsLog
//  JTbsLogClient_a = interface; //com.tencent.smtt.utils.TbsLogClient$a
  JTbsLogClient = interface; //com.tencent.smtt.utils.TbsLogClient
//  Ju = interface; //com.tencent.smtt.utils.u
//  Jv = interface; //com.tencent.smtt.utils.v
//  Jw = interface; //com.tencent.smtt.utils.w
//  Jx = interface; //com.tencent.smtt.utils.x
//  Jy = interface; //com.tencent.smtt.utils.y
//  Jz_a = interface; //com.tencent.smtt.utils.z$a
//  Jz_b = interface; //com.tencent.smtt.utils.z$b
//  Jz = interface; //com.tencent.smtt.utils.z
//  Ja = interface; //com.tencent.tbs.video.interfaces.a
  JIUserStateChangedListener = interface; //com.tencent.tbs.video.interfaces.IUserStateChangedListener
  JThirdAppInfoNew = interface; //MTT.ThirdAppInfoNew

// ===== Interface declarations =====

  JDexLoader_TbsCorePrivateClassLoaderClass = interface(JObjectClass)
  ['{94200F82-E72F-4857-AB30-8E08C0AF2729}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JString; P2: JString; P3: JString; P4: JClassLoader): JDexLoader_TbsCorePrivateClassLoader; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/DexLoader$TbsCorePrivateClassLoader')]
  JDexLoader_TbsCorePrivateClassLoader = interface(JObject)
  ['{E7245886-73DC-4BE9-8459-E16FE6356F28}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJDexLoader_TbsCorePrivateClassLoader = class(TJavaGenericImport<JDexLoader_TbsCorePrivateClassLoaderClass, JDexLoader_TbsCorePrivateClassLoader>) end;

  JDexLoaderClass = interface(JObjectClass)
  ['{A7168B89-F388-450B-A3D2-A691ADE398F1}']
    { static Property Methods }

    { static Methods }
    {class} procedure initTbsSettings(P1: JMap); cdecl;
    {class} function init(P1: JString; P2: JContext; P3: TJavaObjectArray<JString>; P4: JString): JDexLoader; cdecl; overload;
    {class} function init(P1: JString; P2: JContext; P3: TJavaObjectArray<JString>; P4: JString; P5: JMap): JDexLoader; cdecl; overload;
    {class} function init(P1: JContext; P2: TJavaObjectArray<JString>; P3: JString): JDexLoader; cdecl; overload;
    {class} function init(P1: JContext; P2: TJavaObjectArray<JString>; P3: JString; P4: JString): JDexLoader; cdecl; overload;
    {class} function init(P1: JContext; P2: TJavaObjectArray<JString>; P3: JString; P4: JDexLoader): JDexLoader; cdecl; overload;
    {class} function init(P1: JContext; P2: JString; P3: JString): JDexLoader; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/DexLoader')]
  JDexLoader = interface(JObject)
  ['{EC9B801D-E6AB-4577-BFB3-F95CBEAA017C}']
    { Property Methods }

    { methods }
    function getClassLoader: JDexClassLoader; cdecl;
    function newInstance(P1: JString): JObject; cdecl; overload;
//    function newInstance(P1: JString; P2: TJavaObjectArray<JClass>; P3: TJavaObjectArray<JObject>): JObject; cdecl; overload;
//    function loadClass(P1: JString): JClass; cdecl;
//    function invokeStaticMethod(P1: JString; P2: JString; P3: TJavaObjectArray<JClass>; P4: TJavaObjectArray<JObject>): JObject; cdecl;
//    function invokeMethod(P1: JObject; P2: JString; P3: JString; P4: TJavaObjectArray<JClass>; P5: TJavaObjectArray<JObject>): JObject; cdecl;
    function getStaticField(P1: JString; P2: JString): JObject; cdecl;
    procedure setStaticField(P1: JString; P2: JString; P3: JObject); cdecl;

    { Property }
  end;

  TJDexLoader = class(TJavaGenericImport<JDexLoaderClass, JDexLoader>) end;

  JIX5WebChromeClientExtensionClass = interface(JObjectClass)
  ['{B39F8338-1328-4F83-BF38-BCD120FED87B}']
    { static Property Methods }
    {class} function _GetAUDIO_BUFFERING_DISABLE: Integer;
    {class} function _GetAUDIO_BUFFERING_START: Integer;
    {class} function _GetAUDIO_BUFFERING_END: Integer;

    { static Methods }

    { static Property }
    {class} property AUDIO_BUFFERING_DISABLE: Integer read _GetAUDIO_BUFFERING_DISABLE;
    {class} property AUDIO_BUFFERING_START: Integer read _GetAUDIO_BUFFERING_START;
    {class} property AUDIO_BUFFERING_END: Integer read _GetAUDIO_BUFFERING_END;
  end;

  [JavaSignature('com/tencent/smtt/export/external/extension/interfaces/IX5WebChromeClientExtension')]
  JIX5WebChromeClientExtension = interface(IJavaInstance)
  ['{9EFCB0B6-9E01-4875-AC8B-DE2BB6C3D8D2}']
    { Property Methods }

    { methods }
    function getX5WebChromeClientInstance: JObject; cdecl;
    function getVideoLoadingProgressView: JView; cdecl;
    procedure onAllMetaDataFinished(P1: JIX5WebViewExtension; P2: JHashMap); cdecl;
    procedure onBackforwardFinished(P1: Integer); cdecl;
    procedure onHitTestResultForPluginFinished(P1: JIX5WebViewExtension; P2: JIX5WebViewBase_HitTestResult; P3: JBundle); cdecl;
    procedure onHitTestResultFinished(P1: JIX5WebViewExtension; P2: JIX5WebViewBase_HitTestResult); cdecl;
    procedure onPromptScaleSaved(P1: JIX5WebViewExtension); cdecl;
    procedure onPromptNotScalable(P1: JIX5WebViewExtension); cdecl;
    function onAddFavorite(P1: JIX5WebViewExtension; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    procedure onPrepareX5ReadPageDataFinished(P1: JIX5WebViewExtension; P2: JHashMap); cdecl;
    function onSavePassword(P1: JString; P2: JString; P3: JString; P4: Boolean; P5: JMessage): Boolean; cdecl; overload;
    function onSavePassword(P1: JValueCallback; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: Boolean): Boolean; cdecl; overload;
    procedure onX5ReadModeAvailableChecked(P1: JHashMap); cdecl;
    procedure addFlashView(P1: JView; P2: JViewGroup_LayoutParams); cdecl;
    procedure h5videoRequestFullScreen(P1: JString); cdecl;
    procedure h5videoExitFullScreen(P1: JString); cdecl;
    procedure requestFullScreenFlash; cdecl;
    procedure exitFullScreenFlash; cdecl;
    procedure jsRequestFullScreen; cdecl;
    procedure jsExitFullScreen; cdecl;
    procedure acquireWakeLock; cdecl;
    procedure releaseWakeLock; cdecl;
    function getApplicationContex: JContext; cdecl;
    function onPageNotResponding(P1: JRunnable): Boolean; cdecl;
    function onMiscCallBack(P1: JString; P2: JBundle): JObject; cdecl;
    procedure openFileChooser(P1: JValueCallback; P2: JString; P3: JString); cdecl;
    procedure onPrintPage; cdecl;
    procedure onColorModeChanged(P1: Int64); cdecl;
    function onPermissionRequest(P1: JString; P2: Int64; P3: JMediaAccessPermissionsCallback): Boolean; cdecl;

    { Property }
  end;

  TJIX5WebChromeClientExtension = class(TJavaGenericImport<JIX5WebChromeClientExtensionClass, JIX5WebChromeClientExtension>) end;

  JIX5WebSettingsExtensionClass = interface(JObjectClass)
  ['{586051FA-7DE4-4239-94FB-9F8053F98305}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension')]
  JIX5WebSettingsExtension = interface(IJavaInstance)
  ['{93D24DAF-92BD-4804-B44E-84431BDF788D}']
    { Property Methods }

    { methods }
    procedure setEnableUnderLine(P1: Boolean); cdecl;
    procedure setPreFectch(P1: Boolean); cdecl;
    procedure setPreFectchEnableWhenHasMedia(P1: Boolean); cdecl;
    procedure setRememberScaleValue(P1: Boolean); cdecl;
    procedure setDayOrNight(P1: Boolean); cdecl;
    procedure setShouldTrackVisitedLinks(P1: Boolean); cdecl;
    procedure setPageSolarEnableFlag(P1: Boolean); cdecl;
    function getPageSolarEnableFlag: Boolean; cdecl;
    procedure setPageCacheCapacity(P1: Integer); cdecl;
    procedure setReadModeWebView(P1: Boolean); cdecl;
    function isReadModeWebView: Boolean; cdecl;
    procedure setFitScreen(P1: Boolean); cdecl;
    function isFitScreen: Boolean; cdecl;
    function isWapSitePreferred: Boolean; cdecl;
    procedure setWapSitePreferred(P1: Boolean); cdecl;
    procedure setImgAsDownloadFile(P1: Boolean); cdecl;
    procedure setWebViewInBackground(P1: Boolean); cdecl;
    function isWebViewInBackground: Boolean; cdecl;
    procedure setOnlyDomTreeBuild(P1: Boolean); cdecl;
    procedure setAdditionalHttpHeaders(P1: JMap); cdecl;
    procedure setAcceptCookie(P1: Boolean); cdecl;
    procedure setRecordRequestEnabled(P1: Boolean); cdecl;
    procedure setOnContextMenuEnable(P1: Boolean); cdecl;
    procedure setContentCacheEnable(P1: Boolean); cdecl;
    procedure setJavaScriptOpenWindowsBlockedNotifyEnabled(P1: Boolean); cdecl;
    procedure setAutoRecoredAndRestoreScaleEnabled(P1: Boolean); cdecl;
    procedure setTextDecorationUnlineEnabled(P1: Boolean); cdecl;
    procedure setAutoDetectToOpenFitScreenEnabled(P1: Boolean); cdecl;
    procedure setForcePinchScaleEnabled(P1: Boolean); cdecl;
    procedure setSmartFullScreenEnabled(P1: Boolean); cdecl;
    procedure setSelectionColorEnabled(P1: Boolean); cdecl;
    procedure setIsViewSourceMode(P1: Boolean); cdecl;
    procedure setUseQProxy(P1: Boolean); cdecl;
    function setHttpDnsDomains(P1: JList): Boolean; cdecl;
    procedure setFramePerformanceRecordEnable(P1: Boolean); cdecl;
    procedure setJSPerformanceRecordEnable(P1: Boolean); cdecl;
    procedure setShouldRequestFavicon(P1: Boolean); cdecl;
    procedure setARModeEnable(P1: Boolean); cdecl;
    procedure customDiskCachePathEnabled(P1: Boolean; P2: JString); cdecl;

    { Property }
  end;

  TJIX5WebSettingsExtension = class(TJavaGenericImport<JIX5WebSettingsExtensionClass, JIX5WebSettingsExtension>) end;

  JIX5WebViewClientExtensionClass = interface(JObjectClass)
  ['{FFA4C07E-CB7A-4D8E-976A-58E28B5A5499}']
    { static Property Methods }
    {class} function _GetFRAME_LOADTYPE_STANDARD: Integer;
    {class} function _GetFRAME_LOADTYPE_BACK: Integer;
    {class} function _GetFRAME_LOADTYPE_FORWARD: Integer;
    {class} function _GetFRAME_LOADTYPE_INDEXEDBACKFORWARD: Integer;
    {class} function _GetFRAME_LOADTYPE_RELOAD: Integer;
    {class} function _GetFRAME_LOADTYPE_RELOADALLOWINGSTALEDATA: Integer;
    {class} function _GetFRAME_LOADTYPE_SAME: Integer;
    {class} function _GetFRAME_LOADTYPE_REDIRECT: Integer;
    {class} function _GetFRAME_LOADTYPE_REPLACE: Integer;
    {class} function _GetFRAME_LOADTYPE_RELOADFROMORIGIN: Integer;
    {class} function _GetFRAME_LOADTYPE_BACKWMLDECKNOTACCESSIBLE: Integer;
    {class} function _GetFRAME_LOADTYPE_PREREAD: Integer;
    {class} function _GetHTMLTYPE_JS_SCROLLTO: Integer;

    { static Methods }

    { static Property }
    {class} property FRAME_LOADTYPE_STANDARD: Integer read _GetFRAME_LOADTYPE_STANDARD;
    {class} property FRAME_LOADTYPE_BACK: Integer read _GetFRAME_LOADTYPE_BACK;
    {class} property FRAME_LOADTYPE_FORWARD: Integer read _GetFRAME_LOADTYPE_FORWARD;
    {class} property FRAME_LOADTYPE_INDEXEDBACKFORWARD: Integer read _GetFRAME_LOADTYPE_INDEXEDBACKFORWARD;
    {class} property FRAME_LOADTYPE_RELOAD: Integer read _GetFRAME_LOADTYPE_RELOAD;
    {class} property FRAME_LOADTYPE_RELOADALLOWINGSTALEDATA: Integer read _GetFRAME_LOADTYPE_RELOADALLOWINGSTALEDATA;
    {class} property FRAME_LOADTYPE_SAME: Integer read _GetFRAME_LOADTYPE_SAME;
    {class} property FRAME_LOADTYPE_REDIRECT: Integer read _GetFRAME_LOADTYPE_REDIRECT;
    {class} property FRAME_LOADTYPE_REPLACE: Integer read _GetFRAME_LOADTYPE_REPLACE;
    {class} property FRAME_LOADTYPE_RELOADFROMORIGIN: Integer read _GetFRAME_LOADTYPE_RELOADFROMORIGIN;
    {class} property FRAME_LOADTYPE_BACKWMLDECKNOTACCESSIBLE: Integer read _GetFRAME_LOADTYPE_BACKWMLDECKNOTACCESSIBLE;
    {class} property FRAME_LOADTYPE_PREREAD: Integer read _GetFRAME_LOADTYPE_PREREAD;
    {class} property HTMLTYPE_JS_SCROLLTO: Integer read _GetHTMLTYPE_JS_SCROLLTO;
  end;

  [JavaSignature('com/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension')]
  JIX5WebViewClientExtension = interface(IJavaInstance)
  ['{01DC451F-10F3-4C88-9A7A-39F97B117AA9}']
    { Property Methods }

    { methods }
    procedure onMissingPluginClicked(P1: JString; P2: JString; P3: JString; P4: Integer); cdecl;
    procedure onHideListBox; cdecl;
    procedure onShowListBox(P1: TJavaObjectArray<JString>; P2: TJavaArray<Integer>; P3: TJavaArray<Integer>; P4: Integer); cdecl;
    procedure onShowMutilListBox(P1: TJavaObjectArray<JString>; P2: TJavaArray<Integer>; P3: TJavaArray<Integer>; P4: TJavaArray<Integer>); cdecl;
    procedure onFlingScrollBegin(P1: Integer; P2: Integer; P3: Integer); cdecl;
    procedure onScrollChanged(P1: Integer; P2: Integer; P3: Integer; P4: Integer); cdecl; overload;
    procedure onInputBoxTextChanged(P1: JIX5WebViewExtension; P2: JString); cdecl;
    procedure onTransitionToCommitted; cdecl;
    procedure onUploadProgressStart(P1: Integer); cdecl;
    procedure onUploadProgressChange(P1: Integer; P2: Integer; P3: JString); cdecl;
    procedure onSoftKeyBoardShow; cdecl;
    procedure onSoftKeyBoardHide(P1: Integer); cdecl;
    procedure onSetButtonStatus(P1: Boolean; P2: Boolean); cdecl;
    procedure onHistoryItemChanged; cdecl;
    procedure hideAddressBar; cdecl;
    procedure handlePluginTag(P1: JString; P2: JString; P3: Boolean; P4: JString); cdecl;
    procedure onDoubleTapStart; cdecl;
    procedure onPinchToZoomStart; cdecl;
    procedure onSlidingTitleOffScreen(P1: Integer; P2: Integer); cdecl;
    function preShouldOverrideUrlLoading(P1: JIX5WebViewExtension; P2: JString): Boolean; cdecl;
    procedure onPreReadFinished; cdecl;
    procedure onPromptScaleSaved; cdecl;
    procedure onFlingScrollEnd; cdecl;
    procedure onUrlChange(P1: JString; P2: JString); cdecl;
    procedure onReportAdFilterInfo(P1: Integer; P2: Integer; P3: JString; P4: Boolean); cdecl;
    procedure onNativeCrashReport(P1: Integer; P2: JString); cdecl;
    function onMiscCallBack(P1: JString; P2: JBundle): JObject; cdecl; overload;
    procedure onReportHtmlInfo(P1: Integer; P2: JString); cdecl;
    function onMiscCallBack(P1: JString; P2: JBundle; P3: JObject; P4: JObject; P5: JObject; P6: JObject): JObject; cdecl; overload;
    function onInterceptTouchEvent(P1: JMotionEvent; P2: JView): Boolean; cdecl;
    function onTouchEvent(P1: JMotionEvent; P2: JView): Boolean; cdecl;
    function dispatchTouchEvent(P1: JMotionEvent; P2: JView): Boolean; cdecl;
    function overScrollBy(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer; P8: Integer; P9: Boolean; P10: JView): Boolean; cdecl;
    procedure onScrollChanged(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: JView); cdecl; overload;
    procedure onOverScrolled(P1: Integer; P2: Integer; P3: Boolean; P4: Boolean; P5: JView); cdecl;
    procedure computeScroll(P1: JView); cdecl;
    procedure onMetricsSavedCountReceived(P1: JString; P2: Boolean; P3: Int64; P4: JString; P5: Integer); cdecl;
    procedure showTranslateBubble(P1: Integer; P2: JString; P3: JString; P4: Integer); cdecl;
    function notifyAutoAudioPlay(P1: JString; P2: JJsResult): Boolean; cdecl;
    function onShowLongClickPopupMenu: Boolean; cdecl;
    procedure onResponseReceived(P1: JWebResourceRequest; P2: JWebResourceResponse; P3: Integer); cdecl;
    function allowJavaScriptOpenWindowAutomatically(P1: JString; P2: JString): Boolean; cdecl;
    function notifyJavaScriptOpenWindowsBlocked(P1: JString; P2: TJavaObjectArray<JString>; P3: JValueCallback; P4: Boolean): Boolean; cdecl;
    procedure documentAvailableInMainFrame; cdecl;
    procedure didFirstVisuallyNonEmptyPaint; cdecl;
    procedure onReceivedViewSource(P1: JString); cdecl;
    procedure onPrefetchResourceHit(P1: Boolean); cdecl;
    procedure onReceivedSslErrorCancel; cdecl;
    procedure invalidate; cdecl;

    { Property }
  end;

  TJIX5WebViewClientExtension = class(TJavaGenericImport<JIX5WebViewClientExtensionClass, JIX5WebViewClientExtension>) end;

  JIX5WebViewExtensionClass = interface(JObjectClass)
  ['{6731BB65-CC0C-4996-B3F5-F29CF82D7498}']
    { static Property Methods }
    {class} function _GetOVER_SCROLL_ALWAYS: Integer;
    {class} function _GetOVER_SCROLL_IF_CONTENT_SCROLLS: Integer;
    {class} function _GetOVER_SCROLL_NEVER: Integer;
    {class} function _GetHANLDEVIEW_POSITION_LEFT: Integer;
    {class} function _GetHANDLEVIEW_POSITION_CENTER: Integer;
    {class} function _GetHANDLEVIEW_POSITION_RIGHT: Integer;
    {class} function _GetHANLDEVIEW_ALIGNMENT_LEFT: Integer;
    {class} function _GetHANDLEVIEW_ALIGNMENT_CENTER: Integer;
    {class} function _GetHANDLEVIEW_ALIGNMENT_RIGHT: Integer;
    {class} function _GetRENDER_MODE_DEFAULT: Integer;
    {class} function _GetRENDER_MODE_SMOOTHNESS_NORMAL: Integer;
    {class} function _GetRENDER_MODE_SMOOTHNESS_AGGRESSIVE: Integer;

    { static Methods }

    { static Property }
    {class} property OVER_SCROLL_ALWAYS: Integer read _GetOVER_SCROLL_ALWAYS;
    {class} property OVER_SCROLL_IF_CONTENT_SCROLLS: Integer read _GetOVER_SCROLL_IF_CONTENT_SCROLLS;
    {class} property OVER_SCROLL_NEVER: Integer read _GetOVER_SCROLL_NEVER;
    {class} property HANLDEVIEW_POSITION_LEFT: Integer read _GetHANLDEVIEW_POSITION_LEFT;
    {class} property HANDLEVIEW_POSITION_CENTER: Integer read _GetHANDLEVIEW_POSITION_CENTER;
    {class} property HANDLEVIEW_POSITION_RIGHT: Integer read _GetHANDLEVIEW_POSITION_RIGHT;
    {class} property HANLDEVIEW_ALIGNMENT_LEFT: Integer read _GetHANLDEVIEW_ALIGNMENT_LEFT;
    {class} property HANDLEVIEW_ALIGNMENT_CENTER: Integer read _GetHANDLEVIEW_ALIGNMENT_CENTER;
    {class} property HANDLEVIEW_ALIGNMENT_RIGHT: Integer read _GetHANDLEVIEW_ALIGNMENT_RIGHT;
    {class} property RENDER_MODE_DEFAULT: Integer read _GetRENDER_MODE_DEFAULT;
    {class} property RENDER_MODE_SMOOTHNESS_NORMAL: Integer read _GetRENDER_MODE_SMOOTHNESS_NORMAL;
    {class} property RENDER_MODE_SMOOTHNESS_AGGRESSIVE: Integer read _GetRENDER_MODE_SMOOTHNESS_AGGRESSIVE;
  end;

  [JavaSignature('com/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension')]
  JIX5WebViewExtension = interface(IJavaInstance)
  ['{AA5CCCE8-F484-4D75-A83E-51324AE7AF7C}']
    { Property Methods }

    { methods }
    function getQQBrowserVersion: Integer; cdecl;
    procedure clearTextEntry; cdecl;
    procedure cutText(P1: JCharSequence); cdecl;
    procedure copyText; cdecl;
    procedure pasteText(P1: JCharSequence); cdecl;
    function getFocusCandidateText: JString; cdecl;
    procedure clearTextFieldLongPressStatus; cdecl;
    procedure setTextFieldInLongPressStatus(P1: Boolean); cdecl;
    procedure replaceAllInputText(P1: JString); cdecl;
    function isEditingMode: Boolean; cdecl;
    function isEnableSetFont: Boolean; cdecl;
    function inputNodeIsPasswordType: Boolean; cdecl;
    function inputNodeIsPhoneType: Boolean; cdecl;
    function requestFocusForInputNode(P1: Integer): Boolean; cdecl;
    function isSelectionMode: Boolean; cdecl;
    procedure enterSelectionMode(P1: Boolean); cdecl;
    function getSelectionText: JString; cdecl;
    procedure leaveSelectionMode; cdecl;
    function seletionStatus: Integer; cdecl;
    procedure setScrollListener(P1: JIX5ScrollListener); cdecl;
    function getSinglePressPoint: JPoint; cdecl;
    procedure setBackFromSystem; cdecl;
    procedure setSelectListener(P1: JISelectionInterface); cdecl;
    function getHistoryItem(P1: Integer): JIX5WebHistoryItem; cdecl;
    function getWebChromeClient: JIX5WebChromeClient; cdecl;
    function getWebViewClient: JIX5WebViewClient; cdecl;
    procedure setEmbTitleView(P1: JView; P2: JViewGroup_LayoutParams); cdecl;
    procedure showImage(P1: Integer; P2: Integer); cdecl;
    procedure setDisableDrawingWhileLosingFocus(P1: Boolean); cdecl;
    function getCurrentHistoryItemIndex: Integer; cdecl;
    procedure removeHistoryItem(P1: Integer); cdecl;
    procedure scrollTo(P1: Integer; P2: Integer); cdecl;
    procedure scrollBy(P1: Integer; P2: Integer); cdecl;
    procedure onPauseActiveDomObject; cdecl;
    procedure onResumeActiveDomObject; cdecl;
    procedure loaddataWithCSP(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString); cdecl;
    function isPreReadCanGoForward: Boolean; cdecl;
    function getWebTextScrollDis: Integer; cdecl;
    procedure setWebBackForwardListClient(P1: JIX5WebBackForwardListClient); cdecl;
    procedure trimMemory(P1: Integer); cdecl;
    function isPluginFullScreen: Boolean; cdecl;
    procedure exitPluginFullScreen; cdecl;
    procedure setOrientation(P1: Integer); cdecl;
    procedure setScreenState(P1: Integer); cdecl;
    function inFullScreenMode: Boolean; cdecl;
    function getTitleHeight: Integer; cdecl;
    procedure cancelLongPress; cdecl;
    procedure reloadCustomMetaData; cdecl;
    procedure preConnectQProxy; cdecl;
    procedure replyListBox(P1: Integer); cdecl;
    procedure replyMultiListBox(P1: Integer; P2: TJavaArray<Boolean>); cdecl;
    procedure sendNeverRememberMsg(P1: JString; P2: JString; P3: JString; P4: JMessage); cdecl;
    procedure sendResumeMsg(P1: JString; P2: JString; P3: JString; P4: JMessage); cdecl;
    procedure sendRememberMsg(P1: JString; P2: JString; P3: JString; P4: JMessage); cdecl; overload;
    procedure sendRememberMsg(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString); cdecl; overload;
    procedure pruneMemoryCache; cdecl;
    procedure snapshotVisible(P1: JCanvas; P2: Boolean; P3: Boolean; P4: Boolean; P5: Boolean); cdecl;
    procedure snapshotWholePage(P1: JCanvas; P2: Boolean; P3: Boolean); cdecl;
    function snapshot(P1: Integer; P2: Boolean): JDrawable; cdecl;
    function capturePageToFile(P1: JBitmap_Config; P2: JString; P3: Boolean; P4: Integer; P5: Integer): Boolean; cdecl;
    procedure savePageToDisk(P1: JString; P2: JMessage); cdecl; overload;
    procedure savePageToDisk(P1: JString; P2: Boolean; P3: Integer; P4: JValueCallback); cdecl; overload;
    procedure waitSWInstalled(P1: JString; P2: JMessage); cdecl;
    function getSharedVideoTime: Integer; cdecl;
    procedure setSharedVideoTime(P1: Integer); cdecl;
    procedure setSniffVideoInfo(P1: JString; P2: Integer; P3: JString; P4: JString); cdecl;
    function getSniffVideoID: Integer; cdecl;
    function getSniffVideoRefer: JString; cdecl;
    procedure setIsForVideoSniff(P1: Boolean); cdecl;
    procedure onPauseNativeVideo; cdecl;
    procedure pauseAudio; cdecl;
    procedure playAudio; cdecl;
    procedure deactive; cdecl;
    procedure active; cdecl;
    function isActive: Boolean; cdecl;
    procedure doFingerSearchIfNeed; cdecl;
    procedure onFingerSearchResult(P1: JString; P2: Integer; P3: Integer); cdecl;
    procedure retrieveFingerSearchContext(P1: Integer); cdecl;
    procedure focusAndPopupIM(P1: JString); cdecl;
    function drawPreReadBaseLayer(P1: JCanvas; P2: Boolean): Boolean; cdecl;
    procedure invalidateContent; cdecl;
    function getSolarMode: Boolean; cdecl;
    procedure onAppExit; cdecl;
    procedure onPageTransFormationSettingChanged(P1: Boolean); cdecl;
    procedure updateSelectionPosition; cdecl;
    procedure forceSyncOffsetToCore; cdecl;
    function getScrollX: Integer; cdecl;
    function getScrollY: Integer; cdecl;
    procedure updateContext(P1: JContext); cdecl;
    procedure setDrawWithBuffer(P1: Boolean); cdecl;
    function getDrawWithBuffer: Boolean; cdecl;
    function isMobileSite: Boolean; cdecl;
    procedure dumpDisplayTree; cdecl;
    procedure documentAsText(P1: JMessage); cdecl;
    procedure documentDumpRenderTree(P1: JMessage); cdecl;
    procedure dumpViewportForLayoutTest(P1: JMessage); cdecl;
    procedure setHorizontalScrollBarDrawable(P1: JDrawable); cdecl;
    procedure setHorizontalTrackDrawable(P1: JDrawable); cdecl;
    procedure setVerticalScrollBarDrawable(P1: JDrawable); cdecl;
    procedure setHorizontalScrollBarEnabled(P1: Boolean); cdecl;
    procedure setVerticalTrackDrawable(P1: JDrawable); cdecl;
    procedure setVerticalScrollBarEnabled(P1: Boolean); cdecl;
    function isHorizontalScrollBarEnabled: Boolean; cdecl;
    function isVerticalScrollBarEnabled: Boolean; cdecl;
    procedure setScrollBarSize(P1: Integer); cdecl;
    procedure setScrollBarFadingEnabled(P1: Boolean); cdecl;
    procedure setScrollBarFadeDuration(P1: Integer); cdecl;
    procedure setScrollBarDefaultDelayBeforeFade(P1: Integer); cdecl;
    procedure setOverScrollParams(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: JDrawable; P8: JDrawable; P9: JDrawable); cdecl;
    function getWebChromeClientExtension: JIX5WebChromeClientExtension; cdecl;
    procedure setWebChromeClientExtension(P1: JIX5WebChromeClientExtension); cdecl;
    procedure setWebViewClientExtension(P1: JIX5WebViewClientExtension); cdecl;
    function getWebViewClientExtension: JIX5WebViewClientExtension; cdecl;
    function getSettingsExtension: JIX5WebSettingsExtension; cdecl;
    function wrapDrawableWithNativeBitmap(P1: JDrawable; P2: Integer; P3: JBitmap_Config): JDrawable; cdecl;
    function shouldFitScreenLayout: Boolean; cdecl;
    function getSdkQBStatisticsInfo: JBundle; cdecl;
    function invokeMiscMethod(P1: JString; P2: JBundle): JObject; cdecl;
    procedure setLongPressTextExtensionMenu(P1: Integer); cdecl;
    function needSniff: Boolean; cdecl;
    procedure setForceEnableZoom(P1: Boolean); cdecl;
    procedure setHandleViewBitmap(P1: JBitmap; P2: JBitmap; P3: Integer; P4: Integer); cdecl;
    procedure setHandleViewLineIsShowing(P1: Boolean; P2: Integer); cdecl;
    procedure setHandleViewSelectionColor(P1: Integer; P2: Integer); cdecl;
    procedure setHandleViewLineColor(P1: Integer; P2: Integer); cdecl;
    procedure doTranslateAction(P1: Integer); cdecl;
    procedure setRenderMode(P1: Integer); cdecl;
    function getAllImageInfo: JArrayList; cdecl;
    procedure updateImageList(P1: Integer; P2: Integer; P3: Boolean); cdecl;
    function getBitmapByIndex(P1: Integer): JBitmap; cdecl;
    procedure setAudioAutoPlayNotify(P1: Boolean); cdecl;
    procedure registerServiceWorkerBackground(P1: JString; P2: JString); cdecl;
    procedure updateServiceWorkerBackground(P1: JString); cdecl;
    procedure registerServiceWorkerOffline(P1: JString; P2: JList; P3: Boolean); cdecl;
    procedure clearServiceWorkerCache; cdecl;
    procedure unRegisterServiceWorker(P1: JString; P2: Boolean); cdecl;

    { Property }
  end;

  TJIX5WebViewExtension = class(TJavaGenericImport<JIX5WebViewExtensionClass, JIX5WebViewExtension>) end;

  JProxyWebChromeClientExtensionClass = interface(JObjectClass)
  ['{E1E52594-2518-4C1B-BADA-E368B45F1DA3}']
    { static Property Methods }

    { static Methods }
    {class} function init: JProxyWebChromeClientExtension; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/extension/proxy/ProxyWebChromeClientExtension')]
  JProxyWebChromeClientExtension = interface(JObject)
  ['{A469AF03-174F-4ABC-A6E1-AA35E1832695}']
    { Property Methods }

    { methods }
    function getmWebChromeClient: JIX5WebChromeClientExtension; cdecl;
    procedure setWebChromeClientExtend(P1: JIX5WebChromeClientExtension); cdecl;
    function getVideoLoadingProgressView: JView; cdecl;
    procedure onBackforwardFinished(P1: Integer); cdecl;
    procedure onHitTestResultForPluginFinished(P1: JIX5WebViewExtension; P2: JIX5WebViewBase_HitTestResult; P3: JBundle); cdecl;
    procedure onHitTestResultFinished(P1: JIX5WebViewExtension; P2: JIX5WebViewBase_HitTestResult); cdecl;
    function onAddFavorite(P1: JIX5WebViewExtension; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    procedure onPrepareX5ReadPageDataFinished(P1: JIX5WebViewExtension; P2: JHashMap); cdecl;
    procedure onPromptScaleSaved(P1: JIX5WebViewExtension); cdecl;
    procedure onPromptNotScalable(P1: JIX5WebViewExtension); cdecl;
    function onSavePassword(P1: JString; P2: JString; P3: JString; P4: Boolean; P5: JMessage): Boolean; cdecl; overload;
    function onSavePassword(P1: JValueCallback; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: Boolean): Boolean; cdecl; overload;
    procedure onX5ReadModeAvailableChecked(P1: JHashMap); cdecl;
    function getX5WebChromeClientInstance: JObject; cdecl;
    procedure addFlashView(P1: JView; P2: JViewGroup_LayoutParams); cdecl;
    procedure requestFullScreenFlash; cdecl;
    procedure exitFullScreenFlash; cdecl;
    procedure jsRequestFullScreen; cdecl;
    procedure jsExitFullScreen; cdecl;
    procedure h5videoRequestFullScreen(P1: JString); cdecl;
    procedure h5videoExitFullScreen(P1: JString); cdecl;
    procedure acquireWakeLock; cdecl;
    procedure releaseWakeLock; cdecl;
    function getApplicationContex: JContext; cdecl;
    procedure onAllMetaDataFinished(P1: JIX5WebViewExtension; P2: JHashMap); cdecl;
    function onPageNotResponding(P1: JRunnable): Boolean; cdecl;
    function onMiscCallBack(P1: JString; P2: JBundle): JObject; cdecl;
    procedure openFileChooser(P1: JValueCallback; P2: JString; P3: JString); cdecl;
    procedure onPrintPage; cdecl;
    procedure onColorModeChanged(P1: Int64); cdecl;
    function onPermissionRequest(P1: JString; P2: Int64; P3: JMediaAccessPermissionsCallback): Boolean; cdecl;

    { Property }
  end;

  TJProxyWebChromeClientExtension = class(TJavaGenericImport<JProxyWebChromeClientExtensionClass, JProxyWebChromeClientExtension>) end;

  JProxyWebViewClientExtensionClass = interface(JObjectClass)
  ['{4EC6892A-32E5-491F-A617-2108D3A2E57A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JProxyWebViewClientExtension; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension')]
  JProxyWebViewClientExtension = interface(JObject)
  ['{C8B27A69-4900-47BD-98EF-3C65F8B7B04B}']
    { Property Methods }

    { methods }
    procedure onPreReadFinished; cdecl;
    procedure onPromptScaleSaved; cdecl;
    procedure onUrlChange(P1: JString; P2: JString); cdecl;
    procedure onHideListBox; cdecl;
    procedure onShowListBox(P1: TJavaObjectArray<JString>; P2: TJavaArray<Integer>; P3: TJavaArray<Integer>; P4: Integer); cdecl;
    procedure onShowMutilListBox(P1: TJavaObjectArray<JString>; P2: TJavaArray<Integer>; P3: TJavaArray<Integer>; P4: TJavaArray<Integer>); cdecl;
    procedure onInputBoxTextChanged(P1: JIX5WebViewExtension; P2: JString); cdecl;
    procedure onTransitionToCommitted; cdecl;
    procedure showTranslateBubble(P1: Integer; P2: JString; P3: JString; P4: Integer); cdecl;
    procedure onUploadProgressStart(P1: Integer); cdecl;
    procedure onUploadProgressChange(P1: Integer; P2: Integer; P3: JString); cdecl;
    procedure onFlingScrollBegin(P1: Integer; P2: Integer; P3: Integer); cdecl;
    procedure onFlingScrollEnd; cdecl;
    procedure onScrollChanged(P1: Integer; P2: Integer; P3: Integer; P4: Integer); cdecl; overload;
    procedure onSoftKeyBoardShow; cdecl;
    procedure onSoftKeyBoardHide(P1: Integer); cdecl;
    procedure onSetButtonStatus(P1: Boolean; P2: Boolean); cdecl;
    procedure onHistoryItemChanged; cdecl;
    procedure hideAddressBar; cdecl;
    procedure handlePluginTag(P1: JString; P2: JString; P3: Boolean; P4: JString); cdecl;
    procedure onDoubleTapStart; cdecl;
    procedure onPinchToZoomStart; cdecl;
    procedure onSlidingTitleOffScreen(P1: Integer; P2: Integer); cdecl;
    function preShouldOverrideUrlLoading(P1: JIX5WebViewExtension; P2: JString): Boolean; cdecl;
    procedure onMissingPluginClicked(P1: JString; P2: JString; P3: JString; P4: Integer); cdecl;
    procedure onReportAdFilterInfo(P1: Integer; P2: Integer; P3: JString; P4: Boolean); cdecl;
    procedure onReportHtmlInfo(P1: Integer; P2: JString); cdecl;
    procedure onNativeCrashReport(P1: Integer; P2: JString); cdecl;
    function onMiscCallBack(P1: JString; P2: JBundle): JObject; cdecl; overload;
    function onMiscCallBack(P1: JString; P2: JBundle; P3: JObject; P4: JObject; P5: JObject; P6: JObject): JObject; cdecl; overload;
    function onInterceptTouchEvent(P1: JMotionEvent; P2: JView): Boolean; cdecl;
    function onTouchEvent(P1: JMotionEvent; P2: JView): Boolean; cdecl;
    function dispatchTouchEvent(P1: JMotionEvent; P2: JView): Boolean; cdecl;
    function overScrollBy(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer; P8: Integer; P9: Boolean; P10: JView): Boolean; cdecl;
    procedure onScrollChanged(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: JView); cdecl; overload;
    procedure onOverScrolled(P1: Integer; P2: Integer; P3: Boolean; P4: Boolean; P5: JView); cdecl;
    procedure computeScroll(P1: JView); cdecl;
    procedure onMetricsSavedCountReceived(P1: JString; P2: Boolean; P3: Int64; P4: JString; P5: Integer); cdecl;
    function notifyAutoAudioPlay(P1: JString; P2: JJsResult): Boolean; cdecl;
    function allowJavaScriptOpenWindowAutomatically(P1: JString; P2: JString): Boolean; cdecl;
    function notifyJavaScriptOpenWindowsBlocked(P1: JString; P2: TJavaObjectArray<JString>; P3: JValueCallback; P4: Boolean): Boolean; cdecl;
    function onShowLongClickPopupMenu: Boolean; cdecl;
    procedure onResponseReceived(P1: JWebResourceRequest; P2: JWebResourceResponse; P3: Integer); cdecl;
    procedure didFirstVisuallyNonEmptyPaint; cdecl;
    procedure documentAvailableInMainFrame; cdecl;
    procedure onReceivedViewSource(P1: JString); cdecl;
    procedure onPrefetchResourceHit(P1: Boolean); cdecl;
    procedure onReceivedSslErrorCancel; cdecl;
    procedure invalidate; cdecl;

    { Property }
  end;

  TJProxyWebViewClientExtension = class(TJavaGenericImport<JProxyWebViewClientExtensionClass, JProxyWebViewClientExtension>) end;

  JX5ProxyWebViewClientExtensionClass = interface(JObjectClass)
  ['{63BFE067-9ED8-4342-8C71-0BA33E186FCC}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JWebViewWizardBase): JX5ProxyWebViewClientExtension; cdecl; overload;
    {class} function init(P1: JIX5WebViewClientExtension): JX5ProxyWebViewClientExtension; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/extension/proxy/X5ProxyWebViewClientExtension')]
  JX5ProxyWebViewClientExtension = interface(JObject)
  ['{EEE1C649-0D3F-4EB9-91B2-A5C14C8494FC}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJX5ProxyWebViewClientExtension = class(TJavaGenericImport<JX5ProxyWebViewClientExtensionClass, JX5ProxyWebViewClientExtension>) end;

  JClientCertRequestClass = interface(JObjectClass)
  ['{F9277D11-FF54-4BBF-9E95-DBFE0EA65AB5}']
    { static Property Methods }

    { static Methods }
    {class} function init: JClientCertRequest; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/ClientCertRequest')]
  JClientCertRequest = interface(JObject)
  ['{9F6F5AFC-EC22-4798-AE32-13E0F134457F}']
    { Property Methods }

    { methods }
    function getKeyTypes: TJavaObjectArray<JString>; cdecl;
    function getPrincipals: TJavaObjectArray<JPrincipal>; cdecl;
    function getHost: JString; cdecl;
    function getPort: Integer; cdecl;
    procedure proceed(P1: JPrivateKey; P2: TJavaObjectArray<JX509Certificate>); cdecl;
    procedure ignore; cdecl;
    procedure cancel; cdecl;

    { Property }
  end;

  TJClientCertRequest = class(TJavaGenericImport<JClientCertRequestClass, JClientCertRequest>) end;

  JConsoleMessage_MessageLevelClass = interface(JObjectClass)
  ['{EFA682A3-B52F-432E-B48D-A4992AD9233D}']
    { static Property Methods }
    {class} function _GetTIP: JConsoleMessage_MessageLevel;
    {class} function _GetLOG: JConsoleMessage_MessageLevel;
    {class} function _GetWARNING: JConsoleMessage_MessageLevel;
    {class} function _GetERROR: JConsoleMessage_MessageLevel;
    {class} function _GetDEBUG: JConsoleMessage_MessageLevel;

    { static Methods }
    {class} function values: TJavaObjectArray<JConsoleMessage_MessageLevel>; cdecl;
    {class} function valueOf(P1: JString): JConsoleMessage_MessageLevel; cdecl;

    { static Property }
    {class} property TIP: JConsoleMessage_MessageLevel read _GetTIP;
    {class} property LOG: JConsoleMessage_MessageLevel read _GetLOG;
    {class} property WARNING: JConsoleMessage_MessageLevel read _GetWARNING;
    {class} property ERROR: JConsoleMessage_MessageLevel read _GetERROR;
    {class} property DEBUG: JConsoleMessage_MessageLevel read _GetDEBUG;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/ConsoleMessage$MessageLevel')]
  JConsoleMessage_MessageLevel = interface(JObject)
  ['{BAE04B33-F1E2-4A3A-9DF4-CFC3F1CC0CB8}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJConsoleMessage_MessageLevel = class(TJavaGenericImport<JConsoleMessage_MessageLevelClass, JConsoleMessage_MessageLevel>) end;

  JConsoleMessageClass = interface(JObjectClass)
  ['{A2E6404B-23D9-422E-A22D-C1F9517BFF13}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/ConsoleMessage')]
  JConsoleMessage = interface(IJavaInstance)
  ['{49731ABA-9324-40E0-BD72-675E0715D31A}']
    { Property Methods }

    { methods }
    function messageLevel: JConsoleMessage_MessageLevel; cdecl;
    function &message: JString; cdecl;
    function sourceId: JString; cdecl;
    function lineNumber: Integer; cdecl;

    { Property }
  end;

  TJConsoleMessage = class(TJavaGenericImport<JConsoleMessageClass, JConsoleMessage>) end;

//  JDownloadListenerClass = interface(JObjectClass)
//  ['{98403297-3D47-4839-87C7-5DBB886CEC90}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;
//
//  [JavaSignature('com/tencent/smtt/export/external/interfaces/DownloadListener')]
//  JDownloadListener = interface(IJavaInstance)
//  ['{8000D4FF-5E17-4453-95DE-050E0049C60E}']
//    { Property Methods }
//
//    { methods }
//    procedure onDownloadStart(P1: JString; P2: JString; P3: JString; P4: JString; P5: Int64); cdecl; overload;
//    procedure onDownloadStart(P1: JString; P2: JString; P3: TJavaArray<Byte>; P4: JString; P5: JString; P6: JString; P7: Int64; P8: JString; P9: JString); cdecl; overload;
//    procedure onDownloadVideo(P1: JString; P2: Int64; P3: Integer); cdecl;
//
//    { Property }
//  end;
//
//  TJDownloadListener = class(TJavaGenericImport<JDownloadListenerClass, JDownloadListener>) end;

  JGeolocationPermissionsCallbackClass = interface(JObjectClass)
  ['{36EEF66D-9625-4C32-9FF1-F543142C0A79}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/GeolocationPermissionsCallback')]
  JGeolocationPermissionsCallback = interface(IJavaInstance)
  ['{27ADCDBE-15BF-46DC-B547-2CFC655F80D7}']
    { Property Methods }

    { methods }
    procedure invoke(P1: JString; P2: Boolean; P3: Boolean); cdecl;

    { Property }
  end;

  TJGeolocationPermissionsCallback = class(TJavaGenericImport<JGeolocationPermissionsCallbackClass, JGeolocationPermissionsCallback>) end;

  JHttpAuthHandlerClass = interface(JObjectClass)
  ['{1A208926-9F33-4823-BF53-1C290E2BDFC1}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/HttpAuthHandler')]
  JHttpAuthHandler = interface(IJavaInstance)
  ['{B2FB4992-5C2B-44C2-85A8-65C512691E09}']
    { Property Methods }

    { methods }
    procedure proceed(P1: JString; P2: JString); cdecl;
    procedure cancel; cdecl;
    function useHttpAuthUsernamePassword: Boolean; cdecl;

    { Property }
  end;

  TJHttpAuthHandler = class(TJavaGenericImport<JHttpAuthHandlerClass, JHttpAuthHandler>) end;

  JIconListenerClass = interface(JObjectClass)
  ['{0B155597-9369-4FB4-AFFF-4CE65B45C508}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IconListener')]
  JIconListener = interface(IJavaInstance)
  ['{5D5C2CCD-2D22-4F5C-80F0-FE9FAA078F55}']
    { Property Methods }

    { methods }
    procedure onReceivedIcon(P1: JString; P2: JBitmap); cdecl;

    { Property }
  end;

  TJIconListener = class(TJavaGenericImport<JIconListenerClass, JIconListener>) end;

  JISelectionInterfaceClass = interface(JObjectClass)
  ['{C40A57FD-C833-457A-BA5D-BD371E05BF9C}']
    { static Property Methods }
    {class} function _GetHELD_NOTHING: Word;
    {class} function _GetHELD_FIRST_WIDGET: Word;
    {class} function _GetHELD_SECOND_WIDGET: Word;
    {class} function _GetNONESELECTION: Integer;
    {class} function _GetCARETSELECTION: Integer;
    {class} function _GetINPUTSELECTION: Integer;
    {class} function _GetNORMALSELECTION: Integer;
    {class} function _GetEDITABLESELECTION: Integer;

    { static Methods }

    { static Property }
    {class} property HELD_NOTHING: Word read _GetHELD_NOTHING;
    {class} property HELD_FIRST_WIDGET: Word read _GetHELD_FIRST_WIDGET;
    {class} property HELD_SECOND_WIDGET: Word read _GetHELD_SECOND_WIDGET;
    {class} property NONESELECTION: Integer read _GetNONESELECTION;
    {class} property CARETSELECTION: Integer read _GetCARETSELECTION;
    {class} property INPUTSELECTION: Integer read _GetINPUTSELECTION;
    {class} property NORMALSELECTION: Integer read _GetNORMALSELECTION;
    {class} property EDITABLESELECTION: Integer read _GetEDITABLESELECTION;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/ISelectionInterface')]
  JISelectionInterface = interface(IJavaInstance)
  ['{723E372F-266D-4044-9F73-6171B7A55CCE}']
    { Property Methods }

    { methods }
    procedure onSelectionChange(P1: JRect; P2: JRect; P3: Integer; P4: Integer; P5: Word); cdecl;
    procedure onSelectionBegin(P1: JRect; P2: JRect; P3: Integer; P4: Integer; P5: Word); cdecl;
    procedure onSelectionBeginFailed(P1: Integer; P2: Integer); cdecl;
    procedure onSelectionDone(P1: JRect; P2: Boolean); cdecl;
    procedure hideSelectionView; cdecl;
    procedure onSelectCancel; cdecl;
    procedure updateHelperWidget(P1: JRect; P2: JRect); cdecl;
    procedure setText(P1: JString; P2: Boolean); cdecl;
    function getText: JString; cdecl;
    procedure onRetrieveFingerSearchContextResponse(P1: JString; P2: JString; P3: Integer); cdecl;

    { Property }
  end;

  TJISelectionInterface = class(TJavaGenericImport<JISelectionInterfaceClass, JISelectionInterface>) end;

  JIX5DateSorterClass = interface(JObjectClass)
  ['{28D8B835-9052-438C-9CB5-C6967545AB83}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5DateSorter')]
  JIX5DateSorter = interface(IJavaInstance)
  ['{C65678FB-8B9C-4297-A98A-3CAC2387BFB8}']
    { Property Methods }

    { methods }
    function getIndex(P1: Int64): Integer; cdecl;
    function getLabel(P1: Integer): JString; cdecl;
    function getBoundary(P1: Integer): Int64; cdecl;

    { Property }
  end;

  TJIX5DateSorter = class(TJavaGenericImport<JIX5DateSorterClass, JIX5DateSorter>) end;

  JIX5ScrollListenerClass = interface(JObjectClass)
  ['{1EF17CE8-BE7C-4DCC-8C46-8703A9F45EA3}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5ScrollListener')]
  JIX5ScrollListener = interface(IJavaInstance)
  ['{A5B70A6E-CC06-4272-A927-635CB1F6BEFF}']
    { Property Methods }

    { methods }
    function onOverScroll(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer; P8: Integer; P9: Boolean): Boolean; cdecl;

    { Property }
  end;

  TJIX5ScrollListener = class(TJavaGenericImport<JIX5ScrollListenerClass, JIX5ScrollListener>) end;

  JIX5WebBackForwardListClass = interface(JObjectClass)
  ['{CE4C1471-891C-45AB-BE4A-2AE32D00E972}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebBackForwardList')]
  JIX5WebBackForwardList = interface(IJavaInstance)
  ['{44320D3B-10BA-4E66-A20B-5135C0DE43B3}']
    { Property Methods }

    { methods }
    function getCurrentItem: JIX5WebHistoryItem; cdecl;
    function getCurrentIndex: Integer; cdecl;
    function getItemAtIndex(P1: Integer): JIX5WebHistoryItem; cdecl;
    function getSize: Integer; cdecl;

    { Property }
  end;

  TJIX5WebBackForwardList = class(TJavaGenericImport<JIX5WebBackForwardListClass, JIX5WebBackForwardList>) end;

  JIX5WebBackForwardListClientClass = interface(JObjectClass)
  ['{05CCEE3F-2D7C-4C0E-9E53-0815454270E8}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebBackForwardListClient')]
  JIX5WebBackForwardListClient = interface(IJavaInstance)
  ['{6203E448-E82E-4278-8F08-3EE39DFE4E27}']
    { Property Methods }

    { methods }
    procedure onNewHistoryItem(P1: JIX5WebHistoryItem); cdecl;
    procedure onIndexChanged(P1: JIX5WebHistoryItem; P2: Integer); cdecl;
    procedure onRemoveHistoryItem(P1: JIX5WebHistoryItem); cdecl;

    { Property }
  end;

  TJIX5WebBackForwardListClient = class(TJavaGenericImport<JIX5WebBackForwardListClientClass, JIX5WebBackForwardListClient>) end;

  JIX5WebChromeClient_CustomViewCallbackClass = interface(JObjectClass)
  ['{2EB2DD76-C656-4C6D-9DE3-97F49EBF1039}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback')]
  JIX5WebChromeClient_CustomViewCallback = interface(IJavaInstance)
  ['{BCEF43F1-636F-4C34-A509-8FC7AD415576}']
    { Property Methods }

    { methods }
    procedure onCustomViewHidden; cdecl;

    { Property }
  end;

  TJIX5WebChromeClient_CustomViewCallback = class(TJavaGenericImport<JIX5WebChromeClient_CustomViewCallbackClass, JIX5WebChromeClient_CustomViewCallback>) end;

  JIX5WebChromeClient_FileChooserParamsClass = interface(JObjectClass)
  ['{1C8BFEDF-3055-4B50-A611-45536D1848C3}']
    { static Property Methods }
    {class} function _GetMODE_OPEN: Integer;
    {class} function _GetMODE_OPEN_MULTIPLE: Integer;
    {class} function _GetMODE_OPEN_FOLDER: Integer;
    {class} function _GetMODE_SAVE: Integer;

    { static Methods }
    {class} function init: JIX5WebChromeClient_FileChooserParams; cdecl;
    {class} function parseResult(P1: Integer; P2: JIntent): TJavaObjectArray<Jnet_Uri>; cdecl;

    { static Property }
    {class} property MODE_OPEN: Integer read _GetMODE_OPEN;
    {class} property MODE_OPEN_MULTIPLE: Integer read _GetMODE_OPEN_MULTIPLE;
    {class} property MODE_OPEN_FOLDER: Integer read _GetMODE_OPEN_FOLDER;
    {class} property MODE_SAVE: Integer read _GetMODE_SAVE;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams')]
  JIX5WebChromeClient_FileChooserParams = interface(JObject)
  ['{5FDE675B-29AC-42C0-967D-F2EB7AE8C959}']
    { Property Methods }

    { methods }
    function getMode: Integer; cdecl;
    function getAcceptTypes: TJavaObjectArray<JString>; cdecl;
    function isCaptureEnabled: Boolean; cdecl;
    function getTitle: JCharSequence; cdecl;
    function getFilenameHint: JString; cdecl;
    function createIntent: JIntent; cdecl;

    { Property }
  end;

  TJIX5WebChromeClient_FileChooserParams = class(TJavaGenericImport<JIX5WebChromeClient_FileChooserParamsClass, JIX5WebChromeClient_FileChooserParams>) end;

  JIX5WebChromeClientClass = interface(JObjectClass)
  ['{C6A923B0-58E5-442E-80B0-2A1CA699AA0A}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebChromeClient')]
  JIX5WebChromeClient = interface(IJavaInstance)
  ['{22B0D820-1ABA-4E45-BA5E-70AE70C6599B}']
    { Property Methods }

    { methods }
    procedure onExceededDatabaseQuota(P1: JString; P2: JString; P3: Int64; P4: Int64; P5: Int64; P6: JQuotaUpdater); cdecl;
    function getDefaultVideoPoster: JBitmap; cdecl;
    procedure onConsoleMessage(P1: JString; P2: Integer; P3: JString); cdecl; overload;
    function onConsoleMessage(P1: JConsoleMessage): Boolean; cdecl; overload;
    function onCreateWindow(P1: JIX5WebViewBase; P2: Boolean; P3: Boolean; P4: JMessage): Boolean; cdecl;
    procedure onGeolocationPermissionsHidePrompt; cdecl;
    procedure onGeolocationPermissionsShowPrompt(P1: JString; P2: JGeolocationPermissionsCallback); cdecl;
    procedure onHideCustomView; cdecl;
    function onJsAlert(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    function onJsConfirm(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    function onJsPrompt(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JString; P5: JJsPromptResult): Boolean; cdecl;
    function onJsBeforeUnload(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    function onJsTimeout: Boolean; cdecl;
    procedure onProgressChanged(P1: JIX5WebViewBase; P2: Integer); cdecl;
    procedure onReachedMaxAppCacheSize(P1: Int64; P2: Int64; P3: JQuotaUpdater); cdecl;
    procedure onReceivedIcon(P1: JIX5WebViewBase; P2: JBitmap); cdecl;
    procedure onReceivedTouchIconUrl(P1: JIX5WebViewBase; P2: JString; P3: Boolean); cdecl;
    procedure onReceivedTitle(P1: JIX5WebViewBase; P2: JString); cdecl;
    procedure onRequestFocus(P1: JIX5WebViewBase); cdecl;
    procedure onShowCustomView(P1: JView; P2: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
    procedure onShowCustomView(P1: JView; P2: Integer; P3: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
    procedure onCloseWindow(P1: JIX5WebViewBase); cdecl;
    procedure getVisitedHistory(P1: JValueCallback); cdecl;
    procedure openFileChooser(P1: JValueCallback; P2: JString; P3: JString; P4: Boolean); cdecl;
    function onShowFileChooser(P1: JIX5WebViewBase; P2: JValueCallback; P3: JIX5WebChromeClient_FileChooserParams): Boolean; cdecl;
    procedure onGeolocationStopUpdating; cdecl;
    procedure onGeolocationStartUpdating(P1: JValueCallback; P2: JValueCallback); cdecl;

    { Property }
  end;

  TJIX5WebChromeClient = class(TJavaGenericImport<JIX5WebChromeClientClass, JIX5WebChromeClient>) end;

  JIX5WebHistoryItemClass = interface(JObjectClass)
  ['{4B914E2C-9622-469D-9719-9E674C481863}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebHistoryItem')]
  JIX5WebHistoryItem = interface(IJavaInstance)
  ['{3FA17EB0-DAAA-477B-B0A4-3A07B8D1BD0A}']
    { Property Methods }

    { methods }
    function getId: Integer; cdecl;
    function getUrl: JString; cdecl;
    function getOriginalUrl: JString; cdecl;
    function getTitle: JString; cdecl;
    function getFavicon: JBitmap; cdecl;
    function getTouchIconUrl: JString; cdecl;
    function getCustomData: JObject; cdecl;
    procedure setCustomData(P1: JObject); cdecl;
    procedure setFavicon(P1: JBitmap); cdecl;
    procedure setUrl(P1: JString); cdecl;
    function getIsSubmitForm: Boolean; cdecl;
    function drawBaseLayer(P1: JCanvas; P2: Boolean): Boolean; cdecl;
    function canDrawBaseLayer: Boolean; cdecl;

    { Property }
  end;

  TJIX5WebHistoryItem = class(TJavaGenericImport<JIX5WebHistoryItemClass, JIX5WebHistoryItem>) end;

  JIX5WebSettings_LayoutAlgorithmClass = interface(JObjectClass)
  ['{6097F36A-12A7-4462-BB75-67D9F7AAFA74}']
    { static Property Methods }
    {class} function _GetNORMAL: JIX5WebSettings_LayoutAlgorithm;
    {class} function _GetSINGLE_COLUMN: JIX5WebSettings_LayoutAlgorithm;
    {class} function _GetNARROW_COLUMNS: JIX5WebSettings_LayoutAlgorithm;

    { static Methods }
    {class} function values: TJavaObjectArray<JIX5WebSettings_LayoutAlgorithm>; cdecl;
    {class} function valueOf(P1: JString): JIX5WebSettings_LayoutAlgorithm; cdecl;

    { static Property }
    {class} property NORMAL: JIX5WebSettings_LayoutAlgorithm read _GetNORMAL;
    {class} property SINGLE_COLUMN: JIX5WebSettings_LayoutAlgorithm read _GetSINGLE_COLUMN;
    {class} property NARROW_COLUMNS: JIX5WebSettings_LayoutAlgorithm read _GetNARROW_COLUMNS;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm')]
  JIX5WebSettings_LayoutAlgorithm = interface(JObject)
  ['{59378D30-4344-4D82-BBFE-97C74E6EB96A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIX5WebSettings_LayoutAlgorithm = class(TJavaGenericImport<JIX5WebSettings_LayoutAlgorithmClass, JIX5WebSettings_LayoutAlgorithm>) end;

  JIX5WebSettings_PluginStateClass = interface(JObjectClass)
  ['{935FE398-2C2A-4130-BA31-815C2D4E6A01}']
    { static Property Methods }
    {class} function _GetON: JIX5WebSettings_PluginState;
    {class} function _GetON_DEMAND: JIX5WebSettings_PluginState;
    {class} function _GetOFF: JIX5WebSettings_PluginState;

    { static Methods }
    {class} function values: TJavaObjectArray<JIX5WebSettings_PluginState>; cdecl;
    {class} function valueOf(P1: JString): JIX5WebSettings_PluginState; cdecl;

    { static Property }
    {class} property &ON: JIX5WebSettings_PluginState read _GetON;
    {class} property ON_DEMAND: JIX5WebSettings_PluginState read _GetON_DEMAND;
    {class} property OFF: JIX5WebSettings_PluginState read _GetOFF;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebSettings$PluginState')]
  JIX5WebSettings_PluginState = interface(JObject)
  ['{DFD4ECE7-8351-4BD7-8CFF-6FDEC8755AEC}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIX5WebSettings_PluginState = class(TJavaGenericImport<JIX5WebSettings_PluginStateClass, JIX5WebSettings_PluginState>) end;

  JIX5WebSettings_RenderPriorityClass = interface(JObjectClass)
  ['{E3D19846-AEE3-4359-95F5-BB02912A43A2}']
    { static Property Methods }
    {class} function _GetNORMAL: JIX5WebSettings_RenderPriority;
    {class} function _GetHIGH: JIX5WebSettings_RenderPriority;
    {class} function _GetLOW: JIX5WebSettings_RenderPriority;

    { static Methods }
    {class} function values: TJavaObjectArray<JIX5WebSettings_RenderPriority>; cdecl;
    {class} function valueOf(P1: JString): JIX5WebSettings_RenderPriority; cdecl;

    { static Property }
    {class} property NORMAL: JIX5WebSettings_RenderPriority read _GetNORMAL;
    {class} property HIGH: JIX5WebSettings_RenderPriority read _GetHIGH;
    {class} property LOW: JIX5WebSettings_RenderPriority read _GetLOW;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebSettings$RenderPriority')]
  JIX5WebSettings_RenderPriority = interface(JObject)
  ['{55EE201B-2AD9-4DD3-A40F-806335DC0207}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIX5WebSettings_RenderPriority = class(TJavaGenericImport<JIX5WebSettings_RenderPriorityClass, JIX5WebSettings_RenderPriority>) end;

  JIX5WebSettings_TextSizeClass = interface(JObjectClass)
  ['{6993F4B1-9902-4C10-BB53-6C9336D08ACD}']
    { static Property Methods }
    {class} function _GetSMALLEST: JIX5WebSettings_TextSize;
    {class} function _GetSMALLER: JIX5WebSettings_TextSize;
    {class} function _GetNORMAL: JIX5WebSettings_TextSize;
    {class} function _GetLARGER: JIX5WebSettings_TextSize;
    {class} function _GetLARGEST: JIX5WebSettings_TextSize;

    { static Methods }
    {class} function values: TJavaObjectArray<JIX5WebSettings_TextSize>; cdecl;
    {class} function valueOf(P1: JString): JIX5WebSettings_TextSize; cdecl;

    { static Property }
    {class} property SMALLEST: JIX5WebSettings_TextSize read _GetSMALLEST;
    {class} property SMALLER: JIX5WebSettings_TextSize read _GetSMALLER;
    {class} property NORMAL: JIX5WebSettings_TextSize read _GetNORMAL;
    {class} property LARGER: JIX5WebSettings_TextSize read _GetLARGER;
    {class} property LARGEST: JIX5WebSettings_TextSize read _GetLARGEST;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebSettings$TextSize')]
  JIX5WebSettings_TextSize = interface(JObject)
  ['{D4590006-6010-4EB8-9559-AAD5478B68CE}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIX5WebSettings_TextSize = class(TJavaGenericImport<JIX5WebSettings_TextSizeClass, JIX5WebSettings_TextSize>) end;

  JIX5WebSettings_ZoomDensityClass = interface(JObjectClass)
  ['{4282B542-56F4-4411-B04B-94E87AA7CAD8}']
    { static Property Methods }
    {class} function _GetFAR: JIX5WebSettings_ZoomDensity;
    {class} function _GetMEDIUM: JIX5WebSettings_ZoomDensity;
    {class} function _GetCLOSE: JIX5WebSettings_ZoomDensity;

    { static Methods }
    {class} function values: TJavaObjectArray<JIX5WebSettings_ZoomDensity>; cdecl;
    {class} function valueOf(P1: JString): JIX5WebSettings_ZoomDensity; cdecl;

    { static Property }
    {class} property &FAR: JIX5WebSettings_ZoomDensity read _GetFAR;
    {class} property MEDIUM: JIX5WebSettings_ZoomDensity read _GetMEDIUM;
    {class} property CLOSE: JIX5WebSettings_ZoomDensity read _GetCLOSE;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity')]
  JIX5WebSettings_ZoomDensity = interface(JObject)
  ['{64424BED-B00D-439C-8563-91933EAC5808}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIX5WebSettings_ZoomDensity = class(TJavaGenericImport<JIX5WebSettings_ZoomDensityClass, JIX5WebSettings_ZoomDensity>) end;

  JIX5WebSettingsClass = interface(JObjectClass)
  ['{F66847A1-CE01-4F67-98C5-851AD1EA5C42}']
    { static Property Methods }
    {class} function _GetLOAD_DEFAULT: Integer;
    {class} function _GetLOAD_NORMAL: Integer;
    {class} function _GetLOAD_CACHE_ELSE_NETWORK: Integer;
    {class} function _GetLOAD_NO_CACHE: Integer;
    {class} function _GetLOAD_CACHE_ONLY: Integer;
    {class} function _GetLOAD_CACHE_AD: Integer;
    {class} function _GetDEFAULT_CACHE_CAPACITY: Integer;

    { static Methods }

    { static Property }
    {class} property LOAD_DEFAULT: Integer read _GetLOAD_DEFAULT;
    {class} property LOAD_NORMAL: Integer read _GetLOAD_NORMAL;
    {class} property LOAD_CACHE_ELSE_NETWORK: Integer read _GetLOAD_CACHE_ELSE_NETWORK;
    {class} property LOAD_NO_CACHE: Integer read _GetLOAD_NO_CACHE;
    {class} property LOAD_CACHE_ONLY: Integer read _GetLOAD_CACHE_ONLY;
    {class} property LOAD_CACHE_AD: Integer read _GetLOAD_CACHE_AD;
    {class} property DEFAULT_CACHE_CAPACITY: Integer read _GetDEFAULT_CACHE_CAPACITY;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebSettings')]
  JIX5WebSettings = interface(IJavaInstance)
  ['{3FCF2CFE-9029-4120-9E4E-71CDF9ABC324}']
    { Property Methods }

    { methods }
    procedure setLoadsImagesAutomatically(P1: Boolean); cdecl;
    procedure setSavePassword(P1: Boolean); cdecl;
    procedure setUserAgent(P1: JString); cdecl; overload;
    procedure setUserAgent(P1: JString; P2: Boolean); cdecl; overload;
    procedure setJavaScriptEnabled(P1: Boolean); cdecl;
    procedure setAllowFileAccess(P1: Boolean); cdecl;
    procedure setSupportZoom(P1: Boolean); cdecl;
    procedure setBuiltInZoomControls(P1: Boolean); cdecl;
    procedure setUseWideViewPort(P1: Boolean); cdecl;
    procedure setSupportMultipleWindows(P1: Boolean); cdecl;
    procedure setLoadWithOverviewMode(P1: Boolean); cdecl;
    procedure setAppCacheEnabled(P1: Boolean); cdecl;
    procedure setAppCacheMaxSize(P1: Int64); cdecl;
    procedure setAppCachePath(P1: JString); cdecl;
    procedure setDatabaseEnabled(P1: Boolean); cdecl;
    function getDatabaseEnabled: Boolean; cdecl;
    procedure setDatabasePath(P1: JString); cdecl;
    function getDatabasePath: JString; cdecl;
    procedure setDefaultDatabasePath(P1: Boolean); cdecl;
    procedure setDomStorageEnabled(P1: Boolean); cdecl;
    procedure setGeolocationEnabled(P1: Boolean); cdecl;
    procedure setGeolocationDatabasePath(P1: JString); cdecl;
    function getMixedContentMode: Integer; cdecl;
    function getUserAgent: JString; cdecl;
    procedure setLayoutAlgorithm(P1: JIX5WebSettings_LayoutAlgorithm); cdecl;
    procedure setPluginState(P1: JIX5WebSettings_PluginState); cdecl;
    function getPluginState: JIX5WebSettings_PluginState; cdecl;
    procedure setTextSize(P1: JIX5WebSettings_TextSize); cdecl;
    function getTextSize: JIX5WebSettings_TextSize; cdecl;
    procedure setJavaScriptCanOpenWindowsAutomatically(P1: Boolean); cdecl;
    procedure setDefaultTextEncodingName(P1: JString); cdecl;
    procedure setMinimumFontSize(P1: Integer); cdecl;
    procedure setMinimumLogicalFontSize(P1: Integer); cdecl;
    procedure setDefaultFontSize(P1: Integer); cdecl;
    procedure setDefaultFixedFontSize(P1: Integer); cdecl;
    procedure setNavDump(P1: Boolean); cdecl;
    procedure setLightTouchEnabled(P1: Boolean); cdecl;
    procedure setSaveFormData(P1: Boolean); cdecl;
    procedure setNeedInitialFocus(P1: Boolean); cdecl;
    procedure setAllowUniversalAccessFromFileURLs(P1: Boolean); cdecl;
    procedure setAllowFileAccessFromFileURLs(P1: Boolean); cdecl;
    procedure setCacheMode(P1: Integer); cdecl;
    procedure setPluginEnabled(P1: Boolean); cdecl;
    procedure setUserAgentString(P1: JString); cdecl;
    function getUserAgentString: JString; cdecl;
    procedure setBlockNetworkImage(P1: Boolean); cdecl;
    procedure setRenderPriority(P1: JIX5WebSettings_RenderPriority); cdecl;
    procedure setPluginsEnabled(P1: Boolean); cdecl;
    procedure setAllowContentAccess(P1: Boolean); cdecl;
    function getAllowContentAccess: Boolean; cdecl;
    function getAllowFileAccess: Boolean; cdecl;
    function getBuiltInZoomControls: Boolean; cdecl;
    function getDefaultFixedFontSize: Integer; cdecl;
    function getCursiveFontFamily: JString; cdecl;
    function getDefaultFontSize: Integer; cdecl;
    function getDefaultTextEncodingName: JString; cdecl;
    function getFantasyFontFamily: JString; cdecl;
    function getFixedFontFamily: JString; cdecl;
    function getJavaScriptCanOpenWindowsAutomatically: Boolean; cdecl;
    function getJavaScriptEnabled: Boolean; cdecl;
    function getLayoutAlgorithm: JIX5WebSettings_LayoutAlgorithm; cdecl;
    function getLightTouchEnabled: Boolean; cdecl;
    function getMinimumFontSize: Integer; cdecl;
    function getMinimumLogicalFontSize: Integer; cdecl;
    function getNavDump: Boolean; cdecl;
    function getPluginsEnabled: Boolean; cdecl;
    function getPluginsPath: JString; cdecl;
    function getSansSerifFontFamily: JString; cdecl;
    function getSaveFormData: Boolean; cdecl;
    function getSavePassword: Boolean; cdecl;
    function getSerifFontFamily: JString; cdecl;
    function getStandardFontFamily: JString; cdecl;
    function supportMultipleWindows: Boolean; cdecl;
    function supportZoom: Boolean; cdecl;
    function getUseWideViewPort: Boolean; cdecl;
    function getLoadsImagesAutomatically: Boolean; cdecl;
    procedure setFantasyFontFamily(P1: JString); cdecl;
    procedure setFixedFontFamily(P1: JString); cdecl;
    procedure setCursiveFontFamily(P1: JString); cdecl;
    function getCacheMode: Integer; cdecl;
    procedure setSansSerifFontFamily(P1: JString); cdecl;
    procedure setSerifFontFamily(P1: JString); cdecl;
    procedure setStandardFontFamily(P1: JString); cdecl;
    procedure setBlockNetworkLoads(P1: Boolean); cdecl;
    function getBlockNetworkImage: Boolean; cdecl;
    function getBlockNetworkLoads: Boolean; cdecl;
    procedure setDisplayZoomControls(P1: Boolean); cdecl;
    function getDisplayZoomControls: Boolean; cdecl;
    function getLoadWithOverviewMode: Boolean; cdecl;
    procedure setEnableSmoothTransition(P1: Boolean); cdecl;
    function enableSmoothTransition: Boolean; cdecl;
    procedure setUseWebViewBackgroundForOverscrollBackground(P1: Boolean); cdecl;
    function getUseWebViewBackgroundForOverscrollBackground: Boolean; cdecl;
    procedure setTextZoom(P1: Integer); cdecl;
    function getTextZoom: Integer; cdecl;
    procedure setDefaultZoom(P1: JIX5WebSettings_ZoomDensity); cdecl;
    function getDefaultZoom: JIX5WebSettings_ZoomDensity; cdecl;
    procedure setPluginsPath(P1: JString); cdecl;
    function getDomStorageEnabled: Boolean; cdecl;
    function getMediaPlaybackRequiresUserGesture: Boolean; cdecl;
    procedure setMediaPlaybackRequiresUserGesture(P1: Boolean); cdecl;

    { Property }
  end;

  TJIX5WebSettings = class(TJavaGenericImport<JIX5WebSettingsClass, JIX5WebSettings>) end;

  JIX5WebViewBase_FindListenerClass = interface(JObjectClass)
  ['{3E74F0B8-E0DE-4B43-B587-608336E83527}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebViewBase$FindListener')]
  JIX5WebViewBase_FindListener = interface(IJavaInstance)
  ['{51E1E320-B6E8-4C3D-959E-513EC8D97A36}']
    { Property Methods }

    { methods }
    procedure onFindResultReceived(P1: Integer; P2: Integer; P3: Boolean); cdecl;

    { Property }
  end;

  TJIX5WebViewBase_FindListener = class(TJavaGenericImport<JIX5WebViewBase_FindListenerClass, JIX5WebViewBase_FindListener>) end;

  JIX5WebViewBase_HitTestResult_AnchorDataClass = interface(JObjectClass)
  ['{366F761B-C432-4C93-9129-A046D7CD8193}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JIX5WebViewBase_HitTestResult): JIX5WebViewBase_HitTestResult_AnchorData; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult$AnchorData')]
  JIX5WebViewBase_HitTestResult_AnchorData = interface(JObject)
  ['{1F8657BF-EF82-4394-9A1B-343D7EC2D5B8}']
    { Property Methods }
    function _GetmAnchorUrl: JString;
    procedure _SetmAnchorUrl(amAnchorUrl: JString);
    function _GetmAnchorTitle: JString;
    procedure _SetmAnchorTitle(amAnchorTitle: JString);

    { methods }

    { Property }
    property mAnchorUrl: JString read _GetmAnchorUrl write _SetmAnchorUrl;
    property mAnchorTitle: JString read _GetmAnchorTitle write _SetmAnchorTitle;
  end;

  TJIX5WebViewBase_HitTestResult_AnchorData = class(TJavaGenericImport<JIX5WebViewBase_HitTestResult_AnchorDataClass, JIX5WebViewBase_HitTestResult_AnchorData>) end;

  JIX5WebViewBase_HitTestResult_EditableDataClass = interface(JObjectClass)
  ['{5E905583-CAB5-40D1-802E-998703C57F2D}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JIX5WebViewBase_HitTestResult): JIX5WebViewBase_HitTestResult_EditableData; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult$EditableData')]
  JIX5WebViewBase_HitTestResult_EditableData = interface(JObject)
  ['{62C23A73-00B5-46EA-9403-719F8B43A98E}']
    { Property Methods }
    function _GetmEditableText: JString;
    procedure _SetmEditableText(amEditableText: JString);
    function _GetmIsPassword: Boolean;
    procedure _SetmIsPassword(amIsPassword: Boolean);

    { methods }

    { Property }
    property mEditableText: JString read _GetmEditableText write _SetmEditableText;
    property mIsPassword: Boolean read _GetmIsPassword write _SetmIsPassword;
  end;

  TJIX5WebViewBase_HitTestResult_EditableData = class(TJavaGenericImport<JIX5WebViewBase_HitTestResult_EditableDataClass, JIX5WebViewBase_HitTestResult_EditableData>) end;

  JIX5WebViewBase_HitTestResult_ImageAnchorDataClass = interface(JObjectClass)
  ['{02C4DE3C-7CDF-4B5F-905D-A82E68E16E2A}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JIX5WebViewBase_HitTestResult): JIX5WebViewBase_HitTestResult_ImageAnchorData; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult$ImageAnchorData')]
  JIX5WebViewBase_HitTestResult_ImageAnchorData = interface(JObject)
  ['{D7486485-6F31-4588-985F-2C091E3F23B3}']
    { Property Methods }
    function _GetmPicUrl: JString;
    procedure _SetmPicUrl(amPicUrl: JString);
    function _GetmAHref: JString;
    procedure _SetmAHref(amAHref: JString);
    function _GetmBmp: JBitmap;
    procedure _SetmBmp(amBmp: JBitmap);
    function _GetmRawDataSize: Int64;
    procedure _SetmRawDataSize(amRawDataSize: Int64);

    { methods }
    function getBitmap: JBitmap; cdecl;

    { Property }
    property mPicUrl: JString read _GetmPicUrl write _SetmPicUrl;
    property mAHref: JString read _GetmAHref write _SetmAHref;
    property mBmp: JBitmap read _GetmBmp write _SetmBmp;
    property mRawDataSize: Int64 read _GetmRawDataSize write _SetmRawDataSize;
  end;

  TJIX5WebViewBase_HitTestResult_ImageAnchorData = class(TJavaGenericImport<JIX5WebViewBase_HitTestResult_ImageAnchorDataClass, JIX5WebViewBase_HitTestResult_ImageAnchorData>) end;

  JIX5WebViewBase_HitTestResult_ImageDataClass = interface(JObjectClass)
  ['{EB0C5D51-EF64-4EF6-85DA-534B1F80C9C0}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JIX5WebViewBase_HitTestResult): JIX5WebViewBase_HitTestResult_ImageData; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult$ImageData')]
  JIX5WebViewBase_HitTestResult_ImageData = interface(JObject)
  ['{0C7FD6EF-5B39-40B6-8FAB-1EB684EB17F7}']
    { Property Methods }
    function _GetmPicUrl: JString;
    procedure _SetmPicUrl(amPicUrl: JString);
    function _GetmBmp: JBitmap;
    procedure _SetmBmp(amBmp: JBitmap);
    function _GetmRawDataSize: Int64;
    procedure _SetmRawDataSize(amRawDataSize: Int64);

    { methods }
    function getBitmap: JBitmap; cdecl;

    { Property }
    property mPicUrl: JString read _GetmPicUrl write _SetmPicUrl;
    property mBmp: JBitmap read _GetmBmp write _SetmBmp;
    property mRawDataSize: Int64 read _GetmRawDataSize write _SetmRawDataSize;
  end;

  TJIX5WebViewBase_HitTestResult_ImageData = class(TJavaGenericImport<JIX5WebViewBase_HitTestResult_ImageDataClass, JIX5WebViewBase_HitTestResult_ImageData>) end;

  JIX5WebViewBase_HitTestResultClass = interface(JObjectClass)
  ['{1544D2AB-E2CD-4E34-AC71-A8BF2498723F}']
    { static Property Methods }
    {class} function _GetUNKNOWN_TYPE: Integer;
    {class} function _GetANCHOR_TYPE: Integer;
    {class} function _GetPHONE_TYPE: Integer;
    {class} function _GetGEO_TYPE: Integer;
    {class} function _GetEMAIL_TYPE: Integer;
    {class} function _GetIMAGE_TYPE: Integer;
    {class} function _GetIMAGE_ANCHOR_TYPE: Integer;
    {class} function _GetSRC_ANCHOR_TYPE: Integer;
    {class} function _GetSRC_IMAGE_ANCHOR_TYPE: Integer;
    {class} function _GetEDIT_TEXT_TYPE: Integer;
    {class} function _GetBUTTON_TYPE: Integer;

    { static Methods }
    {class} function init: JIX5WebViewBase_HitTestResult; cdecl;

    { static Property }
    {class} property UNKNOWN_TYPE: Integer read _GetUNKNOWN_TYPE;
    {class} property ANCHOR_TYPE: Integer read _GetANCHOR_TYPE;
    {class} property PHONE_TYPE: Integer read _GetPHONE_TYPE;
    {class} property GEO_TYPE: Integer read _GetGEO_TYPE;
    {class} property EMAIL_TYPE: Integer read _GetEMAIL_TYPE;
    {class} property IMAGE_TYPE: Integer read _GetIMAGE_TYPE;
    {class} property IMAGE_ANCHOR_TYPE: Integer read _GetIMAGE_ANCHOR_TYPE;
    {class} property SRC_ANCHOR_TYPE: Integer read _GetSRC_ANCHOR_TYPE;
    {class} property SRC_IMAGE_ANCHOR_TYPE: Integer read _GetSRC_IMAGE_ANCHOR_TYPE;
    {class} property EDIT_TEXT_TYPE: Integer read _GetEDIT_TEXT_TYPE;
    {class} property BUTTON_TYPE: Integer read _GetBUTTON_TYPE;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult')]
  JIX5WebViewBase_HitTestResult = interface(JObject)
  ['{AA55879D-DB42-429F-A2FB-F2C197B39A09}']
    { Property Methods }

    { methods }
    function isFromSinglePress: Boolean; cdecl;
    procedure setIsFromSinglePress(P1: Boolean); cdecl;
    procedure setType(P1: Integer); cdecl;
    procedure setData(P1: JObject); cdecl;
    function getType: Integer; cdecl;
    function getData: JObject; cdecl;
    procedure setHitTestPoint(P1: JPoint); cdecl;
    function getHitTestPoint: JPoint; cdecl;
    procedure setExtra(P1: JString); cdecl;
    function getExtra: JString; cdecl;

    { Property }
  end;

  TJIX5WebViewBase_HitTestResult = class(TJavaGenericImport<JIX5WebViewBase_HitTestResultClass, JIX5WebViewBase_HitTestResult>) end;

  JIX5WebViewBase_ImageInfoClass = interface(JObjectClass)
  ['{43E8C097-4A3C-4449-A055-B3B3162F1C84}']
    { static Property Methods }

    { static Methods }
    {class} function init: JIX5WebViewBase_ImageInfo; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebViewBase$ImageInfo')]
  JIX5WebViewBase_ImageInfo = interface(JObject)
  ['{EB381156-CA83-49B8-B429-6CE7CC3DF58B}']
    { Property Methods }
    function _GetmPicUrl: JString;
    procedure _SetmPicUrl(amPicUrl: JString);
    function _GetmRawDataSize: Int64;
    procedure _SetmRawDataSize(amRawDataSize: Int64);
    function _GetmIsGif: Boolean;
    procedure _SetmIsGif(amIsGif: Boolean);

    { methods }
    function getPicUrl: JString; cdecl;
    function getPicSize: Int64; cdecl;
    function isGif: Boolean; cdecl;

    { Property }
    property mPicUrl: JString read _GetmPicUrl write _SetmPicUrl;
    property mRawDataSize: Int64 read _GetmRawDataSize write _SetmRawDataSize;
    property mIsGif: Boolean read _GetmIsGif write _SetmIsGif;
  end;

  TJIX5WebViewBase_ImageInfo = class(TJavaGenericImport<JIX5WebViewBase_ImageInfoClass, JIX5WebViewBase_ImageInfo>) end;

  JIX5WebViewBase_PictureListenerClass = interface(JObjectClass)
  ['{E32A2B78-B6FE-43BD-B69B-98AE99EE810B}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebViewBase$PictureListener')]
  JIX5WebViewBase_PictureListener = interface(IJavaInstance)
  ['{AD35EC09-C2F8-4F43-9397-898D94DF1321}']
    { Property Methods }

    { methods }
    procedure onNewPicture(P1: JIX5WebViewBase; P2: JPicture; P3: Boolean); cdecl;
    procedure onNewPictureIfHaveContent(P1: JIX5WebViewBase; P2: JPicture); cdecl;

    { Property }
  end;

  TJIX5WebViewBase_PictureListener = class(TJavaGenericImport<JIX5WebViewBase_PictureListenerClass, JIX5WebViewBase_PictureListener>) end;

  JIX5WebViewBase_WebViewTransportClass = interface(JObjectClass)
  ['{4D06EBF2-D893-4282-BE99-0C4909B2CBCA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JIX5WebViewBase_WebViewTransport; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebViewBase$WebViewTransport')]
  JIX5WebViewBase_WebViewTransport = interface(JObject)
  ['{B915C073-F37B-4D92-B7B0-1EF86275D3ED}']
    { Property Methods }

    { methods }
    procedure setWebView(P1: JIX5WebViewBase); cdecl;
    function getWebView: JIX5WebViewBase; cdecl;

    { Property }
  end;

  TJIX5WebViewBase_WebViewTransport = class(TJavaGenericImport<JIX5WebViewBase_WebViewTransportClass, JIX5WebViewBase_WebViewTransport>) end;

  JIX5WebViewBaseClass = interface(JObjectClass)
  ['{3D0A5DE6-1EA4-4117-90A2-01E892C08F9F}']
    { static Property Methods }
    {class} function _GetOVER_SCROLL_ALWAYS: Integer;
    {class} function _GetOVER_SCROLL_IF_CONTENT_SCROLLS: Integer;
    {class} function _GetOVER_SCROLL_NEVER: Integer;

    { static Methods }

    { static Property }
    {class} property OVER_SCROLL_ALWAYS: Integer read _GetOVER_SCROLL_ALWAYS;
    {class} property OVER_SCROLL_IF_CONTENT_SCROLLS: Integer read _GetOVER_SCROLL_IF_CONTENT_SCROLLS;
    {class} property OVER_SCROLL_NEVER: Integer read _GetOVER_SCROLL_NEVER;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebViewBase')]
  JIX5WebViewBase = interface(IJavaInstance)
  ['{AB3DFA97-1342-4080-965C-96403C90E6BB}']
    { Property Methods }

    { methods }
    procedure setHorizontalScrollbarOverlay(P1: Boolean); cdecl;
    procedure setVerticalScrollbarOverlay(P1: Boolean); cdecl;
    function overlayHorizontalScrollbar: Boolean; cdecl;
    function overlayVerticalScrollbar: Boolean; cdecl;
    function savePicture(P1: JBundle; P2: JFile): Boolean; cdecl;
    function restorePicture(P1: JBundle; P2: JFile): Boolean; cdecl;
    procedure savePassword(P1: JString; P2: JString; P3: JString); cdecl;
    procedure loadDataWithBaseURL(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString); cdecl;
    procedure clearView; cdecl;
    procedure setInitialScale(P1: Integer); cdecl;
    procedure invokeZoomPicker; cdecl;
    procedure requestFocusNodeHref(P1: JMessage); cdecl;
    procedure requestImageRef(P1: JMessage); cdecl;
    procedure clearFormData; cdecl;
    function isPrivateBrowsingEnable: Boolean; cdecl;
    procedure clearSslPreferences; cdecl;
    procedure documentHasImages(P1: JMessage); cdecl;
    function getZoomControls: JView; cdecl;
    function canZoomIn: Boolean; cdecl;
    function zoomIn: Boolean; cdecl;
    function canZoomOut: Boolean; cdecl;
    function zoomOut: Boolean; cdecl;
    procedure setMapTrackballToArrowKeys(P1: Boolean); cdecl;
    procedure setNetworkAvailable(P1: Boolean); cdecl;
    function getOriginalUrl: JString; cdecl;
    function getCertificate: JSslCertificate; cdecl;
    procedure flingScroll(P1: Integer; P2: Integer); cdecl;
    procedure findNext(P1: Boolean); cdecl;
    function findAll(P1: JString): Integer; cdecl;
    procedure findAllAsync(P1: JString); cdecl;
    procedure clearMatches; cdecl;
    function copyBackForwardList: JIX5WebBackForwardList; cdecl;
    function getSettings: JIX5WebSettings; cdecl;
    procedure addJavascriptInterface(P1: JObject; P2: JString); cdecl;
    procedure removeJavascriptInterface(P1: JString); cdecl;
    procedure setPictureListener(P1: JIX5WebViewBase_PictureListener); cdecl;
    function canGoBack: Boolean; cdecl;
    function canGoForward: Boolean; cdecl;
    procedure clearCache(P1: Boolean); cdecl;
    procedure destroy; cdecl;
    function getFavicon: JBitmap; cdecl;
    function getHttpAuthUsernamePassword(P1: JString; P2: JString): TJavaObjectArray<JString>; cdecl;
    function getProgress: Integer; cdecl;
    function getTitle: JString; cdecl;
    function getUrl: JString; cdecl;
    procedure goBack; cdecl;
    procedure goBackOrForward(P1: Integer); cdecl;
    procedure goForward; cdecl;
    procedure loadData(P1: JString; P2: JString; P3: JString); cdecl;
    procedure loadUrl(P1: JString); cdecl; overload;
    procedure loadUrl(P1: JString; P2: JMap); cdecl; overload;
    function pageDown(P1: Boolean; P2: Integer): Boolean; cdecl;
    function pageUp(P1: Boolean; P2: Integer): Boolean; cdecl;
    procedure reload; cdecl;
    procedure setDownloadListener(P1: JDownloadListener); cdecl;
    procedure setHttpAuthUsernamePassword(P1: JString; P2: JString; P3: JString; P4: JString); cdecl;
    procedure setWebViewClient(P1: JIX5WebViewClient); cdecl;
    procedure setWebChromeClient(P1: JIX5WebChromeClient); cdecl;
    procedure stopLoading; cdecl;
    function getScale: Single; cdecl;
    function canGoBackOrForward(P1: Integer): Boolean; cdecl;
    function capturePicture: JPicture; cdecl;
    function createPrintDocumentAdapter(P1: JString): JObject; cdecl;
    function getContentHeight: Integer; cdecl;
    procedure pauseTimers; cdecl;
    procedure resumeTimers; cdecl;
    procedure clearHistory; cdecl;
    procedure onPause; cdecl;
    procedure onResume; cdecl;
    procedure postUrl(P1: JString; P2: TJavaArray<Byte>); cdecl;
    function restoreState(P1: JBundle): JIX5WebBackForwardList; cdecl;
    function saveState(P1: JBundle): JIX5WebBackForwardList; cdecl;
    procedure freeMemory; cdecl;
    procedure saveWebArchive(P1: JString); cdecl; overload;
    procedure saveWebArchive(P1: JString; P2: Boolean; P3: JValueCallback); cdecl; overload;
    function showFindDialog(P1: JString; P2: Boolean): Boolean; cdecl;
    procedure setFindListener(P1: JIX5WebViewBase_FindListener); cdecl;
    function getHitTestResult: JIX5WebViewBase_HitTestResult; cdecl;
//    procedure dumpViewHierarchyWithProperties(P1: JBufferedWriter; P2: Integer); cdecl;
    function findHierarchyView(P1: JString; P2: Integer): JView; cdecl;
    procedure refreshPlugins(P1: Boolean); cdecl;
    procedure computeScroll; cdecl;
    procedure setBackgroundColor(P1: Integer); cdecl;
    function getView: JView; cdecl;
    function getVisibleTitleHeight: Integer; cdecl;
    procedure setCertificate(P1: JSslCertificate); cdecl;
    function getContentWidth: Integer; cdecl;
    function getX5WebViewExtension: JIX5WebViewExtension; cdecl;

    { Property }
  end;

  TJIX5WebViewBase = class(TJavaGenericImport<JIX5WebViewBaseClass, JIX5WebViewBase>) end;

  JIX5WebViewClientClass = interface(JObjectClass)
  ['{359F978C-9DBE-435E-84FE-DDD0C8F97B26}']
    { static Property Methods }
    {class} function _GetERROR_UNKNOWN: Integer;
    {class} function _GetERROR_HOST_LOOKUP: Integer;
    {class} function _GetERROR_UNSUPPORTED_AUTH_SCHEME: Integer;
    {class} function _GetERROR_AUTHENTICATION: Integer;
    {class} function _GetERROR_PROXY_AUTHENTICATION: Integer;
    {class} function _GetERROR_CONNECT: Integer;
    {class} function _GetERROR_IO: Integer;
    {class} function _GetERROR_TIMEOUT: Integer;
    {class} function _GetERROR_REDIRECT_LOOP: Integer;
    {class} function _GetERROR_UNSUPPORTED_SCHEME: Integer;
    {class} function _GetERROR_FAILED_SSL_HANDSHAKE: Integer;
    {class} function _GetERROR_BAD_URL: Integer;
    {class} function _GetERROR_FILE: Integer;
    {class} function _GetERROR_FILE_NOT_FOUND: Integer;
    {class} function _GetERROR_TOO_MANY_REQUESTS: Integer;
    {class} function _GetINTERCEPT_BY_ISP: Integer;

    { static Methods }

    { static Property }
    {class} property ERROR_UNKNOWN: Integer read _GetERROR_UNKNOWN;
    {class} property ERROR_HOST_LOOKUP: Integer read _GetERROR_HOST_LOOKUP;
    {class} property ERROR_UNSUPPORTED_AUTH_SCHEME: Integer read _GetERROR_UNSUPPORTED_AUTH_SCHEME;
    {class} property ERROR_AUTHENTICATION: Integer read _GetERROR_AUTHENTICATION;
    {class} property ERROR_PROXY_AUTHENTICATION: Integer read _GetERROR_PROXY_AUTHENTICATION;
    {class} property ERROR_CONNECT: Integer read _GetERROR_CONNECT;
    {class} property ERROR_IO: Integer read _GetERROR_IO;
    {class} property ERROR_TIMEOUT: Integer read _GetERROR_TIMEOUT;
    {class} property ERROR_REDIRECT_LOOP: Integer read _GetERROR_REDIRECT_LOOP;
    {class} property ERROR_UNSUPPORTED_SCHEME: Integer read _GetERROR_UNSUPPORTED_SCHEME;
    {class} property ERROR_FAILED_SSL_HANDSHAKE: Integer read _GetERROR_FAILED_SSL_HANDSHAKE;
    {class} property ERROR_BAD_URL: Integer read _GetERROR_BAD_URL;
    {class} property ERROR_FILE: Integer read _GetERROR_FILE;
    {class} property ERROR_FILE_NOT_FOUND: Integer read _GetERROR_FILE_NOT_FOUND;
    {class} property ERROR_TOO_MANY_REQUESTS: Integer read _GetERROR_TOO_MANY_REQUESTS;
    {class} property INTERCEPT_BY_ISP: Integer read _GetINTERCEPT_BY_ISP;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/IX5WebViewClient')]
  JIX5WebViewClient = interface(IJavaInstance)
  ['{CA13BF1E-708F-4300-8BFB-104EE289C7A1}']
    { Property Methods }

    { methods }
    function shouldOverrideUrlLoading(P1: JIX5WebViewBase; P2: JString): Boolean; cdecl;
    procedure onPageStarted(P1: JIX5WebViewBase; P2: JString; P3: JBitmap); cdecl; overload;
    procedure onPageFinished(P1: JIX5WebViewBase; P2: JString); cdecl; overload;
    procedure onPageStarted(P1: JIX5WebViewBase; P2: Integer; P3: Integer; P4: JString; P5: JBitmap); cdecl; overload;
    procedure onPageFinished(P1: JIX5WebViewBase; P2: Integer; P3: Integer; P4: JString); cdecl; overload;
    procedure onReceivedError(P1: JIX5WebViewBase; P2: Integer; P3: JString; P4: JString); cdecl; overload;
    procedure onReceivedError(P1: JIX5WebViewBase; P2: JWebResourceRequest; P3: JWebResourceError); cdecl; overload;
    procedure onReceivedHttpError(P1: JIX5WebViewBase; P2: JWebResourceRequest; P3: JWebResourceResponse); cdecl;
    procedure onLoadResource(P1: JIX5WebViewBase; P2: JString); cdecl;
    function shouldInterceptRequest(P1: JIX5WebViewBase; P2: JWebResourceRequest; P3: JBundle): JWebResourceResponse; cdecl; overload;
    function shouldInterceptRequest(P1: JIX5WebViewBase; P2: JWebResourceRequest): JWebResourceResponse; cdecl; overload;
    function shouldInterceptRequest(P1: JIX5WebViewBase; P2: JString): JWebResourceResponse; cdecl; overload;
    procedure doUpdateVisitedHistory(P1: JIX5WebViewBase; P2: JString; P3: Boolean); cdecl;
    procedure onFormResubmission(P1: JIX5WebViewBase; P2: JMessage; P3: JMessage); cdecl;
    procedure onReceivedHttpAuthRequest(P1: JIX5WebViewBase; P2: JHttpAuthHandler; P3: JString; P4: JString); cdecl;
    procedure onReceivedSslError(P1: JIX5WebViewBase; P2: JSslErrorHandler; P3: JSslError); cdecl;
    procedure onReceivedClientCertRequest(P1: JIX5WebViewBase; P2: JClientCertRequest); cdecl;
    procedure onScaleChanged(P1: JIX5WebViewBase; P2: Single; P3: Single); cdecl;
    procedure onUnhandledKeyEvent(P1: JIX5WebViewBase; P2: JKeyEvent); cdecl;
    function shouldOverrideKeyEvent(P1: JIX5WebViewBase; P2: JKeyEvent): Boolean; cdecl;
    procedure onTooManyRedirects(P1: JIX5WebViewBase; P2: JMessage; P3: JMessage); cdecl;
    procedure onReceivedLoginRequest(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JString); cdecl;
    procedure onContentSizeChanged(P1: JIX5WebViewBase; P2: Integer; P3: Integer); cdecl;
    procedure onDetectedBlankScreen(P1: JIX5WebViewBase; P2: JString; P3: Integer); cdecl;

    { Property }
  end;

  TJIX5WebViewClient = class(TJavaGenericImport<JIX5WebViewClientClass, JIX5WebViewClient>) end;

  JJsPromptResultClass = interface(JObjectClass)
  ['{93FC7B8A-8B82-4621-AD2E-653D1A9ED3FC}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/JsPromptResult')]
  JJsPromptResult = interface(IJavaInstance)
  ['{356331E7-5178-4265-80F5-466F23B78C37}']
    { Property Methods }

    { methods }
    procedure confirm(P1: JString); cdecl;

    { Property }
  end;

  TJJsPromptResult = class(TJavaGenericImport<JJsPromptResultClass, JJsPromptResult>) end;

  JJsResultClass = interface(JObjectClass)
  ['{0A2EC567-A0EA-42FC-AB80-0F13EF6FB421}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/JsResult')]
  JJsResult = interface(IJavaInstance)
  ['{2FD913B6-76FC-4DC3-9CBA-D1D71A11EAFD}']
    { Property Methods }

    { methods }
    procedure cancel; cdecl;
    procedure confirm; cdecl;

    { Property }
  end;

  TJJsResult = class(TJavaGenericImport<JJsResultClass, JJsResult>) end;

  JMediaAccessPermissionsCallbackClass = interface(JObjectClass)
  ['{1AFAF10E-949A-4175-ABD3-17DE041111EE}']
    { static Property Methods }
    {class} function _GetALLOW_VIDEO_CAPTURE: Int64;
    {class} function _GetALLOW_AUDIO_CAPTURE: Int64;
    {class} function _GetBITMASK_RESOURCE_VIDEO_CAPTURE: Int64;
    {class} function _GetBITMASK_RESOURCE_AUDIO_CAPTURE: Int64;

    { static Methods }

    { static Property }
    {class} property ALLOW_VIDEO_CAPTURE: Int64 read _GetALLOW_VIDEO_CAPTURE;
    {class} property ALLOW_AUDIO_CAPTURE: Int64 read _GetALLOW_AUDIO_CAPTURE;
    {class} property BITMASK_RESOURCE_VIDEO_CAPTURE: Int64 read _GetBITMASK_RESOURCE_VIDEO_CAPTURE;
    {class} property BITMASK_RESOURCE_AUDIO_CAPTURE: Int64 read _GetBITMASK_RESOURCE_AUDIO_CAPTURE;
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/MediaAccessPermissionsCallback')]
  JMediaAccessPermissionsCallback = interface(IJavaInstance)
  ['{4E4F2FD9-0F5D-4638-AFA8-1802C8FCF287}']
    { Property Methods }

    { methods }
    procedure invoke(P1: JString; P2: Int64; P3: Boolean); cdecl;

    { Property }
  end;

  TJMediaAccessPermissionsCallback = class(TJavaGenericImport<JMediaAccessPermissionsCallbackClass, JMediaAccessPermissionsCallback>) end;

  JQuotaUpdaterClass = interface(JObjectClass)
  ['{5D33A1CF-B405-4BA8-A451-560D63C41F35}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/QuotaUpdater')]
  JQuotaUpdater = interface(IJavaInstance)
  ['{B805C961-ED5A-49C3-B1FE-E6B6373CF4D0}']
    { Property Methods }

    { methods }
    procedure updateQuota(P1: Int64); cdecl;

    { Property }
  end;

  TJQuotaUpdater = class(TJavaGenericImport<JQuotaUpdaterClass, JQuotaUpdater>) end;

  JSslErrorClass = interface(JObjectClass)
  ['{2EAA5008-37D1-4062-B16A-80B4E4EF08B3}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/SslError')]
  JSslError = interface(IJavaInstance)
  ['{63BBF73E-B58B-4667-A313-8B3861FE80BC}']
    { Property Methods }

    { methods }
    function getCertificate: JSslCertificate; cdecl;
    function addError(P1: Integer): Boolean; cdecl;
    function hasError(P1: Integer): Boolean; cdecl;
    function getPrimaryError: Integer; cdecl;

    { Property }
  end;

  TJSslError = class(TJavaGenericImport<JSslErrorClass, JSslError>) end;

  JSslErrorHandlerClass = interface(JObjectClass)
  ['{35382F67-7D12-4720-93AC-BCB203B83F15}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/SslErrorHandler')]
  JSslErrorHandler = interface(IJavaInstance)
  ['{7B104464-27BA-4F0D-AB65-5268046173DF}']
    { Property Methods }

    { methods }
    procedure proceed; cdecl;
    procedure cancel; cdecl;

    { Property }
  end;

  TJSslErrorHandler = class(TJavaGenericImport<JSslErrorHandlerClass, JSslErrorHandler>) end;

  JWebResourceErrorClass = interface(JObjectClass)
  ['{13435101-4685-4520-B0F1-A5F7932ABBFE}']
    { static Property Methods }

    { static Methods }
    {class} function init: JWebResourceError; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/WebResourceError')]
  JWebResourceError = interface(JObject)
  ['{89F1DAB6-19BE-4A7A-B269-B6C2AAD4819F}']
    { Property Methods }

    { methods }
    function getErrorCode: Integer; cdecl;
    function getDescription: JCharSequence; cdecl;

    { Property }
  end;

  TJWebResourceError = class(TJavaGenericImport<JWebResourceErrorClass, JWebResourceError>) end;

  JWebResourceRequestClass = interface(JObjectClass)
  ['{D7BD3CEF-B81D-466E-BA39-BE47DB5AFCB2}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/WebResourceRequest')]
  JWebResourceRequest = interface(IJavaInstance)
  ['{E1889189-4AFF-49BC-B1F6-F99CFD6EA74E}']
    { Property Methods }

    { methods }
    function getUrl: Jnet_Uri; cdecl;
    function isForMainFrame: Boolean; cdecl;
    function hasGesture: Boolean; cdecl;
    function getMethod: JString; cdecl;
    function getRequestHeaders: JMap; cdecl;

    { Property }
  end;

  TJWebResourceRequest = class(TJavaGenericImport<JWebResourceRequestClass, JWebResourceRequest>) end;

  JWebResourceResponseClass = interface(JObjectClass)
  ['{B28EF60C-D9E2-4B4B-9D6B-C0B1994AB314}']
    { static Property Methods }

    { static Methods }
    {class} function init: JWebResourceResponse; cdecl; overload;
    {class} function init(P1: JString; P2: JString; P3: JInputStream): JWebResourceResponse; cdecl; overload;
    {class} function init(P1: JString; P2: JString; P3: Integer; P4: JString; P5: JMap; P6: JInputStream): JWebResourceResponse; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/interfaces/WebResourceResponse')]
  JWebResourceResponse = interface(JObject)
  ['{2864101B-ABE4-42EC-85AE-7152C4C609EC}']
    { Property Methods }

    { methods }
    procedure setMimeType(P1: JString); cdecl;
    function getMimeType: JString; cdecl;
    procedure setEncoding(P1: JString); cdecl;
    function getEncoding: JString; cdecl;
    procedure setStatusCodeAndReasonPhrase(P1: Integer; P2: JString); cdecl;
    function getStatusCode: Integer; cdecl;
    function getReasonPhrase: JString; cdecl;
    procedure setResponseHeaders(P1: JMap); cdecl;
    function getResponseHeaders: JMap; cdecl;
    procedure setData(P1: JInputStream); cdecl;
    function getData: JInputStream; cdecl;

    { Property }
  end;

  TJWebResourceResponse = class(TJavaGenericImport<JWebResourceResponseClass, JWebResourceResponse>) end;

  JLibraryLoaderClass = interface(JObjectClass)
  ['{A18A2CDD-EBCB-49C6-B99D-FA61131EC449}']
    { static Property Methods }

    { static Methods }
    {class} function init: JLibraryLoader; cdecl;
    {class} function getLibrarySearchPaths(P1: JContext): TJavaObjectArray<JString>; cdecl;
    {class} function getNativeLibraryDir(P1: JContext): JString; cdecl;
    {class} procedure loadLibrary(P1: JContext; P2: JString); cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/LibraryLoader')]
  JLibraryLoader = interface(JObject)
  ['{B11F0B0C-E9B8-465E-AAB5-84BCF6DBF6C5}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLibraryLoader = class(TJavaGenericImport<JLibraryLoaderClass, JLibraryLoader>) end;

//  Jlibwebp_1Class = interface(JObjectClass)
//  ['{466DD671-EE77-4253-A98E-19727D4E4B4D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/export/external/libwebp$1')]
//  Jlibwebp_1 = interface(JObject)
//  ['{DB135783-ABD1-48EF-B32F-ABFADB618B51}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJlibwebp_1 = class(TJavaGenericImport<Jlibwebp_1Class, Jlibwebp_1>) end;

  JlibwebpClass = interface(JObjectClass)
  ['{E808329A-6903-4F36-9990-C1D5EF704935}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jlibwebp; cdecl;
    {class} function getInstance(P1: JContext): Jlibwebp; cdecl;
    {class} procedure loadWepLibraryIfNeed(P1: JContext; P2: JString); cdecl; overload;
    {class} procedure loadWepLibraryIfNeed(P1: JContext); cdecl; overload;
    {class} function checkIsHuaModel: Integer; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/libwebp')]
  Jlibwebp = interface(JObject)
  ['{D71C0B3A-6906-45B9-B7B2-399D19A61AF8}']
    { Property Methods }

    { methods }
    function getInfo(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>; P3: TJavaArray<Integer>): Integer; cdecl;
    function decodeBase(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>; P3: TJavaArray<Integer>): TJavaArray<Integer>; cdecl;
    function decodeBase_16bit(P1: TJavaArray<Byte>; P2: JBitmap_Config): TJavaArray<Integer>; cdecl;
    function decodeInto(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>; P3: TJavaArray<Integer>): TJavaArray<Integer>; cdecl;
    function incDecode(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>; P3: TJavaArray<Integer>): TJavaArray<Integer>; cdecl;
    function nativeGetInfo(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>; P3: TJavaArray<Integer>): Integer; cdecl;
    function nativeDecode(P1: TJavaArray<Byte>; P2: Boolean; P3: TJavaArray<Integer>; P4: TJavaArray<Integer>): TJavaArray<Integer>; cdecl;
    function nativeDecodeInto(P1: TJavaArray<Byte>; P2: Boolean; P3: TJavaArray<Integer>; P4: TJavaArray<Integer>): TJavaArray<Integer>; cdecl;
    function nativeDecode_16bit(P1: TJavaArray<Byte>; P2: Boolean; P3: Integer): TJavaArray<Integer>; cdecl;
    function nativeIDecode(P1: TJavaArray<Byte>; P2: Boolean; P3: TJavaArray<Integer>; P4: TJavaArray<Integer>): TJavaArray<Integer>; cdecl;

    { Property }
  end;

  TJlibwebp = class(TJavaGenericImport<JlibwebpClass, Jlibwebp>) end;

  JProxyWebChromeClientClass = interface(JObjectClass)
  ['{F09227E6-B1A3-48D3-B412-D5AF0F2E5648}']
    { static Property Methods }

    { static Methods }
    {class} function init: JProxyWebChromeClient; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/proxy/ProxyWebChromeClient')]
  JProxyWebChromeClient = interface(JObject)
  ['{53719C2C-F2E6-477B-9402-D89D89679D5C}']
    { Property Methods }

    { methods }
    function getmWebChromeClient: JIX5WebChromeClient; cdecl;
    procedure setWebChromeClient(P1: JIX5WebChromeClient); cdecl;
    function onConsoleMessage(P1: JConsoleMessage): Boolean; cdecl; overload;
    function onCreateWindow(P1: JIX5WebViewBase; P2: Boolean; P3: Boolean; P4: JMessage): Boolean; cdecl;
    procedure onGeolocationPermissionsShowPrompt(P1: JString; P2: JGeolocationPermissionsCallback); cdecl;
    procedure onHideCustomView; cdecl;
    function onJsAlert(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    function onJsPrompt(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JString; P5: JJsPromptResult): Boolean; cdecl;
    function onJsBeforeUnload(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    function onJsTimeout: Boolean; cdecl;
    procedure onProgressChanged(P1: JIX5WebViewBase; P2: Integer); cdecl;
    procedure onReachedMaxAppCacheSize(P1: Int64; P2: Int64; P3: JQuotaUpdater); cdecl;
    procedure onReceivedIcon(P1: JIX5WebViewBase; P2: JBitmap); cdecl;
    procedure onReceivedTouchIconUrl(P1: JIX5WebViewBase; P2: JString; P3: Boolean); cdecl;
    procedure onReceivedTitle(P1: JIX5WebViewBase; P2: JString); cdecl;
    procedure onRequestFocus(P1: JIX5WebViewBase); cdecl;
    procedure onShowCustomView(P1: JView; P2: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
    procedure onShowCustomView(P1: JView; P2: Integer; P3: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
    procedure onExceededDatabaseQuota(P1: JString; P2: JString; P3: Int64; P4: Int64; P5: Int64; P6: JQuotaUpdater); cdecl;
    function getDefaultVideoPoster: JBitmap; cdecl;
    procedure onConsoleMessage(P1: JString; P2: Integer; P3: JString); cdecl; overload;
    procedure onGeolocationPermissionsHidePrompt; cdecl;
    function onJsConfirm(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    procedure onCloseWindow(P1: JIX5WebViewBase); cdecl;
    procedure getVisitedHistory(P1: JValueCallback); cdecl;
    procedure openFileChooser(P1: JValueCallback; P2: JString; P3: JString; P4: Boolean); cdecl;
    procedure onGeolocationStartUpdating(P1: JValueCallback; P2: JValueCallback); cdecl;
    procedure onGeolocationStopUpdating; cdecl;
    function onShowFileChooser(P1: JIX5WebViewBase; P2: JValueCallback; P3: JIX5WebChromeClient_FileChooserParams): Boolean; cdecl;

    { Property }
  end;

  TJProxyWebChromeClient = class(TJavaGenericImport<JProxyWebChromeClientClass, JProxyWebChromeClient>) end;

  JProxyWebViewClientClass = interface(JObjectClass)
  ['{1C3D17E2-9885-49E0-955A-8A89FA79556F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JProxyWebViewClient; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/proxy/ProxyWebViewClient')]
  JProxyWebViewClient = interface(JObject)
  ['{7489F4DD-B3FD-49EE-9A57-1A4423A7D863}']
    { Property Methods }

    { methods }
    procedure setWebViewClient(P1: JIX5WebViewClient); cdecl;
    procedure doUpdateVisitedHistory(P1: JIX5WebViewBase; P2: JString; P3: Boolean); cdecl;
    procedure onContentSizeChanged(P1: JIX5WebViewBase; P2: Integer; P3: Integer); cdecl;
    procedure onFormResubmission(P1: JIX5WebViewBase; P2: JMessage; P3: JMessage); cdecl;
    procedure onLoadResource(P1: JIX5WebViewBase; P2: JString); cdecl;
    procedure onPageFinished(P1: JIX5WebViewBase; P2: JString); cdecl; overload;
    procedure onPageStarted(P1: JIX5WebViewBase; P2: JString; P3: JBitmap); cdecl; overload;
    procedure onReceivedError(P1: JIX5WebViewBase; P2: Integer; P3: JString; P4: JString); cdecl; overload;
    procedure onReceivedError(P1: JIX5WebViewBase; P2: JWebResourceRequest; P3: JWebResourceError); cdecl; overload;
    procedure onReceivedHttpError(P1: JIX5WebViewBase; P2: JWebResourceRequest; P3: JWebResourceResponse); cdecl;
    procedure onReceivedHttpAuthRequest(P1: JIX5WebViewBase; P2: JHttpAuthHandler; P3: JString; P4: JString); cdecl;
    procedure onReceivedSslError(P1: JIX5WebViewBase; P2: JSslErrorHandler; P3: JSslError); cdecl;
    procedure onReceivedClientCertRequest(P1: JIX5WebViewBase; P2: JClientCertRequest); cdecl;
    procedure onScaleChanged(P1: JIX5WebViewBase; P2: Single; P3: Single); cdecl;
    procedure onUnhandledKeyEvent(P1: JIX5WebViewBase; P2: JKeyEvent); cdecl;
    function shouldOverrideKeyEvent(P1: JIX5WebViewBase; P2: JKeyEvent): Boolean; cdecl;
    function shouldOverrideUrlLoading(P1: JIX5WebViewBase; P2: JString): Boolean; cdecl;
    procedure onTooManyRedirects(P1: JIX5WebViewBase; P2: JMessage; P3: JMessage); cdecl;
    function shouldInterceptRequest(P1: JIX5WebViewBase; P2: JWebResourceRequest): JWebResourceResponse; cdecl; overload;
    function shouldInterceptRequest(P1: JIX5WebViewBase; P2: JWebResourceRequest; P3: JBundle): JWebResourceResponse; cdecl; overload;
    function shouldInterceptRequest(P1: JIX5WebViewBase; P2: JString): JWebResourceResponse; cdecl; overload;
    procedure onReceivedLoginRequest(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JString); cdecl;
    procedure onPageStarted(P1: JIX5WebViewBase; P2: Integer; P3: Integer; P4: JString; P5: JBitmap); cdecl; overload;
    procedure onPageFinished(P1: JIX5WebViewBase; P2: Integer; P3: Integer; P4: JString); cdecl; overload;
    procedure onDetectedBlankScreen(P1: JIX5WebViewBase; P2: JString; P3: Integer); cdecl;
    procedure countPVContentCacheCallBack(P1: JString); cdecl;

    { Property }
  end;

  TJProxyWebViewClient = class(TJavaGenericImport<JProxyWebViewClientClass, JProxyWebViewClient>) end;

  JX5ProxyWebChromeClientClass = interface(JObjectClass)
  ['{7E3A0FD4-1983-4ACA-8580-275A774E9945}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JWebViewWizardBase): JX5ProxyWebChromeClient; cdecl; overload;
    {class} function init(P1: JIX5WebChromeClient): JX5ProxyWebChromeClient; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/proxy/X5ProxyWebChromeClient')]
  JX5ProxyWebChromeClient = interface(JObject)
  ['{DEF86945-D50C-4C2E-A6AE-F97E4F6159FF}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJX5ProxyWebChromeClient = class(TJavaGenericImport<JX5ProxyWebChromeClientClass, JX5ProxyWebChromeClient>) end;

  JX5ProxyWebViewClientClass = interface(JObjectClass)
  ['{3B62B8C5-C3E6-4E7F-9287-451047C97C53}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JWebViewWizardBase): JX5ProxyWebViewClient; cdecl; overload;
    {class} function init(P1: JIX5WebViewClient): JX5ProxyWebViewClient; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/proxy/X5ProxyWebViewClient')]
  JX5ProxyWebViewClient = interface(JObject)
  ['{A5F44C40-5AA6-4AB1-9697-EEE9D556C2CD}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJX5ProxyWebViewClient = class(TJavaGenericImport<JX5ProxyWebViewClientClass, JX5ProxyWebViewClient>) end;

  JTbsCoreSettingsClass = interface(JObjectClass)
  ['{513F9FB1-CA62-42C9-8DE4-1A82D7E8270B}']
    { static Property Methods }
    {class} function _GetTBS_SETTINGS_USE_PRIVATE_CLASSLOADER: JString;
    {class} function _GetTBS_SETTINGS_APP_USE_SCENE: JString;
    {class} function _GetTBS_SETTINGS_WEAPP_ID_KEY: JString;
    {class} function _GetTBS_SETTINGS_WEAPP_NAME_KEY: JString;
    {class} function _GetTBS_SETTINGS_APP_SCENE_ID: JString;

    { static Methods }
    {class} function init: JTbsCoreSettings; cdecl;

    { static Property }
    {class} property TBS_SETTINGS_USE_PRIVATE_CLASSLOADER: JString read _GetTBS_SETTINGS_USE_PRIVATE_CLASSLOADER;
    {class} property TBS_SETTINGS_APP_USE_SCENE: JString read _GetTBS_SETTINGS_APP_USE_SCENE;
    {class} property TBS_SETTINGS_WEAPP_ID_KEY: JString read _GetTBS_SETTINGS_WEAPP_ID_KEY;
    {class} property TBS_SETTINGS_WEAPP_NAME_KEY: JString read _GetTBS_SETTINGS_WEAPP_NAME_KEY;
    {class} property TBS_SETTINGS_APP_SCENE_ID: JString read _GetTBS_SETTINGS_APP_SCENE_ID;
  end;

  [JavaSignature('com/tencent/smtt/export/external/TbsCoreSettings')]
  JTbsCoreSettings = interface(JObject)
  ['{BFE6105A-CE8D-4EE4-97F2-DAC759F0A7FF}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTbsCoreSettings = class(TJavaGenericImport<JTbsCoreSettingsClass, JTbsCoreSettings>) end;

  JWebViewWizardBaseClass = interface(JObjectClass)
  ['{D6B2EEBE-5902-47A2-8865-AB37DFFD6D0C}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/export/external/WebViewWizardBase')]
  JWebViewWizardBase = interface(IJavaInstance)
  ['{DE541838-EC5B-4445-B6F1-AA9939B90083}']
    { Property Methods }

    { methods }
    function newInstance(P1: JString): JObject; cdecl;

    { Property }
  end;

  TJWebViewWizardBase = class(TJavaGenericImport<JWebViewWizardBaseClass, JWebViewWizardBase>) end;

//  JaClass = interface(JObjectClass)
//  ['{8DAE94E7-C51E-480C-AEE7-E9FDFCC8377E}']
//    { static Property Methods }
//    {class} function _Geta: TJavaArray<Byte>;
//    {class} function _Getb: TJavaArray<Byte>;
//    {class} function _Getc: TJavaArray<Byte>;
//    {class} function _Getd: TJavaArray<Byte>;
//    {class} function _Gete: TJavaArray<Byte>;
//
//    { static Methods }
//    {class} function a(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>; P3: Integer): TJavaArray<Byte>; cdecl;
//
//    { static Property }
//    {class} property a: TJavaArray<Byte> read _Geta;
//    {class} property b: TJavaArray<Byte> read _Getb;
//    {class} property c: TJavaArray<Byte> read _Getc;
//    {class} property d: TJavaArray<Byte> read _Getd;
//    {class} property e: TJavaArray<Byte> read _Gete;
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/a/a')]
//  Ja = interface(JObject)
//  ['{EF02A7AB-E613-4965-B1A7-2CF4D585CE3F}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{644674AC-2DC5-4738-B84A-E9911B53EDE8}']
//    { static Property Methods }
//    {class} function _Geta: TJavaArray<Byte>;
//
//    { static Methods }
//    {class} procedure a(P1: JThirdAppInfoNew; P2: JContext); cdecl; overload;
//    {class} procedure a(P1: JContext; P2: JString; P3: JString; P4: JString; P5: Integer; P6: Boolean; P7: Int64); cdecl; overload;
//
//    { static Property }
//    {class} property a: TJavaArray<Byte> read _Geta;
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/a/b')]
//  Jb = interface(JObject)
//  ['{E078CDF7-310D-420F-AAFC-A30D1CFD3AD1}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{7631E70D-7D88-4904-9B5D-984C549C282F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/a/c')]
//  Jc = interface(JObject)
//  ['{01728C2C-272A-4AB3-BEBE-EFD5D3028D77}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  Jd_1Class = interface(JObjectClass)
//  ['{EC5DEB84-7D62-44F8-9E37-B29828C04DCD}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/a/d$1')]
//  Jd_1 = interface(JObject)
//  ['{E35A3A87-F3BA-4F41-B6B2-E1FA25CB9E83}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd_1 = class(TJavaGenericImport<Jd_1Class, Jd_1>) end;

//  Jd_aClass = interface(JObjectClass)
//  ['{B0A8D9AB-25FC-4A5F-BA50-CAB6388724C3}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jd_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/a/d$a')]
//  Jd_a = interface(JObject)
//  ['{5697F5EE-F9E9-4D1B-B474-BBA0FDA0F848}']
//    { Property Methods }
//    function _Geta: Integer;
//    procedure _Seta(aa: Integer);
//    function _Getb: Integer;
//    procedure _Setb(ab: Integer);
//    function _Getc: JString;
//    procedure _Setc(ac: JString);
//    function _Getd: JString;
//    procedure _Setd(ad: JString);
//    function _Gete: JString;
//    procedure _Sete(ae: JString);
//
//    { methods }
//
//    { Property }
//    property a: Integer read _Geta write _Seta;
//    property b: Integer read _Getb write _Setb;
//    property c: JString read _Getc write _Setc;
//    property d: JString read _Getd write _Setd;
//    property e: JString read _Gete write _Sete;
//  end;

//  TJd_a = class(TJavaGenericImport<Jd_aClass, Jd_a>) end;

//  Jd_bClass = interface(JObjectClass)
//  ['{4DEB5DF5-2299-48D9-8FFC-6AE2E4A24565}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/a/d$b')]
//  Jd_b = interface(JObject)
//  ['{5A6809D9-F6CB-48FF-9341-0BC21042E3EA}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//    function _Getb: JString;
//    procedure _Setb(ab: JString);
//
//    { methods }
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//    property b: JString read _Getb write _Setb;
//  end;

//  TJd_b = class(TJavaGenericImport<Jd_bClass, Jd_b>) end;

//  JdClass = interface(JObjectClass)
//  ['{C8664BAD-982F-4E41-831A-D9CDC63BCEBC}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JString; P3: Integer; P4: JString; P5: JHashMap; P6: JBundle): Boolean; cdecl; overload;
//    {class} function a(P1: JContext; P2: JString; P3: JHashMap): Boolean; cdecl; overload;
//    {class} function a(P1: JContext; P2: JString; P3: JHashMap; P4: JString; P5: JWebView): Integer; cdecl; overload;
//    {class} function a(P1: JContext; P2: JString; P3: JHashMap; P4: JWebView): Integer; cdecl; overload;
//    {class} function a(P1: JContext): Jd_a; cdecl; overload;
//    {class} function b(P1: JContext): Boolean; cdecl;
//    {class} function c(P1: JContext): Boolean; cdecl;
//    {class} function a(P1: JContext; P2: Int64; P3: Int64): Boolean; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/a/d')]
//  Jd = interface(JObject)
//  ['{7A4ED541-437B-415A-9B26-E1B01A61DBB3}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JaClass = interface(JObjectClass)
//  ['{E75EB884-E4F1-4833-BD03-C24C506F11BF}']
//    { static Property Methods }
//    {class} function _Geta: Integer;
//
//    { static Methods }
//    {class} function a: Integer; cdecl; overload;
//    {class} function a(P1: JContext): Int64; cdecl; overload;
//
//    { static Property }
//    {class} property a: Integer read _Geta;
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/a')]
//  Ja = interface(JObject)
//  ['{F92DBC8F-50CA-436B-BB70-5FEAC4869977}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JaaClass = interface(JObjectClass)
//  ['{913906BB-279A-4320-AA9C-3C13025C6B04}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/aa')]
//  Jaa = interface(JObject)
//  ['{9BC286A0-A28A-4693-859A-06313E4BBCBE}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJaa = class(TJavaGenericImport<JaaClass, Jaa>) end;

//  JabClass = interface(JObjectClass)
//  ['{4C743492-57B5-43AF-B89B-71CB9C66F0DB}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ab')]
//  Jab = interface(JObject)
//  ['{DFE06C78-69C5-445F-894E-5C690BAC7401}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jnet_Uri); cdecl;
//    procedure onReceiveValue(P1: JObject); cdecl;
//
//    { Property }
//  end;

//  TJab = class(TJavaGenericImport<JabClass, Jab>) end;

//  JacClass = interface(JObjectClass)
//  ['{3B7D4BA7-A69F-4B3B-B089-F9D540B9F2F8}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ac')]
//  Jac = interface(JObject)
//  ['{A07BFF0A-4FC7-4045-B806-7454C6DF889C}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: TJavaObjectArray<Jnet_Uri>); cdecl;
//    procedure onReceiveValue(P1: JObject); cdecl;
//
//    { Property }
//  end;

//  TJac = class(TJavaGenericImport<JacClass, Jac>) end;

//  JadClass = interface(JObjectClass)
//  ['{5822DC41-8699-4CBA-9A4B-AE443E8820F2}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ad')]
//  Jad = interface(JObject)
//  ['{B04D185B-E8FD-4BE8-AC39-281D07119902}']
//    { Property Methods }
//
//    { methods }
//    function getMode: Integer; cdecl;
//    function getAcceptTypes: TJavaObjectArray<JString>; cdecl;
//    function isCaptureEnabled: Boolean; cdecl;
//    function getTitle: JCharSequence; cdecl;
//    function getFilenameHint: JString; cdecl;
//    function createIntent: JIntent; cdecl;
//
//    { Property }
//  end;

//  TJad = class(TJavaGenericImport<JadClass, Jad>) end;

//  Jae_aClass = interface(JObjectClass)
//  ['{4B404D1D-E7CB-46CB-9C3B-1FBC578FA8EE}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JClientCertRequest): Jae_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ae$a')]
//  Jae_a = interface(JObject)
//  ['{65E602EF-77D5-4CB9-91C1-8596E69B722F}']
//    { Property Methods }
//
//    { methods }
//    procedure cancel; cdecl;
//    function getHost: JString; cdecl;
//    function getKeyTypes: TJavaObjectArray<JString>; cdecl;
//    function getPort: Integer; cdecl;
//    function getPrincipals: TJavaObjectArray<JPrincipal>; cdecl;
//    procedure ignore; cdecl;
//    procedure proceed(P1: JPrivateKey; P2: TJavaObjectArray<JX509Certificate>); cdecl;
//
//    { Property }
//  end;

//  TJae_a = class(TJavaGenericImport<Jae_aClass, Jae_a>) end;

//  Jae_bClass = interface(JObjectClass)
//  ['{35CCAD36-EA33-4D72-9D77-6AAC85F5E8CF}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ae$b')]
//  Jae_b = interface(JObject)
//  ['{7AD84CEE-5889-43FB-A830-EB1A04887011}']
//    { Property Methods }
//
//    { methods }
//    procedure proceed(P1: JString; P2: JString); cdecl;
//    procedure cancel; cdecl;
//    function useHttpAuthUsernamePassword: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJae_b = class(TJavaGenericImport<Jae_bClass, Jae_b>) end;

//  Jae_cClass = interface(JObjectClass)
//  ['{8B92FC61-3CE6-442D-85C2-D87B96508A6A}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ae$c')]
//  Jae_c = interface(JObject)
//  ['{46300D28-15BD-4BC9-AB89-399963F58FBF}']
//    { Property Methods }
//
//    { methods }
//    procedure proceed; cdecl;
//    procedure cancel; cdecl;
//
//    { Property }
//  end;

//  TJae_c = class(TJavaGenericImport<Jae_cClass, Jae_c>) end;

//  Jae_dClass = interface(JObjectClass)
//  ['{59FB039E-FD6C-444E-BD67-2ACF5C3E85C8}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ae$d')]
//  Jae_d = interface(JObject)
//  ['{F9AB3853-A08F-4F4C-A9EC-0D6594DFD79B}']
//    { Property Methods }
//
//    { methods }
//    function getCertificate: JSslCertificate; cdecl;
//    function addError(P1: Integer): Boolean; cdecl;
//    function hasError(P1: Integer): Boolean; cdecl;
//    function getPrimaryError: Integer; cdecl;
//
//    { Property }
//  end;

//  TJae_d = class(TJavaGenericImport<Jae_dClass, Jae_d>) end;

//  Jae_eClass = interface(JObjectClass)
//  ['{471A2BF1-9590-4D0B-9755-7917603893C6}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: Jae; P2: JString; P3: Boolean; P4: Boolean; P5: JString; P6: JMap): Jae_e; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ae$e')]
//  Jae_e = interface(JObject)
//  ['{AF7FF8AB-E475-4585-89A3-785344B8AAD0}']
//    { Property Methods }
//
//    { methods }
//    function getUrl: Jnet_Uri; cdecl;
//    function isForMainFrame: Boolean; cdecl;
//    function hasGesture: Boolean; cdecl;
//    function getMethod: JString; cdecl;
//    function getRequestHeaders: JMap; cdecl;
//
//    { Property }
//  end;

//  TJae_e = class(TJavaGenericImport<Jae_eClass, Jae_e>) end;

//  Jae_fClass = interface(JObjectClass)
//  ['{3D4FDB19-4A7A-4AC0-8310-C2CEF8E33FB0}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ae$f')]
//  Jae_f = interface(JObject)
//  ['{EC172554-C2E5-4AA0-944E-B4ADC35A0E84}']
//    { Property Methods }
//
//    { methods }
//    function getMethod: JString; cdecl;
//    function getRequestHeaders: JMap; cdecl;
//    function getUrl: Jnet_Uri; cdecl;
//    function hasGesture: Boolean; cdecl;
//    function isForMainFrame: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJae_f = class(TJavaGenericImport<Jae_fClass, Jae_f>) end;

//  Jae_gClass = interface(JObjectClass)
//  ['{B771F177-5ED8-4340-A74E-6F4234C2A906}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JWebResourceResponse): Jae_g; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ae$g')]
//  Jae_g = interface(JObject)
//  ['{BDD488FF-C599-4C9E-91CA-1D91308C91A4}']
//    { Property Methods }
//
//    { methods }
//    function getData: JInputStream; cdecl;
//    function getEncoding: JString; cdecl;
//    function getMimeType: JString; cdecl;
//    function getReasonPhrase: JString; cdecl;
//    function getResponseHeaders: JMap; cdecl;
//    function getStatusCode: Integer; cdecl;
//    procedure setData(P1: JInputStream); cdecl;
//    procedure setEncoding(P1: JString); cdecl;
//    procedure setMimeType(P1: JString); cdecl;
//    procedure setResponseHeaders(P1: JMap); cdecl;
//    procedure setStatusCodeAndReasonPhrase(P1: Integer; P2: JString); cdecl;
//
//    { Property }
//  end;

//  TJae_g = class(TJavaGenericImport<Jae_gClass, Jae_g>) end;

//  JaeClass = interface(JObjectClass)
//  ['{C09F4CCB-C0B0-48D1-BE1B-0E90E3F7261F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ae')]
//  Jae = interface(JObject)
//  ['{874D931E-2F1D-403F-AF2F-FE687660000D}']
//    { Property Methods }
//
//    { methods }
//    procedure onLoadResource(P1: JWebView; P2: JString); cdecl;
//    function shouldOverrideUrlLoading(P1: JWebView; P2: JString): Boolean; cdecl;
//    function shouldInterceptRequest(P1: JWebView; P2: JString): JWebResourceResponse; cdecl; overload;
//    function shouldInterceptRequest(P1: JWebView; P2: JWebResourceRequest): JWebResourceResponse; cdecl; overload;
//    function shouldOverrideKeyEvent(P1: JWebView; P2: JKeyEvent): Boolean; cdecl;
//    procedure onFormResubmission(P1: JWebView; P2: JMessage; P3: JMessage); cdecl;
//    procedure onPageFinished(P1: JWebView; P2: JString); cdecl;
//    procedure onPageStarted(P1: JWebView; P2: JString; P3: JBitmap); cdecl;
//    procedure onReceivedError(P1: JWebView; P2: Integer; P3: JString; P4: JString); cdecl; overload;
//    procedure onReceivedError(P1: JWebView; P2: JWebResourceRequest; P3: JWebResourceError); cdecl; overload;
//    procedure onReceivedHttpError(P1: JWebView; P2: JWebResourceRequest; P3: JWebResourceResponse); cdecl;
//    procedure onReceivedHttpAuthRequest(P1: JWebView; P2: JHttpAuthHandler; P3: JString; P4: JString); cdecl;
//    procedure doUpdateVisitedHistory(P1: JWebView; P2: JString; P3: Boolean); cdecl;
//    procedure onReceivedLoginRequest(P1: JWebView; P2: JString; P3: JString; P4: JString); cdecl;
//    procedure onReceivedSslError(P1: JWebView; P2: JSslErrorHandler; P3: JSslError); cdecl;
//    procedure onReceivedClientCertRequest(P1: JWebView; P2: JClientCertRequest); cdecl;
//    procedure onScaleChanged(P1: JWebView; P2: Single; P3: Single); cdecl;
//    procedure onTooManyRedirects(P1: JWebView; P2: JMessage; P3: JMessage); cdecl;
//    procedure onUnhandledKeyEvent(P1: JWebView; P2: JKeyEvent); cdecl;
//
//    { Property }
//  end;

//  TJae = class(TJavaGenericImport<JaeClass, Jae>) end;

//  JafClass = interface(JObjectClass)
//  ['{E64B4A0E-CAD9-4BA0-9ACE-4A5F4643251B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/af')]
//  Jaf = interface(JObject)
//  ['{47E53CCC-D311-4487-90F9-2444860F1DE4}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJaf = class(TJavaGenericImport<JafClass, Jaf>) end;

//  JagClass = interface(JObjectClass)
//  ['{F475807A-FC87-4495-9A85-807979619656}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ag')]
//  Jag = interface(JObject)
//  ['{15CA8EB0-0DFF-417D-92F2-CA17AB76DD41}']
//    { Property Methods }
//
//    { methods }
//    function getDescription: JCharSequence; cdecl;
//    function getErrorCode: Integer; cdecl;
//
//    { Property }
//  end;

//  TJag = class(TJavaGenericImport<JagClass, Jag>) end;

//  JahClass = interface(JObjectClass)
//  ['{D7CD4AC5-CDD8-48B6-9A9C-013BE3050899}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jah; cdecl;
//    {class} procedure a(P1: JFile; P2: JContext); cdecl; overload;
//    {class} procedure c(P1: JContext); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ah')]
//  Jah = interface(JObject)
//  ['{396E5D5C-41F0-41F2-8EEC-B46591B18468}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Boolean; P2: Boolean): Boolean; cdecl; overload;
//    procedure b(P1: Boolean; P2: Boolean); cdecl; overload;
//    function a(P1: Boolean): Boolean; cdecl; overload;
//    function a: Integer; cdecl; overload;
//    procedure b; cdecl; overload;
//    procedure c; cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//    function d: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJah = class(TJavaGenericImport<JahClass, Jah>) end;

//  JaiClass = interface(JObjectClass)
//  ['{F6199223-7C1D-46D6-A0C1-973326F8763A}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ai')]
//  Jai = interface(JObject)
//  ['{29629950-9EF4-4193-B56E-41E161373082}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJai = class(TJavaGenericImport<JaiClass, Jai>) end;

//  JajClass = interface(JObjectClass)
//  ['{B3042F84-0D9D-46CD-916A-6AEE71A65772}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/aj')]
//  Jaj = interface(JObject)
//  ['{3CA9D536-843C-4BEF-96B9-A7B8656A8D34}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJaj = class(TJavaGenericImport<JajClass, Jaj>) end;

//  JakClass = interface(JObjectClass)
//  ['{D7292895-6976-4BF0-B0B4-F00184EDBB04}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ak')]
//  Jak = interface(JObject)
//  ['{F138F344-A865-4D77-AABF-BB29015B233B}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJak = class(TJavaGenericImport<JakClass, Jak>) end;

//  JalClass = interface(JObjectClass)
//  ['{2AB772F4-3774-4C54-9978-BDA1C9131F94}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/al')]
//  Jal = interface(JObject)
//  ['{DDEFABE1-E327-429C-A145-A258FE09895A}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Integer); cdecl;
//
//    { Property }
//  end;

//  TJal = class(TJavaGenericImport<JalClass, Jal>) end;

//  JamClass = interface(JObjectClass)
//  ['{4150D4C9-6F19-42B6-ABD3-5DE421491FCD}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString): Jam; cdecl;
//    {class} function a: Jam; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/am')]
//  Jam = interface(JObject)
//  ['{9C477593-43A0-4784-880D-2DED3CA21D25}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJam = class(TJavaGenericImport<JamClass, Jam>) end;

//  JanClass = interface(JObjectClass)
//  ['{4D48A4D1-B778-436A-9256-7CAD94328E7E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jan; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/an')]
//  Jan = interface(JObject)
//  ['{A60EC599-2814-4AE2-9432-2C6B869BA38E}']
//    { Property Methods }
//    function _Geta: Boolean;
//    procedure _Seta(aa: Boolean);
//    function _Getb: Boolean;
//    procedure _Setb(ab: Boolean);
//
//    { methods }
//    procedure a(P1: JString; P2: Byte); cdecl; overload;
//    procedure a(P1: JString; P2: Int64); cdecl; overload;
//    function a(P1: Integer; P2: JString): Boolean; cdecl; overload;
//
//    { Property }
//    property a: Boolean read _Geta write _Seta;
//    property b: Boolean read _Getb write _Setb;
//  end;

//  TJan = class(TJavaGenericImport<JanClass, Jan>) end;

//  JaoClass = interface(JObjectClass)
//  ['{3E010643-43A6-41AF-921F-4B64160825A6}']
//    { static Property Methods }
//    {class} function _Geta: JThreadLocal;
//
//    { static Methods }
//    {class} procedure a(P1: JContext); cdecl; overload;
//
//    { static Property }
//    {class} property a: JThreadLocal read _Geta;
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ao')]
//  Jao = interface(JObject)
//  ['{D4F83046-5AFE-47A6-AA7B-BD0277F3A8E8}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: Boolean; P2: JContext): Integer; cdecl; overload;
//    function a(P1: JContext; P2: JContext): Boolean; cdecl; overload;
//    function h(P1: JContext): Boolean; cdecl;
//    function a(P1: JContext; P2: TJavaObjectArray<JFile>): Boolean; cdecl; overload;
//
//    { Property }
//  end;

//  TJao = class(TJavaGenericImport<JaoClass, Jao>) end;

//  JapClass = interface(JObjectClass)
//  ['{5CD7E3C9-714D-4862-9D8E-B248BBC84316}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ap')]
//  Jap = interface(JObject)
//  ['{40529979-809E-4AD1-82BF-CF3CFE70FE49}']
//    { Property Methods }
//
//    { methods }
//    function a: JInteger; cdecl;
//    function initialValue: JObject; cdecl;
//
//    { Property }
//  end;

//  TJap = class(TJavaGenericImport<JapClass, Jap>) end;

//  JaqClass = interface(JObjectClass)
//  ['{81805963-93DD-4F16-89C5-0305D5DC63F3}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/aq')]
//  Jaq = interface(JObject)
//  ['{B905A00B-81D3-4161-935C-F77ADB727ADE}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJaq = class(TJavaGenericImport<JaqClass, Jaq>) end;

//  JarClass = interface(JObjectClass)
//  ['{7F60D3F5-03D9-4D42-B1CF-E0A5E578A2B9}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ar')]
//  Jar = interface(JObject)
//  ['{7F4E913D-F57D-4B89-BBED-8AE1756F9038}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJar = class(TJavaGenericImport<JarClass, Jar>) end;

//  JasClass = interface(JObjectClass)
//  ['{34429237-A1B9-4242-8B3D-6993ABB64CD0}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/as')]
//  Jas = interface(JObject)
//  ['{FC1F656E-4EC6-428E-9CC3-404AC6358923}']
//    { Property Methods }
//
//    { methods }
//    function accept(P1: JFile): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJas = class(TJavaGenericImport<JasClass, Jas>) end;

//  JatClass = interface(JObjectClass)
//  ['{931DE3C0-9C38-4BE5-9D13-20558958A7ED}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/at')]
//  Jat = interface(JObject)
//  ['{838B2E5A-5419-43BF-8AFC-0EE3CC0E1FFD}']
//    { Property Methods }
//
//    { methods }
//    function accept(P1: JFile): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJat = class(TJavaGenericImport<JatClass, Jat>) end;

//  JauClass = interface(JObjectClass)
//  ['{984ABFE7-A549-40FD-AC60-4BD57F7A2B84}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/au')]
//  Jau = interface(JObject)
//  ['{32883015-A9ED-4F75-A697-0C7C1723BD5A}']
//    { Property Methods }
//
//    { methods }
//    function accept(P1: JFile): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJau = class(TJavaGenericImport<JauClass, Jau>) end;

//  JavClass = interface(JObjectClass)
//  ['{B7E45D5E-013E-4E06-80C2-F3E78D3A0A60}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/av')]
//  Jav = interface(JObject)
//  ['{5832BC70-2872-4409-8EFF-8AFDE45F1E4E}']
//    { Property Methods }
//
//    { methods }
//    function accept(P1: JFile): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJav = class(TJavaGenericImport<JavClass, Jav>) end;

//  JawClass = interface(JObjectClass)
//  ['{B08A45CF-FB64-4BE0-9AFE-6E67B2F381B8}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/aw')]
//  Jaw = interface(JObject)
//  ['{41DFE5A1-7D2B-436D-A480-537A5263DFE4}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJaw = class(TJavaGenericImport<JawClass, Jaw>) end;

//  JaxClass = interface(JObjectClass)
//  ['{8D1FDEB3-EF15-4CCC-8326-CA4A917FEBBE}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ax')]
//  Jax = interface(JObject)
//  ['{C6AE4C0B-EF83-4CDC-B036-0FAF10004F91}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Integer); cdecl;
//
//    { Property }
//  end;

//  TJax = class(TJavaGenericImport<JaxClass, Jax>) end;

//  JayClass = interface(JObjectClass)
//  ['{34D3630E-7986-47D7-B459-6080535211C4}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ay')]
//  Jay = interface(JObject)
//  ['{6C224846-BFFD-40D4-A6D4-469D604410D1}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Integer); cdecl;
//
//    { Property }
//  end;

//  TJay = class(TJavaGenericImport<JayClass, Jay>) end;

//  JazClass = interface(JObjectClass)
//  ['{C8C7C2ED-9535-4A7C-99BD-B34DEDF31E60}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/az')]
//  Jaz = interface(JObject)
//  ['{7CA9227C-9C22-4A4D-9508-123426719502}']
//    { Property Methods }
//
//    { methods }
//    procedure onCallBackAction(P1: JInteger; P2: JObject; P3: JObject); cdecl;
//
//    { Property }
//  end;

//  TJaz = class(TJavaGenericImport<JazClass, Jaz>) end;

//  JaClass = interface(JObjectClass)
//  ['{FB646EA8-EE27-4F04-ACC5-F9CBB427C13F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JIntent; P3: Je; P4: Je; P5: Jf; P6: JListView; P7: JValueCallback): Ja; cdecl;
//    {class} function a(P1: JContext; P2: JString): Boolean; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/b/a/a')]
//  Ja = interface(JObject)
//  ['{A8713660-ECE7-4E88-BE98-96631AE1B13B}']
//    { Property Methods }
//
//    { methods }
//    function a: Je; cdecl; overload;
//    function a(P1: Integer): Je; cdecl; overload;
//    function getCount: Integer; cdecl;
//    function getView(P1: Integer; P2: JView; P3: JViewGroup): JView; cdecl;
//    procedure onClick(P1: JView); cdecl;
//    function getItem(P1: Integer): JObject; cdecl;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JbClass = interface(JObjectClass)
//  ['{BE5C386B-52DF-4FE8-A528-68562F4EDB1B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/b/a/b')]
//  Jb = interface(JObject)
//  ['{5E3C625D-CDFA-4DE4-848D-1D7CFBE6F0FE}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{8486CC15-EE52-40C9-8E63-BBC57B5CA233}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/b/a/c')]
//  Jc = interface(JObject)
//  ['{D821F294-9C08-4009-A912-6F8CEBA9F573}']
//    { Property Methods }
//
//    { methods }
//    procedure onClick(P1: JView); cdecl;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{D9D51CD7-DE0C-4060-8C9F-7CC463803FD6}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/b/a/d')]
//  Jd = interface(JObject)
//  ['{9BE1BE6A-EC93-4FA4-9E28-30F96F5DD79B}']
//    { Property Methods }
//
//    { methods }
//    procedure onClick(P1: JView); cdecl;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  JeClass = interface(JObjectClass)
//  ['{590C3BC5-0EC3-4E78-87C6-B1D328559DA7}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JString): JDrawable; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/b/a/e')]
//  Je = interface(JObject)
//  ['{AFF0603D-6D88-4C18-BB5E-A389884D61F1}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JMap): JDrawable; cdecl; overload;
//    function a: JString; cdecl; overload;
//    function b: JResolveInfo; cdecl;
//    function c: JString; cdecl;
//    procedure a(P1: JResolveInfo); cdecl; overload;
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{91C89FB7-CFDF-4D5A-9949-5738E5AEFBD3}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JString; P3: JIntent; P4: JValueCallback; P5: JString): Jf; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/b/a/f')]
//  Jf = interface(JObject)
//  ['{3D2F2BCB-3362-4100-B6E2-1B9D8886EA84}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString); cdecl; overload;
//    function a: JString; cdecl; overload;
//    procedure b; cdecl;
//    procedure onCreate(P1: JBundle); cdecl;
//    function a(P1: Single): Integer; cdecl; overload;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{17E2DA59-5E40-4D49-98DC-FBA18162A2C5}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/b/a/g')]
//  Jg = interface(JObject)
//  ['{3800F150-6B3E-464B-A2C6-362FE5822E0B}']
//    { Property Methods }
//
//    { methods }
//    procedure onClick(P1: JView); cdecl;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{622F90E4-8348-4E1B-9BBC-0CBB160E1574}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/b/a/h')]
//  Jh = interface(JObject)
//  ['{CF84220E-2E56-43E6-AF17-2C0FEFED5EF3}']
//    { Property Methods }
//
//    { methods }
//    procedure onClick(P1: JView); cdecl;
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  JiClass = interface(JObjectClass)
//  ['{5778DD86-87E9-41DA-9EFD-14F44B7B7D1A}']
//    { static Property Methods }
//    {class} function _Geta: TJavaArray<TJavaObjectArray<JString>>;
//
//    { static Methods }
//    {class} function a(P1: JString): JDrawable; cdecl;
//    {class} function b(P1: JString): JString; cdecl;
//    {class} function c(P1: JString): JString; cdecl;
//
//    { static Property }
//    {class} property a: TJavaArray<TJavaObjectArray<JString>> read _Geta;
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/b/a/i')]
//  Ji = interface(JObject)
//  ['{9C58D3F4-63DE-4B78-8F66-656064391504}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJi = class(TJavaGenericImport<JiClass, Ji>) end;

//  JbClass = interface(JObjectClass)
//  ['{70126A88-8E33-496B-BB7B-72B108662F7D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JWebView; P2: JDownloadListener; P3: Boolean): Jb; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/b')]
//  Jb = interface(JObject)
//  ['{0DB568F7-14C4-458B-8BB1-4BCF734D650A}']
//    { Property Methods }
//
//    { methods }
//    procedure onDownloadStart(P1: JString; P2: JString; P3: TJavaArray<Byte>; P4: JString; P5: JString; P6: JString; P7: Int64; P8: JString; P9: JString); cdecl; overload;
//    procedure onDownloadVideo(P1: JString; P2: Int64; P3: Integer); cdecl;
//    procedure onDownloadStart(P1: JString; P2: JString; P3: JString; P4: JString; P5: Int64); cdecl; overload;
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JbaClass = interface(JObjectClass)
//  ['{8C6911F4-ACCC-4A7C-98DB-ED17F8292033}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jba; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/ba')]
//  Jba = interface(JObject)
//  ['{CB89481F-2FEA-46C2-BB13-9938214F9D89}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JString; P2: JBundle; P3: Ja): Boolean; cdecl; overload;
//    function a: Boolean; cdecl; overload;
//    procedure a(P1: Integer; P2: Integer; P3: JIntent); cdecl; overload;
//
//    { Property }
//  end;

//  TJba = class(TJavaGenericImport<JbaClass, Jba>) end;

//  JbbClass = interface(JObjectClass)
//  ['{9EE0D197-49A6-4CD1-8493-70A4F59A31F9}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bb')]
//  Jbb = interface(JObject)
//  ['{DF2273FE-FC0B-4127-8AE1-5A3028B3FBBA}']
//    { Property Methods }
//
//    { methods }
//    procedure onUserStateChanged; cdecl;
//
//    { Property }
//  end;

//  TJbb = class(TJavaGenericImport<JbbClass, Jbb>) end;

//  JbcClass = interface(JObjectClass)
//  ['{9F403692-CCE6-45FB-84A9-65DAB9CCFA64}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext): Jbc; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bc')]
//  Jbc = interface(JObject)
//  ['{C8B3CAFD-38B2-479E-8902-DA3EF91D4A6B}']
//    { Property Methods }
//
//    { methods }
//    function b: Boolean; cdecl;
//    procedure a(P1: JActivity); cdecl;
//    function onError(P1: JMediaPlayer; P2: Integer; P3: Integer): Boolean; cdecl;
//    procedure c; cdecl;
//
//    { Property }
//  end;

//  TJbc = class(TJavaGenericImport<JbcClass, Jbc>) end;

//  JbdClass = interface(JObjectClass)
//  ['{F3522F22-BAE5-477A-BDF8-C6B5D9919CBE}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JContext; P2: JContext; P3: JString; P4: JString; P5: TJavaObjectArray<JString>; P6: JString; P7: Jan): Jbd; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bd')]
//  Jbd = interface(JObject)
//  ['{4E8630A4-22C5-45E8-95B2-A228D723F703}']
//    { Property Methods }
//
//    { methods }
//    function a: JString; cdecl; overload;
//    function a(P1: JContext; P2: JString; P3: JString; P4: JBundle): Boolean; cdecl; overload;
//    function b: JDexLoader; cdecl;
//
//    { Property }
//  end;

//  TJbd = class(TJavaGenericImport<JbdClass, Jbd>) end;

//  JbeClass = interface(JObjectClass)
//  ['{7C9601A5-C1F0-4CE2-B81B-12D15EE713E4}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JDexLoader): Jbe; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/be')]
//  Jbe = interface(JObject)
//  ['{64EF182D-BB36-4CED-8B2A-DD4C5B449FA8}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JContext): JObject; cdecl; overload;
//    function a(P1: JObject; P2: JBundle; P3: JFrameLayout; P4: JObject): Boolean; cdecl; overload;
//    procedure a(P1: JObject; P2: JActivity; P3: Integer); cdecl; overload;
//    procedure a(P1: JObject); cdecl; overload;
//
//    { Property }
//  end;

//  TJbe = class(TJavaGenericImport<JbeClass, Jbe>) end;

//  JbfClass = interface(JObjectClass)
//  ['{A85D1789-BC4A-4D35-9B1A-81AFF1CC2D6F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bf')]
//  Jbf = interface(JObject)
//  ['{B9313232-42D5-42A8-B050-DC117D888326}']
//    { Property Methods }
//
//    { methods }
//    procedure onReceivedIcon(P1: JString; P2: JBitmap); cdecl;
//
//    { Property }
//  end;

//  TJbf = class(TJavaGenericImport<JbfClass, Jbf>) end;

//  JbgClass = interface(JObjectClass)
//  ['{B486678C-A27C-4562-85BA-BF844C515145}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bg')]
//  Jbg = interface(JObject)
//  ['{12EFD00F-A6CF-4931-B2C5-7A73E306DC85}']
//    { Property Methods }
//
//    { methods }
//    procedure onReceivedIcon(P1: JString; P2: JBitmap); cdecl;
//
//    { Property }
//  end;

//  TJbg = class(TJavaGenericImport<JbgClass, Jbg>) end;

//  JbhClass = interface(JObjectClass)
//  ['{52FA8D41-70C1-43BB-984F-65E4BCC142F3}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bh')]
//  Jbh = interface(JObject)
//  ['{50F3A962-F639-4ACD-B3D4-027E3A72F3B6}']
//    { Property Methods }
//
//    { methods }
//    procedure invalidate; cdecl;
//    procedure onScrollChanged(P1: Integer; P2: Integer; P3: Integer; P4: Integer); cdecl;
//
//    { Property }
//  end;

//  TJbh = class(TJavaGenericImport<JbhClass, Jbh>) end;

//  JbiClass = interface(JObjectClass)
//  ['{0152794A-51E0-46CD-BC00-29A0C37A24EA}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bi')]
//  Jbi = interface(JObject)
//  ['{1838B684-E555-454D-B489-EE3DC5539800}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJbi = class(TJavaGenericImport<JbiClass, Jbi>) end;

//  JbjClass = interface(JObjectClass)
//  ['{071255E4-93C2-4610-B11C-FF82562D38DB}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bj')]
//  Jbj = interface(JObject)
//  ['{EE3E02A7-4407-4C31-890E-911F78A45416}']
//    { Property Methods }
//
//    { methods }
//    procedure onFindResultReceived(P1: Integer; P2: Integer; P3: Boolean); cdecl;
//
//    { Property }
//  end;

//  TJbj = class(TJavaGenericImport<JbjClass, Jbj>) end;

//  JbkClass = interface(JObjectClass)
//  ['{59B35FF5-6C12-4137-87C6-F65F0517A4BD}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bk')]
//  Jbk = interface(JObject)
//  ['{67AB2BE3-44D0-4703-A713-DFAAC8CFA132}']
//    { Property Methods }
//
//    { methods }
//    procedure onDownloadStart(P1: JString; P2: JString; P3: JString; P4: JString; P5: Int64); cdecl;
//
//    { Property }
//  end;

//  TJbk = class(TJavaGenericImport<JbkClass, Jbk>) end;

//  JblClass = interface(JObjectClass)
//  ['{DFC28150-456B-428B-B8DC-B9F4D462BFEC}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bl')]
//  Jbl = interface(JObject)
//  ['{7E517609-D48F-467B-8146-76E008290E15}']
//    { Property Methods }
//
//    { methods }
//    procedure onNewPicture(P1: JWebView; P2: JPicture); cdecl;
//
//    { Property }
//  end;

//  TJbl = class(TJavaGenericImport<JblClass, Jbl>) end;

//  JbmClass = interface(JObjectClass)
//  ['{A4B51285-D1A9-486F-84DF-4FFA85151429}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bm')]
//  Jbm = interface(JObject)
//  ['{B073D77B-9AC5-4D95-BBE1-EEA10A3AF681}']
//    { Property Methods }
//
//    { methods }
//    procedure onNewPictureIfHaveContent(P1: JIX5WebViewBase; P2: JPicture); cdecl;
//    procedure onNewPicture(P1: JIX5WebViewBase; P2: JPicture; P3: Boolean); cdecl;
//
//    { Property }
//  end;

//  TJbm = class(TJavaGenericImport<JbmClass, Jbm>) end;

//  JbnClass = interface(JObjectClass)
//  ['{20123CE3-C872-457E-B749-46B5D49B22FB}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bn')]
//  Jbn = interface(JObject)
//  ['{0D909746-AEB4-4508-A498-3221AEE132C9}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJbn = class(TJavaGenericImport<JbnClass, Jbn>) end;

//  JboClass = interface(JObjectClass)
//  ['{C1E2853A-AF15-4A93-8566-04A6193A7EAC}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function b: Jbo; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bo')]
//  Jbo = interface(JObject)
//  ['{0159A226-6D80-4B12-A640-F2601AFF63C2}']
//    { Property Methods }
//
//    { methods }
//    function a: JFileLock; cdecl; overload;
//    function c: Boolean; cdecl;
//    function a(P1: Boolean): Jbp; cdecl; overload;
//    function d: Jbp; cdecl;
//    procedure a(P1: JContext; P2: Jan); cdecl; overload;
//    function a(P1: JContext): JFileLock; cdecl; overload;
//
//    { Property }
//  end;

//  TJbo = class(TJavaGenericImport<JboClass, Jbo>) end;

//  JbpClass = interface(JObjectClass)
//  ['{BEBA8777-1D80-45B7-8CC1-1330A8FC5B19}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JDexLoader): Jbp; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/bp')]
//  Jbp = interface(JObject)
//  ['{57ADF63D-46D0-4433-9774-ADDE745C12E1}']
//    { Property Methods }
//
//    { methods }
//    function a: Boolean; cdecl; overload;
//    function b: JDexLoader; cdecl; overload;
//    function c: JObject; cdecl; overload;
//    function d: Boolean; cdecl; overload;
//    procedure e; cdecl; overload;
//    function a(P1: JMap): Boolean; cdecl; overload;
//    function a(P1: JContext): JIX5WebViewBase; cdecl; overload;
//    function a(P1: JString): JString; cdecl; overload;
//    function f: JString; cdecl; overload;
//    function a(P1: JString; P2: Boolean): JInputStream; cdecl; overload;
//    function g: JObject; cdecl; overload;
//    function h: Boolean; cdecl;
//    function i: JIX5WebChromeClient; cdecl;
//    function j: JIX5WebViewClient; cdecl;
//    function k: JIX5WebViewClientExtension; cdecl;
//    procedure b(P1: JString); cdecl; overload;
//    function a(P1: Integer; P2: JIntent): TJavaObjectArray<Jnet_Uri>; cdecl; overload;
//    procedure l; cdecl;
//    procedure a(P1: JString; P2: JIconListener); cdecl; overload;
//    procedure c(P1: JString); cdecl; overload;
//    procedure d(P1: JString); cdecl; overload;
//    procedure m; cdecl;
//    function b(P1: JContext): Boolean; cdecl; overload;
//    procedure c(P1: JContext); cdecl; overload;
//    function d(P1: JContext): Boolean; cdecl; overload;
//    procedure e(P1: JContext); cdecl; overload;
//    function f(P1: JContext): Boolean; cdecl; overload;
//    procedure g(P1: JContext); cdecl; overload;
//    procedure a(P1: JValueCallback); cdecl; overload;
//    procedure a(P1: JString; P2: JValueCallback); cdecl; overload;
//    procedure b(P1: JString; P2: JValueCallback); cdecl; overload;
//    procedure a(P1: JString; P2: Int64); cdecl; overload;
//    procedure e(P1: JString); cdecl; overload;
//    procedure n; cdecl;
//    function f(P1: JString): JString; cdecl; overload;
//    procedure a(P1: JContext; P2: Boolean); cdecl; overload;
//    function a(P1: JContext; P2: JString; P3: JMap; P4: JString; P5: JValueCallback): Integer; cdecl; overload;
//    function a(P1: JContext; P2: JString): Boolean; cdecl; overload;
//    procedure o; cdecl;
//
//    { Property }
//  end;

//  TJbp = class(TJavaGenericImport<JbpClass, Jbp>) end;

//  JcClass = interface(JObjectClass)
//  ['{CBB58FBA-73F4-4F2D-A378-2886BF9E632D}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: Jc; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/c')]
//  Jc = interface(JObject)
//  ['{9DCB61D1-CAB9-485F-8EEA-9088D02451A1}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JString): JString; cdecl; overload;
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

  JCacheManagerClass = interface(JObjectClass)
  ['{46219CB5-4ED3-40D7-A768-1F4A5460EC04}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCacheManager; cdecl;
    {class} function getCacheFileBaseDir: JFile; cdecl;
    {class} function cacheDisabled: Boolean; cdecl;
    {class} function getCacheFile(P1: JString; P2: JMap): JObject; cdecl; overload;
    {class} function getCacheFile(P1: JString; P2: Boolean): JInputStream; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/CacheManager')]
  JCacheManager = interface(JObject)
  ['{8E3CC968-8B2B-43E3-B1F7-42DB2699A825}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJCacheManager = class(TJavaGenericImport<JCacheManagerClass, JCacheManager>) end;

//  JCookieManager_aClass = interface(JObjectClass)
//  ['{56697BF9-68E6-43E3-91A5-7F0264F45D2B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/CookieManager$a')]
//  JCookieManager_a = interface(JObject)
//  ['{0280B687-F885-4CAB-8C17-47CE6EC55181}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJCookieManager_a = class(TJavaGenericImport<JCookieManager_aClass, JCookieManager_a>) end;

  JCookieManagerClass = interface(JObjectClass)
  ['{C2298509-986D-41B0-8059-E20FB305C789}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCookieManager; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/CookieManager')]
  JCookieManager = interface(JObject)
  ['{9D22C931-51CD-4DE5-8BE0-C05331FDB6B4}']
    { Property Methods }

    { methods }
    procedure removeSessionCookie; cdecl;
    procedure removeSessionCookies(P1: JValueCallback); cdecl;
    procedure removeAllCookie; cdecl;
    procedure removeAllCookies(P1: JValueCallback); cdecl;
    procedure flush; cdecl;
    procedure removeExpiredCookie; cdecl;
    procedure setAcceptCookie(P1: Boolean); cdecl;
    procedure setAcceptThirdPartyCookies(P1: JWebView; P2: Boolean); cdecl;
    function acceptThirdPartyCookies(P1: JWebView): Boolean; cdecl;
    procedure setCookie(P1: JString; P2: JString); cdecl; overload;
    procedure setCookie(P1: JString; P2: JString; P3: JValueCallback); cdecl; overload;
    function hasCookies: Boolean; cdecl;
    function acceptCookie: Boolean; cdecl;
    function getCookie(P1: JString): JString; cdecl;
    procedure setCookies(P1: JMap); cdecl;

    { Property }
  end;

  TJCookieManager = class(TJavaGenericImport<JCookieManagerClass, JCookieManager>) end;

  JCookieSyncManagerClass = interface(JObjectClass)
  ['{E7C4D73D-4094-4929-84CC-84ACF0F6A28B}']
    { static Property Methods }

    { static Methods }
    {class} function createInstance(P1: JContext): JCookieSyncManager; cdecl;
    {class} function getInstance: JCookieSyncManager; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/CookieSyncManager')]
  JCookieSyncManager = interface(JObject)
  ['{337B0178-1348-4267-A1FC-5DF607045F99}']
    { Property Methods }

    { methods }
    procedure sync; cdecl;
    procedure stopSync; cdecl;
    procedure startSync; cdecl;

    { Property }
  end;

  TJCookieSyncManager = class(TJavaGenericImport<JCookieSyncManagerClass, JCookieSyncManager>) end;

//  JdClass = interface(JObjectClass)
//  ['{4DFB11E1-BAB7-4A8A-AD97-D856BF2D7129}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JString): JString; cdecl; overload;
//    {class} function a(P1: Jd): TJavaArray<Char>; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/d')]
//  Jd = interface(JObject)
//  ['{8DABDB4B-2F17-46BD-9348-126C7B7D5106}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;
//
  JDownloadListenerClass = interface(JObjectClass)
  ['{9CAF3593-E5A6-4D39-8618-F8F12B2E2CC9}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/DownloadListener')]
  JDownloadListener = interface(IJavaInstance)
  ['{C30D8CDC-90BF-4167-AD3E-E0852882C92F}']
    { Property Methods }

    { methods }
    procedure onDownloadStart(P1: JString; P2: JString; P3: JString; P4: JString; P5: Int64); cdecl;

    { Property }
  end;

  TJDownloadListener = class(TJavaGenericImport<JDownloadListenerClass, JDownloadListener>) end;

//  JeClass = interface(JObjectClass)
//  ['{CB30580C-F49E-4709-9A8C-3F804D0FC5AC}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/e')]
//  Je = interface(JObject)
//  ['{209232F8-41A8-4F86-855B-CB686E85A8C7}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{C61C1F8E-1218-4F9C-9DF9-CE02883B94F4}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/f')]
//  Jf = interface(JObject)
//  ['{73525E1E-CC24-4814-88F3-9F7BB3D32360}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{06B965E1-E266-4585-AC89-717D81A3660F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/g')]
//  Jg = interface(JObject)
//  ['{40572A7B-BEC1-450D-B6FA-F670ADC2E963}']
//    { Property Methods }
//
//    { methods }
//    procedure onDismiss(P1: JDialogInterface); cdecl;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{03C44182-03E0-49B7-85A2-E24F15E7BC2F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/h')]
//  Jh = interface(JObject)
//  ['{0AF929B0-957F-4CC6-BF38-251875EF2724}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  JiClass = interface(JObjectClass)
//  ['{D444C848-93DB-4562-93DE-0E021722BD69}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/i')]
//  Ji = interface(JObject)
//  ['{A4C48D36-C943-4C21-A7B6-891E2F8220EF}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJi = class(TJavaGenericImport<JiClass, Ji>) end;

//  JjClass = interface(JObjectClass)
//  ['{5A2D29B9-22FB-4E71-94FD-4E1A4046A8EE}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/j')]
//  Jj = interface(JObject)
//  ['{A46E4BFD-46DE-48DA-836E-FDE55634220F}']
//    { Property Methods }
//
//    { methods }
//    procedure onDownloadFinish(P1: Integer); cdecl;
//    procedure onInstallFinish(P1: Integer); cdecl;
//    procedure onDownloadProgress(P1: Integer); cdecl;
//
//    { Property }
//  end;

//  TJj = class(TJavaGenericImport<JjClass, Jj>) end;

//  JkClass = interface(JObjectClass)
//  ['{296A282A-BB70-495F-A89A-32CAB93C666B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/k')]
//  Jk = interface(JObject)
//  ['{20109317-A80F-405C-82D6-378FC02080EE}']
//    { Property Methods }
//
//    { methods }
//    procedure onNeedDownloadFinish(P1: Boolean; P2: Integer); cdecl;
//
//    { Property }
//  end;

//  TJk = class(TJavaGenericImport<JkClass, Jk>) end;

//  JlClass = interface(JObjectClass)
//  ['{C613A3FF-620A-416F-B0CE-7C2C8FF3DEFC}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/l')]
//  Jl = interface(JObject)
//  ['{9534E62A-CFDC-40B1-B6A5-14B4A0E0BDE1}']
//    { Property Methods }
//
//    { methods }
//    procedure onDownloadFinish(P1: Integer); cdecl;
//    procedure onInstallFinish(P1: Integer); cdecl;
//    procedure onDownloadProgress(P1: Integer); cdecl;
//
//    { Property }
//  end;

//  TJl = class(TJavaGenericImport<JlClass, Jl>) end;

//  JmClass = interface(JObjectClass)
//  ['{FCBD51BF-4626-496C-9101-171B7CC7D23A}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/m')]
//  Jm = interface(JObject)
//  ['{43206EBF-10BE-4E1D-AFC9-629923E3E85D}']
//    { Property Methods }
//
//    { methods }
//    procedure onClick(P1: JDialogInterface; P2: Integer); cdecl;
//
//    { Property }
//  end;

//  TJm = class(TJavaGenericImport<JmClass, Jm>) end;

//  JnClass = interface(JObjectClass)
//  ['{0E343215-F0C0-49B7-984D-390151A580E5}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/n')]
//  Jn = interface(JObject)
//  ['{CEF4B939-1E81-458A-9E3D-A5242CA71CF9}']
//    { Property Methods }
//
//    { methods }
//    procedure onDismiss(P1: JDialogInterface); cdecl;
//
//    { Property }
//  end;

//  TJn = class(TJavaGenericImport<JnClass, Jn>) end;

//  JoClass = interface(JObjectClass)
//  ['{DD75CB91-ADD4-4B17-867B-6A209D9EF7D0}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/o')]
//  Jo = interface(JObject)
//  ['{0E69D1E0-A891-4D65-A35E-C4801229526B}']
//    { Property Methods }
//
//    { methods }
//    procedure onClick(P1: JDialogInterface; P2: Integer); cdecl;
//
//    { Property }
//  end;

//  TJo = class(TJavaGenericImport<JoClass, Jo>) end;

//  JpClass = interface(JObjectClass)
//  ['{EFD6445F-7244-4048-A7F2-0C1C4166D1E9}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Boolean; cdecl; overload;
//    {class} function a(P1: JString): Boolean; cdecl; overload;
//    {class} function a(P1: Integer): JDrawable; cdecl; overload;
//    {class} function b(P1: Integer): JString; cdecl;
//    {class} function init(P1: JTbsReaderView_ReaderCallback): Jp; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/p')]
//  Jp = interface(JObject)
//  ['{B028EC46-85F9-488E-B2CD-CB23CDB79073}']
//    { Property Methods }
//
//    { methods }
//    function a: JObject; cdecl; overload;
//    function a(P1: JObject; P2: JContext): Boolean; cdecl; overload;
//    function a(P1: JObject; P2: JContext; P3: JString; P4: Boolean): Boolean; cdecl; overload;
//    function a(P1: JObject; P2: JContext; P3: JBundle; P4: JFrameLayout): Boolean; cdecl; overload;
//    procedure a(P1: JObject; P2: Integer; P3: Integer); cdecl; overload;
//    procedure a(P1: JObject; P2: JInteger; P3: JObject; P4: JObject); cdecl; overload;
//    procedure a(P1: JObject); cdecl; overload;
//    procedure a(P1: JObject; P2: JString); cdecl; overload;
//
//    { Property }
//  end;

//  TJp = class(TJavaGenericImport<JpClass, Jp>) end;

//  JqClass = interface(JObjectClass)
//  ['{D7E493E3-8945-4A3A-9C4B-A5A31BB0B343}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: Boolean): Jq; cdecl; overload;
//    {class} function d: Integer; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/q')]
//  Jq = interface(JObject)
//  ['{4F831467-4BC1-4B35-B041-BFA205939B95}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JContext; P2: Boolean; P3: Boolean; P4: Jan); cdecl; overload;
//    function a: Jbd; cdecl; overload;
//    function b: Boolean; cdecl;
//    function e: JString; cdecl;
//    function h: Boolean; cdecl;
//
//    { Property }
//  end;

//  TJq = class(TJavaGenericImport<JqClass, Jq>) end;

  JQbSdk_PreInitCallbackClass = interface(JObjectClass)
  ['{3497AD11-CBCF-4744-AB65-8F3D227D0A0C}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/QbSdk$PreInitCallback')]
  JQbSdk_PreInitCallback = interface(IJavaInstance)
  ['{7B358E4C-B919-4615-B6DC-B2FC97169F0A}']
    { Property Methods }

    { methods }
    procedure onCoreInitFinished; cdecl;
    procedure onViewInitFinished(P1: Boolean); cdecl;

    { Property }
  end;

  TJQbSdk_PreInitCallback = class(TJavaGenericImport<JQbSdk_PreInitCallbackClass, JQbSdk_PreInitCallback>) end;

  JQbSdkClass = interface(JObjectClass)
  ['{5DBA0065-876F-44C1-B3A9-2A1BDD82C755}']
    { static Property Methods }
    {class} function _GetVERSION: Integer;
    {class} function _GetSVNVERSION: Integer;
    {class} function _GetsIsVersionPrinted: Boolean;
    {class} function _GetPARAM_KEY_POSITIONID: JString;
    {class} function _GetPARAM_KEY_FEATUREID: JString;
    {class} function _GetPARAM_KEY_FUNCTIONID: JString;
    {class} function _GetEXTENSION_INIT_FAILURE: Integer;
    {class} function _GetTBSMODE: Integer;
    {class} function _GetQBMODE: Integer;
    {class} function _GetLOGIN_TYPE_KEY_PARTNER_ID: JString;
    {class} function _GetLOGIN_TYPE_KEY_PARTNER_CALL_POS: JString;
    {class} function _GetisDefaultDialog: Boolean;
    {class} function _GetTID_QQNumber_Prefix: JString;
    {class} function _GetFILERADER_MENUDATA: JString;

    { static Methods }
    {class} function init: JQbSdk; cdecl;
    {class} function startQBToLoadurl(P1: JContext; P2: JString; P3: Integer; P4: JWebView): Boolean; cdecl;
    {class} function startQBForVideo(P1: JContext; P2: JString; P3: Integer): Boolean; cdecl;
    {class} function startQBForDoc(P1: JContext; P2: JString; P3: Integer; P4: Integer; P5: JString; P6: JBundle): Boolean; cdecl;
    {class} function getIsSysWebViewForcedByOuter: Boolean; cdecl;
    {class} function canLoadX5FirstTimeThirdApp(P1: JContext): Boolean; cdecl;
    {class} function canLoadX5(P1: JContext): Boolean; cdecl;
    {class} function canOpenWebPlus(P1: JContext): Boolean; cdecl;
    {class} function isX5DisabledSync(P1: JContext): Boolean; cdecl;
    {class} procedure setTbsLogClient(P1: JTbsLogClient); cdecl;
    {class} function installLocalQbApk(P1: JContext; P2: JString; P3: JString; P4: JBundle): Boolean; cdecl;
    {class} function canUseVideoFeatrue(P1: JContext; P2: Integer): Boolean; cdecl;
    {class} function canLoadVideo(P1: JContext): Boolean; cdecl;
    {class} function canOpenMimeFileType(P1: JContext; P2: JString): Boolean; cdecl;
    {class} procedure setCurrentID(P1: JString); cdecl;
    {class} function getTID: JString; cdecl;
    {class} procedure setQQBuildNumber(P1: JString); cdecl;
    {class} function getQQBuildNumber: JString; cdecl;
    {class} procedure forceSysWebView; cdecl;
    {class} procedure unForceSysWebView; cdecl;
    {class} procedure canOpenFile(P1: JContext; P2: JString; P3: JValueCallback); cdecl;
    {class} procedure closeFileReader(P1: JContext); cdecl;
    {class} procedure preInit(P1: JContext); cdecl; overload;
    {class} procedure preInit(P1: JContext; P2: JQbSdk_PreInitCallback); cdecl; overload;
    {class} function isTbsCoreInited: Boolean; cdecl;
    {class} procedure initX5Environment(P1: JContext; P2: JQbSdk_PreInitCallback); cdecl;
    {class} function getTbsVersion(P1: JContext): Integer; cdecl;
    {class} function getDexLoaderFileList(P1: JContext; P2: JContext; P3: JString): TJavaObjectArray<JString>; cdecl;
    {class} function useSoftWare: Boolean; cdecl;
    {class} procedure setTbsListener(P1: JTbsListener); cdecl;
    {class} procedure setDownloadWithoutWifi(P1: Boolean); cdecl;
    {class} function getDownloadWithoutWifi: Boolean; cdecl;
    {class} function getApkFileSize(P1: JContext): Int64; cdecl;
    {class} procedure setTBSInstallingStatus(P1: Boolean); cdecl;
    {class} function getTBSInstalling: Boolean; cdecl;
    {class} procedure reset(P1: JContext); cdecl;
    {class} procedure clear(P1: JContext); cdecl;
    {class} procedure clearAllWebViewCache(P1: JContext; P2: Boolean); cdecl;
    {class} function startMiniQBToLoadUrl(P1: JContext; P2: JString; P3: JHashMap; P4: JValueCallback): Integer; cdecl;
    {class} function startQbOrMiniQBToLoadUrl(P1: JContext; P2: JString; P3: JHashMap; P4: JValueCallback): Boolean; cdecl;
    {class} function startQBWithBrowserlist(P1: JContext; P2: JString; P3: Integer): Boolean; cdecl;
    {class} function openFileReader(P1: JContext; P2: JString; P3: JHashMap; P4: JValueCallback): Integer; cdecl;
    {class} function getMiniQBVersion(P1: JContext): JString; cdecl;
    {class} function createMiniQBShortCut(P1: JContext; P2: JString; P3: JString; P4: JDrawable): Boolean; cdecl;
    {class} function isMiniQBShortCutExist(P1: JContext; P2: JString; P3: JString): Boolean; cdecl;
    {class} function deleteMiniQBShortCut(P1: JContext; P2: JString; P3: JString): Boolean; cdecl;
    {class} function intentDispatch(P1: JWebView; P2: JIntent; P3: JString; P4: JString): Boolean; cdecl;
    {class} procedure setDeviceInfo(P1: JString; P2: JString; P3: JString; P4: JString); cdecl;
    {class} procedure openFileReaderListWithQBDownload(P1: JContext; P2: JString; P3: JValueCallback); cdecl;
    {class} function checkApkExist(P1: JContext; P2: JString): Boolean; cdecl;
    {class} function isSuportOpenFile(P1: JString; P2: Integer): Boolean; cdecl;
    {class} procedure openBrowserList(P1: JContext; P2: JString; P3: JValueCallback); cdecl;
    {class} procedure initTbsSettings(P1: JMap); cdecl;
    {class} procedure disAllowThirdAppDownload; cdecl;

    { static Property }
    {class} property VERSION: Integer read _GetVERSION;
    {class} property SVNVERSION: Integer read _GetSVNVERSION;
    {class} property sIsVersionPrinted: Boolean read _GetsIsVersionPrinted;
    {class} property PARAM_KEY_POSITIONID: JString read _GetPARAM_KEY_POSITIONID;
    {class} property PARAM_KEY_FEATUREID: JString read _GetPARAM_KEY_FEATUREID;
    {class} property PARAM_KEY_FUNCTIONID: JString read _GetPARAM_KEY_FUNCTIONID;
    {class} property EXTENSION_INIT_FAILURE: Integer read _GetEXTENSION_INIT_FAILURE;
    {class} property TBSMODE: Integer read _GetTBSMODE;
    {class} property QBMODE: Integer read _GetQBMODE;
    {class} property LOGIN_TYPE_KEY_PARTNER_ID: JString read _GetLOGIN_TYPE_KEY_PARTNER_ID;
    {class} property LOGIN_TYPE_KEY_PARTNER_CALL_POS: JString read _GetLOGIN_TYPE_KEY_PARTNER_CALL_POS;
    {class} property isDefaultDialog: Boolean read _GetisDefaultDialog;
    {class} property TID_QQNumber_Prefix: JString read _GetTID_QQNumber_Prefix;
    {class} property FILERADER_MENUDATA: JString read _GetFILERADER_MENUDATA;
  end;

  [JavaSignature('com/tencent/smtt/sdk/QbSdk')]
  JQbSdk = interface(JObject)
  ['{A5C7BB75-BAAD-425A-8174-1785654A743D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJQbSdk = class(TJavaGenericImport<JQbSdkClass, JQbSdk>) end;

//  JrClass = interface(JObjectClass)
//  ['{A4779511-FD1A-44A2-9984-21FB243174A2}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jr; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/r')]
//  Jr = interface(JObject)
//  ['{2DA1712B-68F8-40B0-BA2A-F53F9AD59475}']
//    { Property Methods }
//
//    { methods }
//    procedure uncaughtException(P1: JThread; P2: JThrowable); cdecl;
//
//    { Property }
//  end;

//  TJr = class(TJavaGenericImport<JrClass, Jr>) end;

//  Js_aClass = interface(JObjectClass)
//  ['{73F8EB42-1092-4C1D-BD03-AC1AC0CD1BBA}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/s$a')]
//  Js_a = interface(JObject)
//  ['{AF50DD12-5750-4E7E-8EDD-E743E208F772}']
//    { Property Methods }
//
//    { methods }
//    procedure updateQuota(P1: Int64); cdecl;
//
//    { Property }
//  end;

//  TJs_a = class(TJavaGenericImport<Js_aClass, Js_a>) end;

//  JsClass = interface(JObjectClass)
//  ['{AC491333-2CA7-4BD7-9551-75D5AE8744BE}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JIX5WebChromeClient; P2: JWebView; P3: JWebChromeClient): Js; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/s')]
//  Js = interface(JObject)
//  ['{8D8D0775-48B9-4A14-8A71-93DF25DD1CD1}']
//    { Property Methods }
//
//    { methods }
//    procedure getVisitedHistory(P1: JValueCallback); cdecl;
//    procedure onExceededDatabaseQuota(P1: JString; P2: JString; P3: Int64; P4: Int64; P5: Int64; P6: JQuotaUpdater); cdecl;
//    function getDefaultVideoPoster: JBitmap; cdecl;
//    procedure onCloseWindow(P1: JIX5WebViewBase); cdecl;
//    procedure onConsoleMessage(P1: JString; P2: Integer; P3: JString); cdecl; overload;
//    function onConsoleMessage(P1: JConsoleMessage): Boolean; cdecl; overload;
//    function onCreateWindow(P1: JIX5WebViewBase; P2: Boolean; P3: Boolean; P4: JMessage): Boolean; cdecl;
//    procedure onGeolocationPermissionsHidePrompt; cdecl;
//    procedure onGeolocationPermissionsShowPrompt(P1: JString; P2: JGeolocationPermissionsCallback); cdecl;
//    procedure onHideCustomView; cdecl;
//    function onJsAlert(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
//    function onJsConfirm(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
//    function onJsPrompt(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JString; P5: JJsPromptResult): Boolean; cdecl;
//    function onJsBeforeUnload(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
//    function onJsTimeout: Boolean; cdecl;
//    procedure onProgressChanged(P1: JIX5WebViewBase; P2: Integer); cdecl;
//    procedure onReachedMaxAppCacheSize(P1: Int64; P2: Int64; P3: JQuotaUpdater); cdecl;
//    procedure onReceivedIcon(P1: JIX5WebViewBase; P2: JBitmap); cdecl;
//    procedure onReceivedTouchIconUrl(P1: JIX5WebViewBase; P2: JString; P3: Boolean); cdecl;
//    procedure onReceivedTitle(P1: JIX5WebViewBase; P2: JString); cdecl;
//    procedure onRequestFocus(P1: JIX5WebViewBase); cdecl;
//    procedure onShowCustomView(P1: JView; P2: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
//    procedure onShowCustomView(P1: JView; P2: Integer; P3: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
//    procedure openFileChooser(P1: JValueCallback; P2: JString; P3: JString; P4: Boolean); cdecl;
//    function onShowFileChooser(P1: JIX5WebViewBase; P2: JValueCallback; P3: JIX5WebChromeClient_FileChooserParams): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJs = class(TJavaGenericImport<JsClass, Js>) end;

//  JSystemWebChromeClient_aClass = interface(JObjectClass)
//  ['{D60D1030-EE64-4B76-9CE6-F353C02968C8}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/SystemWebChromeClient$a')]
//  JSystemWebChromeClient_a = interface(JObject)
//  ['{43529955-B143-4777-AC4C-1622DB55E995}']
//    { Property Methods }
//
//    { methods }
//    function messageLevel: JConsoleMessage_MessageLevel; cdecl;
//    function &message: JString; cdecl;
//    function sourceId: JString; cdecl;
//    function lineNumber: Integer; cdecl;
//
//    { Property }
//  end;

//  TJSystemWebChromeClient_a = class(TJavaGenericImport<JSystemWebChromeClient_aClass, JSystemWebChromeClient_a>) end;

//  JSystemWebChromeClient_bClass = interface(JObjectClass)
//  ['{2F6C2BE7-71A8-4B25-98C9-1746EE826946}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/SystemWebChromeClient$b')]
//  JSystemWebChromeClient_b = interface(JObject)
//  ['{118BC56E-1CA2-43D9-B7A9-4A29B3F6FF7C}']
//    { Property Methods }
//
//    { methods }
//    procedure onCustomViewHidden; cdecl;
//
//    { Property }
//  end;

//  TJSystemWebChromeClient_b = class(TJavaGenericImport<JSystemWebChromeClient_bClass, JSystemWebChromeClient_b>) end;

//  JSystemWebChromeClient_cClass = interface(JObjectClass)
//  ['{4FB505E4-9D3E-41B4-B2FE-D3C941598AC1}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/SystemWebChromeClient$c')]
//  JSystemWebChromeClient_c = interface(JObject)
//  ['{C0640FC9-AC7C-4F09-A601-F799F08D8C61}']
//    { Property Methods }
//
//    { methods }
//    procedure invoke(P1: JString; P2: Boolean; P3: Boolean); cdecl;
//
//    { Property }
//  end;

//  TJSystemWebChromeClient_c = class(TJavaGenericImport<JSystemWebChromeClient_cClass, JSystemWebChromeClient_c>) end;

//  JSystemWebChromeClient_dClass = interface(JObjectClass)
//  ['{17D09F4D-DA89-4B3F-BC76-F55011D70DD6}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/SystemWebChromeClient$d')]
//  JSystemWebChromeClient_d = interface(JObject)
//  ['{5FBB6367-52E9-47FD-8C5F-DFF4045DFAB0}']
//    { Property Methods }
//
//    { methods }
//    procedure cancel; cdecl;
//    procedure confirm; cdecl; overload;
//    procedure confirm(P1: JString); cdecl; overload;
//
//    { Property }
//  end;

//  TJSystemWebChromeClient_d = class(TJavaGenericImport<JSystemWebChromeClient_dClass, JSystemWebChromeClient_d>) end;

//  JSystemWebChromeClient_eClass = interface(JObjectClass)
//  ['{221FD6EF-16A4-4E57-82BE-4F33430F5C97}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/SystemWebChromeClient$e')]
//  JSystemWebChromeClient_e = interface(JObject)
//  ['{7CD25976-361A-44C2-99F0-1E1371CA2513}']
//    { Property Methods }
//
//    { methods }
//    procedure cancel; cdecl;
//    procedure confirm; cdecl;
//
//    { Property }
//  end;

//  TJSystemWebChromeClient_e = class(TJavaGenericImport<JSystemWebChromeClient_eClass, JSystemWebChromeClient_e>) end;

//  JSystemWebChromeClient_fClass = interface(JObjectClass)
//  ['{74B2D700-C2C4-455F-9880-29C462666140}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/SystemWebChromeClient$f')]
//  JSystemWebChromeClient_f = interface(JObject)
//  ['{30EFD8E7-8ADF-4D97-A4C7-486E837906AA}']
//    { Property Methods }
//
//    { methods }
//    procedure updateQuota(P1: Int64); cdecl;
//
//    { Property }
//  end;

//  TJSystemWebChromeClient_f = class(TJavaGenericImport<JSystemWebChromeClient_fClass, JSystemWebChromeClient_f>) end;

  JSystemWebChromeClientClass = interface(JObjectClass)
  ['{8E170BB1-5BDB-4CC7-BBAB-CE6734B8ED58}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/SystemWebChromeClient')]
  JSystemWebChromeClient = interface(JObject)
  ['{D251472B-399E-4C30-82BD-619CAA6B6923}']
    { Property Methods }

    { methods }
    function getDefaultVideoPoster: JBitmap; cdecl;
    function getVideoLoadingProgressView: JView; cdecl;
    procedure getVisitedHistory(P1: JValueCallback); cdecl;
    procedure onCloseWindow(P1: JWebView); cdecl;
    function onConsoleMessage(P1: JConsoleMessage): Boolean; cdecl; overload;
    procedure onConsoleMessage(P1: JString; P2: Integer; P3: JString); cdecl; overload;
    function onCreateWindow(P1: JWebView; P2: Boolean; P3: Boolean; P4: JMessage): Boolean; cdecl;
    procedure onExceededDatabaseQuota(P1: JString; P2: JString; P3: Int64; P4: Int64; P5: Int64; P6: JWebStorage_QuotaUpdater); cdecl;
    procedure onGeolocationPermissionsHidePrompt; cdecl;
    procedure onGeolocationPermissionsShowPrompt(P1: JString; P2: JGeolocationPermissions_Callback); cdecl;
    procedure onHideCustomView; cdecl;
    function onJsAlert(P1: JWebView; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    function onJsBeforeUnload(P1: JWebView; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    function onJsConfirm(P1: JWebView; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    function onJsPrompt(P1: JWebView; P2: JString; P3: JString; P4: JString; P5: JJsPromptResult): Boolean; cdecl;
    function onJsTimeout: Boolean; cdecl;
    procedure onProgressChanged(P1: JWebView; P2: Integer); cdecl;
    procedure onReachedMaxAppCacheSize(P1: Int64; P2: Int64; P3: JWebStorage_QuotaUpdater); cdecl;
    procedure onReceivedIcon(P1: JWebView; P2: JBitmap); cdecl;
    procedure onReceivedTitle(P1: JWebView; P2: JString); cdecl;
    procedure onReceivedTouchIconUrl(P1: JWebView; P2: JString; P3: Boolean); cdecl;
    procedure onRequestFocus(P1: JWebView); cdecl;
    procedure onShowCustomView(P1: JView; P2: JWebChromeClient_CustomViewCallback); cdecl; overload;
    procedure onShowCustomView(P1: JView; P2: Integer; P3: JWebChromeClient_CustomViewCallback); cdecl; overload;
    procedure openFileChooser(P1: JValueCallback); cdecl; overload;
    procedure openFileChooser(P1: JValueCallback; P2: JString); cdecl; overload;
    procedure openFileChooser(P1: JValueCallback; P2: JString; P3: JString); cdecl; overload;
    function onShowFileChooser(P1: JWebView; P2: JValueCallback; P3: JWebChromeClient_FileChooserParams): Boolean; cdecl;
    procedure setupAutoFill(P1: JMessage); cdecl;

    { Property }
  end;

  TJSystemWebChromeClient = class(TJavaGenericImport<JSystemWebChromeClientClass, JSystemWebChromeClient>) end;

//  JtClass = interface(JObjectClass)
//  ['{98A70D79-FA2A-4418-B434-ED7F0455DDAD}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/t')]
//  Jt = interface(JObject)
//  ['{18F35520-D2BA-46F7-8FAA-8A9CDFEECEEF}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJt = class(TJavaGenericImport<JtClass, Jt>) end;

  JTbsConfigClass = interface(JObjectClass)
  ['{4C245A0B-70B1-43F8-8C0F-B133C374B5B5}']
    { static Property Methods }
    {class} function _GetTBS_SDK_VERSIONNAME: JString;
    {class} function _GetAPP_QB: JString;
    {class} function _GetAPP_WX: JString;
    {class} function _GetAPP_QQ: JString;
    {class} function _GetAPP_DEMO: JString;
    {class} function _GetAPP_DEMO_TEST: JString;
    {class} function _GetAPP_QZONE: JString;
    {class} function _GetTBS_DEMO_SIMULATE_THIRDAPP: Boolean;
    {class} function _GetDEBUG_TBS_SDK: Boolean;
    {class} function _GetTBS_INCUR_UPDATE_TEST: Boolean;
    {class} function _GetTBS_LOG: Boolean;
    {class} function _GetTBS_LOG_ENCRYPT: Boolean;
    {class} function _GetTBS_UNZIP_SIMULATE_SWITCH: Boolean;
    {class} function _GetTBS_DEXOPT_SIMULATE_SWITCH: Boolean;
    {class} function _GetTBS_NETWORK_SIMULATE_SWITCH: Boolean;
    {class} function _GetDEBUG_QB_INSTALL: Boolean;
    {class} function _GetLOG_VERBOSE: Boolean;
    {class} function _GetLOG_DEBUG: Boolean;
    {class} function _GetIS_TBS_CORE_STATIC_MODE: Boolean;
    {class} function _GetLOAD_TEST_INDEX: Integer;

    { static Methods }
    {class} function init: JTbsConfig; cdecl;

    { static Property }
    {class} property TBS_SDK_VERSIONNAME: JString read _GetTBS_SDK_VERSIONNAME;
    {class} property APP_QB: JString read _GetAPP_QB;
    {class} property APP_WX: JString read _GetAPP_WX;
    {class} property APP_QQ: JString read _GetAPP_QQ;
    {class} property APP_DEMO: JString read _GetAPP_DEMO;
    {class} property APP_DEMO_TEST: JString read _GetAPP_DEMO_TEST;
    {class} property APP_QZONE: JString read _GetAPP_QZONE;
    {class} property TBS_DEMO_SIMULATE_THIRDAPP: Boolean read _GetTBS_DEMO_SIMULATE_THIRDAPP;
    {class} property DEBUG_TBS_SDK: Boolean read _GetDEBUG_TBS_SDK;
    {class} property TBS_INCUR_UPDATE_TEST: Boolean read _GetTBS_INCUR_UPDATE_TEST;
    {class} property TBS_LOG: Boolean read _GetTBS_LOG;
    {class} property TBS_LOG_ENCRYPT: Boolean read _GetTBS_LOG_ENCRYPT;
    {class} property TBS_UNZIP_SIMULATE_SWITCH: Boolean read _GetTBS_UNZIP_SIMULATE_SWITCH;
    {class} property TBS_DEXOPT_SIMULATE_SWITCH: Boolean read _GetTBS_DEXOPT_SIMULATE_SWITCH;
    {class} property TBS_NETWORK_SIMULATE_SWITCH: Boolean read _GetTBS_NETWORK_SIMULATE_SWITCH;
    {class} property DEBUG_QB_INSTALL: Boolean read _GetDEBUG_QB_INSTALL;
    {class} property LOG_VERBOSE: Boolean read _GetLOG_VERBOSE;
    {class} property LOG_DEBUG: Boolean read _GetLOG_DEBUG;
    {class} property IS_TBS_CORE_STATIC_MODE: Boolean read _GetIS_TBS_CORE_STATIC_MODE;
    {class} property LOAD_TEST_INDEX: Integer read _GetLOAD_TEST_INDEX;
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsConfig')]
  JTbsConfig = interface(JObject)
  ['{6F2064F5-9F37-437E-9EEF-B2A533E73F4B}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTbsConfig = class(TJavaGenericImport<JTbsConfigClass, JTbsConfig>) end;

  JTbsCoreLoadStat_TbsSequenceQueueClass = interface(JObjectClass)
  ['{B1D31143-8668-475D-91EF-771E305D5AD5}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JTbsCoreLoadStat): JTbsCoreLoadStat_TbsSequenceQueue; cdecl; overload;
    {class} function init(P1: JTbsCoreLoadStat; P2: Integer; P3: Integer): JTbsCoreLoadStat_TbsSequenceQueue; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue')]
  JTbsCoreLoadStat_TbsSequenceQueue = interface(JObject)
  ['{6C42C496-907D-4B87-A086-B1E84EE3B5DE}']
    { Property Methods }

    { methods }
    function length: Integer; cdecl;
    procedure add(P1: Integer); cdecl;
    function remove: Integer; cdecl;
    function element: Integer; cdecl;
    function empty: Boolean; cdecl;
    procedure clear; cdecl;
    function toString: JString; cdecl;

    { Property }
  end;

  TJTbsCoreLoadStat_TbsSequenceQueue = class(TJavaGenericImport<JTbsCoreLoadStat_TbsSequenceQueueClass, JTbsCoreLoadStat_TbsSequenceQueue>) end;

  JTbsCoreLoadStatClass = interface(JObjectClass)
  ['{21A1F2B3-1382-45E4-AD33-BA32885B4F6C}']
    { static Property Methods }
    {class} function _GetmLoadErrorCode: Integer;

    { static Methods }
    {class} function getInstance: JTbsCoreLoadStat; cdecl;

    { static Property }
    {class} property mLoadErrorCode: Integer read _GetmLoadErrorCode;
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsCoreLoadStat')]
  JTbsCoreLoadStat = interface(JObject)
  ['{A25FFC03-49F7-4CBF-823A-78A5BF90266F}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTbsCoreLoadStat = class(TJavaGenericImport<JTbsCoreLoadStatClass, JTbsCoreLoadStat>) end;

  JTbsDownloadConfig_TbsConfigKeyClass = interface(JObjectClass)
  ['{CB6A59F3-D4E5-4742-BA3C-BC751D3968C9}']
    { static Property Methods }
    {class} function _GetKEY_LAST_CHECK: JString;
    {class} function _GetKEY_LAST_DOWNLOAD_DECOUPLE_CORE: JString;
    {class} function _GetKEY_TBS_DOWNLOAD_V: JString;
    {class} function _GetKEY_NEEDDOWNLOAD: JString;
    {class} function _GetKEY_FULL_PACKAGE: JString;
    {class} function _GetKEY_TBSDOWNLOADURL: JString;
    {class} function _GetKEY_DOWNLOADURL_LIST: JString;
    {class} function _GetKEY_TBSAPKFILESIZE: JString;
    {class} function _GetKEY_TBSAPK_MD5: JString;
    {class} function _GetKEY_RESPONSECODE: JString;
    {class} function _GetKEY_DECOUPLECOREVERSION: JString;
    {class} function _GetKEY_DOWNLOADDECOUPLECORE: JString;
    {class} function _GetKEY_APP_VERSIONNAME: JString;
    {class} function _GetKEY_APP_VERSIONCODE: JString;
    {class} function _GetKEY_APP_METADATA: JString;
    {class} function _GetKEY_APP_VERSIONCODE_FOR_SWITCH: JString;
    {class} function _GetKEY_DOWNLOAD_MAXFLOW: JString;
    {class} function _GetKEY_DOWNLOAD_SUCCESS_MAX_RETRYTIMES: JString;
    {class} function _GetKEY_DOWNLOAD_SUCCESS_RETRYTIMES: JString;
    {class} function _GetKEY_DOWNLOAD_FAILED_MAX_RETRYTIMES: JString;
    {class} function _GetKEY_DOWNLOAD_FAILED_RETRYTIMES: JString;
    {class} function _GetKEY_DOWNLOAD_MIN_FREE_SPACE: JString;
    {class} function _GetKEY_DOWNLOAD_SINGLE_TIMEOUT: JString;
    {class} function _GetKEY_TBSDOWNLOAD_STARTTIME: JString;
    {class} function _GetKEY_TBSDOWNLOAD_FLOW: JString;
    {class} function _GetKEY_DEVICE_CPUABI: JString;
    {class} function _GetKEY_IS_OVERSEA: JString;
    {class} function _GetKEY_RETRY_INTERVAL: JString;
    {class} function _GetKEY_DESkEY_TOKEN: JString;
    {class} function _GetKEY_DOWNLOAD_INTERRUPT_CODE: JString;
    {class} function _GetKEY_DOWNLOAD_INTERRUPT_CODE_REASON: JString;
    {class} function _GetKEY_INSTALL_INTERRUPT_CODE: JString;
    {class} function _GetKEY_DOWNLOAD_INTERRUPT_TIME: JString;
    {class} function _GetKEY_LAST_THIRDAPP_SENDREQUEST_COREVERSION: JString;
    {class} function _GetKEY_USE_BACKUP_VERSION: JString;
    {class} function _GetKEY_SWITCH_BACKUPCORE_ENABLE: JString;
    {class} function _GetKEY_BACKUPCORE_DELFILELIST: JString;
    {class} function _GetKEY_STOP_PRE_OAT: JString;

    { static Methods }

    { static Property }
    {class} property KEY_LAST_CHECK: JString read _GetKEY_LAST_CHECK;
    {class} property KEY_LAST_DOWNLOAD_DECOUPLE_CORE: JString read _GetKEY_LAST_DOWNLOAD_DECOUPLE_CORE;
    {class} property KEY_TBS_DOWNLOAD_V: JString read _GetKEY_TBS_DOWNLOAD_V;
    {class} property KEY_NEEDDOWNLOAD: JString read _GetKEY_NEEDDOWNLOAD;
    {class} property KEY_FULL_PACKAGE: JString read _GetKEY_FULL_PACKAGE;
    {class} property KEY_TBSDOWNLOADURL: JString read _GetKEY_TBSDOWNLOADURL;
    {class} property KEY_DOWNLOADURL_LIST: JString read _GetKEY_DOWNLOADURL_LIST;
    {class} property KEY_TBSAPKFILESIZE: JString read _GetKEY_TBSAPKFILESIZE;
    {class} property KEY_TBSAPK_MD5: JString read _GetKEY_TBSAPK_MD5;
    {class} property KEY_RESPONSECODE: JString read _GetKEY_RESPONSECODE;
    {class} property KEY_DECOUPLECOREVERSION: JString read _GetKEY_DECOUPLECOREVERSION;
    {class} property KEY_DOWNLOADDECOUPLECORE: JString read _GetKEY_DOWNLOADDECOUPLECORE;
    {class} property KEY_APP_VERSIONNAME: JString read _GetKEY_APP_VERSIONNAME;
    {class} property KEY_APP_VERSIONCODE: JString read _GetKEY_APP_VERSIONCODE;
    {class} property KEY_APP_METADATA: JString read _GetKEY_APP_METADATA;
    {class} property KEY_APP_VERSIONCODE_FOR_SWITCH: JString read _GetKEY_APP_VERSIONCODE_FOR_SWITCH;
    {class} property KEY_DOWNLOAD_MAXFLOW: JString read _GetKEY_DOWNLOAD_MAXFLOW;
    {class} property KEY_DOWNLOAD_SUCCESS_MAX_RETRYTIMES: JString read _GetKEY_DOWNLOAD_SUCCESS_MAX_RETRYTIMES;
    {class} property KEY_DOWNLOAD_SUCCESS_RETRYTIMES: JString read _GetKEY_DOWNLOAD_SUCCESS_RETRYTIMES;
    {class} property KEY_DOWNLOAD_FAILED_MAX_RETRYTIMES: JString read _GetKEY_DOWNLOAD_FAILED_MAX_RETRYTIMES;
    {class} property KEY_DOWNLOAD_FAILED_RETRYTIMES: JString read _GetKEY_DOWNLOAD_FAILED_RETRYTIMES;
    {class} property KEY_DOWNLOAD_MIN_FREE_SPACE: JString read _GetKEY_DOWNLOAD_MIN_FREE_SPACE;
    {class} property KEY_DOWNLOAD_SINGLE_TIMEOUT: JString read _GetKEY_DOWNLOAD_SINGLE_TIMEOUT;
    {class} property KEY_TBSDOWNLOAD_STARTTIME: JString read _GetKEY_TBSDOWNLOAD_STARTTIME;
    {class} property KEY_TBSDOWNLOAD_FLOW: JString read _GetKEY_TBSDOWNLOAD_FLOW;
    {class} property KEY_DEVICE_CPUABI: JString read _GetKEY_DEVICE_CPUABI;
    {class} property KEY_IS_OVERSEA: JString read _GetKEY_IS_OVERSEA;
    {class} property KEY_RETRY_INTERVAL: JString read _GetKEY_RETRY_INTERVAL;
    {class} property KEY_DESkEY_TOKEN: JString read _GetKEY_DESkEY_TOKEN;
    {class} property KEY_DOWNLOAD_INTERRUPT_CODE: JString read _GetKEY_DOWNLOAD_INTERRUPT_CODE;
    {class} property KEY_DOWNLOAD_INTERRUPT_CODE_REASON: JString read _GetKEY_DOWNLOAD_INTERRUPT_CODE_REASON;
    {class} property KEY_INSTALL_INTERRUPT_CODE: JString read _GetKEY_INSTALL_INTERRUPT_CODE;
    {class} property KEY_DOWNLOAD_INTERRUPT_TIME: JString read _GetKEY_DOWNLOAD_INTERRUPT_TIME;
    {class} property KEY_LAST_THIRDAPP_SENDREQUEST_COREVERSION: JString read _GetKEY_LAST_THIRDAPP_SENDREQUEST_COREVERSION;
    {class} property KEY_USE_BACKUP_VERSION: JString read _GetKEY_USE_BACKUP_VERSION;
    {class} property KEY_SWITCH_BACKUPCORE_ENABLE: JString read _GetKEY_SWITCH_BACKUPCORE_ENABLE;
    {class} property KEY_BACKUPCORE_DELFILELIST: JString read _GetKEY_BACKUPCORE_DELFILELIST;
    {class} property KEY_STOP_PRE_OAT: JString read _GetKEY_STOP_PRE_OAT;
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsDownloadConfig$TbsConfigKey')]
  JTbsDownloadConfig_TbsConfigKey = interface(IJavaInstance)
  ['{234952D6-CD6B-44E3-9901-159DC5F0C49E}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTbsDownloadConfig_TbsConfigKey = class(TJavaGenericImport<JTbsDownloadConfig_TbsConfigKeyClass, JTbsDownloadConfig_TbsConfigKey>) end;

  JTbsDownloadConfigClass = interface(JObjectClass)
  ['{B97150EF-2408-45C0-A308-D139A9AB3202}']
    { static Property Methods }
    {class} function _GetERROR_REPORTED: Integer;
    {class} function _GetERROR_NONE: Integer;
    {class} function _GetERROR_DOWNLOAD: Integer;
    {class} function _GetERROR_VERIFY: Integer;
    {class} function _GetERROR_UNZIP: Integer;
    {class} function _GetERROR_INSTALL: Integer;
    {class} function _GetERROR_LOAD: Integer;
    {class} function _GetCMD_ID_FILE_UPLOAD: Integer;
    {class} function _GetCMD_ID_DOWNLOAD_FILE: Integer;
    {class} function _GetDEFAULT_RETRY_INTERVAL_SEC: Int64;

    { static Methods }
    {class} function getInstance(P1: JContext): JTbsDownloadConfig; cdecl; overload;
    {class} function getInstance: JTbsDownloadConfig; cdecl; overload;

    { static Property }
    {class} property ERROR_REPORTED: Integer read _GetERROR_REPORTED;
    {class} property ERROR_NONE: Integer read _GetERROR_NONE;
    {class} property ERROR_DOWNLOAD: Integer read _GetERROR_DOWNLOAD;
    {class} property ERROR_VERIFY: Integer read _GetERROR_VERIFY;
    {class} property ERROR_UNZIP: Integer read _GetERROR_UNZIP;
    {class} property ERROR_INSTALL: Integer read _GetERROR_INSTALL;
    {class} property ERROR_LOAD: Integer read _GetERROR_LOAD;
    {class} property CMD_ID_FILE_UPLOAD: Integer read _GetCMD_ID_FILE_UPLOAD;
    {class} property CMD_ID_DOWNLOAD_FILE: Integer read _GetCMD_ID_DOWNLOAD_FILE;
    {class} property DEFAULT_RETRY_INTERVAL_SEC: Int64 read _GetDEFAULT_RETRY_INTERVAL_SEC;
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsDownloadConfig')]
  JTbsDownloadConfig = interface(JObject)
  ['{7C407E48-87E8-4EFA-9C02-67F073D8997B}']
    { Property Methods }
    function _GetmPreferences: JSharedPreferences;
    procedure _SetmPreferences(amPreferences: JSharedPreferences);

    { methods }
    function getDownloadMaxflow: Int64; cdecl;
    function getRetryInterval: Int64; cdecl;
    function getDownloadMinFreeSpace: Int64; cdecl;
    function getDownloadSuccessMaxRetrytimes: Integer; cdecl;
    function getDownloadFailedMaxRetrytimes: Integer; cdecl;
    procedure setDownloadInterruptCode(P1: Integer); cdecl;
    function getDownloadInterruptCode: Integer; cdecl;
    function getDownloadSingleTimeout: Int64; cdecl;
    function isOverSea: Boolean; cdecl;
    procedure commit; cdecl;
    procedure clear; cdecl;
    procedure setInstallInterruptCode(P1: Integer); cdecl;

    { Property }
    property mPreferences: JSharedPreferences read _GetmPreferences write _SetmPreferences;
  end;

  TJTbsDownloadConfig = class(TJavaGenericImport<JTbsDownloadConfigClass, JTbsDownloadConfig>) end;

  JTbsDownloader_TbsDownloaderCallbackClass = interface(JObjectClass)
  ['{30B6A975-7E3F-4D0C-B8F2-4098309831B6}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback')]
  JTbsDownloader_TbsDownloaderCallback = interface(IJavaInstance)
  ['{E777A4B5-BD3F-499D-8172-718A5F8D9188}']
    { Property Methods }

    { methods }
    procedure onNeedDownloadFinish(P1: Boolean; P2: Integer); cdecl;

    { Property }
  end;

  TJTbsDownloader_TbsDownloaderCallback = class(TJavaGenericImport<JTbsDownloader_TbsDownloaderCallbackClass, JTbsDownloader_TbsDownloaderCallback>) end;

  JTbsDownloaderClass = interface(JObjectClass)
  ['{1C837191-E49C-481B-91E3-BFA8928AC0C4}']
    { static Property Methods }
    {class} function _GetLOGTAG: JString;
    {class} function _GetDEBUG_DISABLE_DOWNLOAD: Boolean;
    {class} function _GetDOWNLOAD_OVERSEA_TBS: Boolean;

    { static Methods }
    {class} function init: JTbsDownloader; cdecl;
//    {class} function getsTbsHandlerThread: JHandlerThread; cdecl;
    {class} function needSendRequest(P1: JContext; P2: Boolean): Boolean; cdecl;
    {class} function needDownload(P1: JContext; P2: Boolean): Boolean; cdecl; overload;
    {class} function needDownload(P1: JContext; P2: Boolean; P3: Boolean; P4: JTbsDownloader_TbsDownloaderCallback): Boolean; cdecl; overload;
    {class} procedure startDownload(P1: JContext); cdecl; overload;
    {class} procedure startDownload(P1: JContext; P2: Boolean); cdecl; overload;
    {class} function getCoreShareDecoupleCoreVersion: Integer; cdecl;
    {class} function startDecoupleCoreIfNeeded: Boolean; cdecl;
    {class} procedure stopDownload; cdecl;
    {class} function isDownloading: Boolean; cdecl;
    {class} function isDownloadForeground: Boolean; cdecl;
    {class} function getOverSea(P1: JContext): Boolean; cdecl;

    { static Property }
    {class} property LOGTAG: JString read _GetLOGTAG;
    {class} property DEBUG_DISABLE_DOWNLOAD: Boolean read _GetDEBUG_DISABLE_DOWNLOAD;
    {class} property DOWNLOAD_OVERSEA_TBS: Boolean read _GetDOWNLOAD_OVERSEA_TBS;
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsDownloader')]
  JTbsDownloader = interface(JObject)
  ['{B829FB22-80A8-4646-91E8-667C88C6C862}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTbsDownloader = class(TJavaGenericImport<JTbsDownloaderClass, JTbsDownloader>) end;

  JTbsLinuxToolsJniClass = interface(JObjectClass)
  ['{91A83392-BDFC-414D-9309-015810276517}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext): JTbsLinuxToolsJni; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsLinuxToolsJni')]
  JTbsLinuxToolsJni = interface(JObject)
  ['{0CD22B26-C1D9-47A8-86E6-53751AB82589}']
    { Property Methods }

    { methods }
    function a(P1: JString; P2: JString): Integer; cdecl;

    { Property }
  end;

  TJTbsLinuxToolsJni = class(TJavaGenericImport<JTbsLinuxToolsJniClass, JTbsLinuxToolsJni>) end;

  JTbsListener_ErrorCodeClass = interface(JObjectClass)
  ['{5CF9B8A5-6D22-4543-9C12-D74C5124B346}']
    { static Property Methods }
    {class} function _GetERROR_CODE_DOWNLOAD_BASE: Integer;
    {class} function _GetERROR_CODE_INSTALL_BASE: Integer;
    {class} function _GetERROR_CODE_LOAD_BASE: Integer;
    {class} function _GetINFO_CODE_BASE: Integer;
    {class} function _GetINFO_CODE_MINIQB: Integer;
    {class} function _GetDOWNLOAD_SUCCESS: Integer;
    {class} function _GetNETWORK_UNAVAILABLE: Integer;
    {class} function _GetSERVER_ERROR: Integer;
    {class} function _GetREAD_RESPONSE_ERROR: Integer;
    {class} function _GetWRITE_DISK_ERROR: Integer;
    {class} function _GetDISK_FULL: Integer;
    {class} function _GetFILE_DELETED: Integer;
    {class} function _GetUNKNOWN_ERROR: Integer;
    {class} function _GetVERIFY_ERROR: Integer;
    {class} function _GetFILE_RENAME_ERROR: Integer;
    {class} function _GetNONEEDTODOWN_ERROR: Integer;
    {class} function _GetNETWORK_NOT_WIFI_ERROR: Integer;
    {class} function _GetDOWNLOAD_OVER_FLOW: Integer;
    {class} function _GetDOWNLOAD_FILE_CONTENTLENGTH_NOT_MATCH: Integer;
    {class} function _GetDOWNLOAD_HAS_LOCAL_TBS_ERROR: Integer;
    {class} function _GetTHREAD_INIT_ERROR: Integer;
    {class} function _GetDOWNLOAD_HAS_COPY_TBS_ERROR: Integer;
    {class} function _GetDOWNLOAD_RETRYTIMES302_EXCEED: Integer;
    {class} function _GetDOWNLOAD_REDIRECT_EMPTY: Integer;
    {class} function _GetDOWNLOAD_THROWABLE: Integer;
    {class} function _GetDOWNLOAD_INSTALL_SUCCESS: Integer;
    {class} function _GetEXCEED_UNZIP_RETRY_NUM: Integer;
    {class} function _GetAPK_PATH_ERROR: Integer;
    {class} function _GetAPK_VERSION_ERROR: Integer;
    {class} function _GetAPK_INVALID: Integer;
    {class} function _GetUNZIP_DIR_ERROR: Integer;
    {class} function _GetUNZIP_IO_ERROR: Integer;
    {class} function _GetUNZIP_OTHER_ERROR: Integer;
    {class} function _GetEXCEED_DEXOPT_RETRY_NUM: Integer;
    {class} function _GetDEXOPT_EXCEPTION: Integer;
    {class} function _GetROM_NOT_ENOUGH: Integer;
    {class} function _GetEXCEED_COPY_RETRY_NUM: Integer;
    {class} function _GetCOPY_FAIL: Integer;
    {class} function _GetCOPY_SRCDIR_ERROR: Integer;
    {class} function _GetCOPY_TMPDIR_ERROR: Integer;
    {class} function _GetCOPY_EXCEPTION: Integer;
    {class} function _GetINCR_UPDATE_ERROR: Integer;
    {class} function _GetINCR_UPDATE_FAIL: Integer;
    {class} function _GetINCR_UPDATE_EXCEPTION: Integer;
    {class} function _GetRENAME_EXCEPTION: Integer;
    {class} function _GetCOPY_INSTALL_SUCCESS: Integer;
    {class} function _GetINCRUPDATE_INSTALL_SUCCESS: Integer;
    {class} function _GetUNLZMA_FAIURE: Integer;
    {class} function _GetEXCEED_LZMA_RETRY_NUM: Integer;
    {class} function _GetEXCEED_INCR_UPDATE: Integer;
    {class} function _GetCREATE_TEMP_CONF_ERROR: Integer;
    {class} function _GetDEXOAT_EXCEPTION: Integer;
    {class} function _GetHOST_CONTEXT_IS_NULL: Integer;
    {class} function _GetERROR_UNMATCH_TBSCORE_VER_THIRDPARTY: Integer;
    {class} function _GetERROR_UNMATCH_TBSCORE_VER: Integer;
    {class} function _GetERROR_HOST_UNAVAILABLE: Integer;
    {class} function _GetTHROWABLE_QBSDK_INIT: Integer;
    {class} function _GetERROR_CANLOADX5_RETURN_FALSE: Integer;
    {class} function _GetERROR_CANLOADX5_RETURN_NULL: Integer;
    {class} function _GetERROR_TBSCORE_SHARE_DIR: Integer;
    {class} function _GetERROR_CANLOADVIDEO_RETURN_FALSE: Integer;
    {class} function _GetERROR_CANLOADVIDEO_RETURN_NULL: Integer;
    {class} function _GetERROR_QBSDK_INIT_ISSUPPORT: Integer;
    {class} function _GetERROR_QBSDK_INIT_CANLOADX5: Integer;
    {class} function _GetTHROWABLE_INITX5CORE: Integer;
    {class} function _GetTEST_THROWABLE_IS_NULL: Integer;
    {class} function _GetTEST_THROWABLE_ISNOT_NULL: Integer;
    {class} function _GetTHROWABLE_INITTESRUNTIMEENVIRONMENT: Integer;
    {class} function _GetERROR_GETSTRINGARRAY_JARFILE: Integer;
    {class} function _GetERROR_QBSDK_INIT_ERROR_RET_TYPE_NOT_BUNDLE: Integer;
    {class} function _GetERROR_QBSDK_INIT_ERROR_EMPTY_BUNDLE: Integer;
    {class} function _GetINFO_FORCE_SYSTEM_WEBVIEW_INNER: Integer;
    {class} function _GetINFO_FORCE_SYSTEM_WEBVIEW_OUTER: Integer;
    {class} function _GetINFO_MISS_SDKEXTENSION_JAR: Integer;
    {class} function _GetINFO_DISABLE_X5: Integer;
    {class} function _GetINFO_CAN_NOT_LOAD_TBS: Integer;
    {class} function _GetINFO_MISS_SDKEXTENSION_JAR_OLD: Integer;
    {class} function _GetINFO_CAN_NOT_LOAD_X5: Integer;
    {class} function _GetINFO_CAN_NOT_DISABLED_BY_CRASH: Integer;
    {class} function _GetINFO_CAN_NOT_USE_X5_TBS_AVAILABLE: Integer;
    {class} function _GetINFO_CAN_NOT_USE_X5_TBS_NOTAVAILABLE: Integer;
    {class} function _GetINFO_CAN_NOT_USE_X5_FINAL_REASON: Integer;
    {class} function _GetINFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX: Integer;
    {class} function _GetINFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX: Integer;
    {class} function _GetINFO_SDKINIT_IS_SYS_FORCED: Integer;
    {class} function _GetINFO_INFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX_WITH_CORE: Integer;
    {class} function _GetINFO_INFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX_WITHOUT_CORE: Integer;
    {class} function _GetINFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX_WITH_CORE: Integer;
    {class} function _GetINFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX_WITHOUT_CORE: Integer;
    {class} function _GetINFO_INITX5_FALSE_DEFAULT: Integer;
    {class} function _GetINFO_USE_BACKUP_FILE_INSTALL_BY_SERVER: Integer;
    {class} function _GetINFO_TEMP_CORE_EXIST_CONF_ERROR: Integer;
    {class} function _GetINFO_CORE_EXIST_NOT_LOAD: Integer;
    {class} function _GetINFO_CODE_MINIQB_STARTMINIQBTOLOADURL_COUNTS: Integer;
    {class} function _GetINFO_CODE_MINIQB_STARTMINIQBTOLOADURL_ISNOTX5CORE: Integer;
    {class} function _GetINFO_CODE_MINIQB_STARTMINIQBTOLOADURL_SUCCESS: Integer;
    {class} function _GetINFO_CODE_MINIQB_STARTMINIQBTOLOADURL_FAILED: Integer;
    {class} function _GetINFO_CODE_FILEREADER_OPENFILEREADER_COUNTS: Integer;
    {class} function _GetINFO_CODE_FILEREADER_OPENFILEREADER_APKFILE: Integer;
    {class} function _GetINFO_CODE_FILEREADER_OPENFILEREADER_NOTSUPPORT: Integer;
    {class} function _GetINFO_CODE_FILEREADER_OPENFILEREADER_OPENINQB: Integer;
    {class} function _GetINFO_CODE_FILEREADER_OPENFILEREADER_FILEPATHISNULL: Integer;
    {class} function _GetINFO_CODE_FILEREADER_OPENFILEREADER_MINIQBSUCCESS: Integer;
    {class} function _GetINFO_CODE_FILEREADER_OPENFILEREADER_MINIQBFAILED: Integer;

    { static Methods }

    { static Property }
    {class} property ERROR_CODE_DOWNLOAD_BASE: Integer read _GetERROR_CODE_DOWNLOAD_BASE;
    {class} property ERROR_CODE_INSTALL_BASE: Integer read _GetERROR_CODE_INSTALL_BASE;
    {class} property ERROR_CODE_LOAD_BASE: Integer read _GetERROR_CODE_LOAD_BASE;
    {class} property INFO_CODE_BASE: Integer read _GetINFO_CODE_BASE;
    {class} property INFO_CODE_MINIQB: Integer read _GetINFO_CODE_MINIQB;
    {class} property DOWNLOAD_SUCCESS: Integer read _GetDOWNLOAD_SUCCESS;
    {class} property NETWORK_UNAVAILABLE: Integer read _GetNETWORK_UNAVAILABLE;
    {class} property SERVER_ERROR: Integer read _GetSERVER_ERROR;
    {class} property READ_RESPONSE_ERROR: Integer read _GetREAD_RESPONSE_ERROR;
    {class} property WRITE_DISK_ERROR: Integer read _GetWRITE_DISK_ERROR;
    {class} property DISK_FULL: Integer read _GetDISK_FULL;
    {class} property FILE_DELETED: Integer read _GetFILE_DELETED;
    {class} property UNKNOWN_ERROR: Integer read _GetUNKNOWN_ERROR;
    {class} property VERIFY_ERROR: Integer read _GetVERIFY_ERROR;
    {class} property FILE_RENAME_ERROR: Integer read _GetFILE_RENAME_ERROR;
    {class} property NONEEDTODOWN_ERROR: Integer read _GetNONEEDTODOWN_ERROR;
    {class} property NETWORK_NOT_WIFI_ERROR: Integer read _GetNETWORK_NOT_WIFI_ERROR;
    {class} property DOWNLOAD_OVER_FLOW: Integer read _GetDOWNLOAD_OVER_FLOW;
    {class} property DOWNLOAD_FILE_CONTENTLENGTH_NOT_MATCH: Integer read _GetDOWNLOAD_FILE_CONTENTLENGTH_NOT_MATCH;
    {class} property DOWNLOAD_HAS_LOCAL_TBS_ERROR: Integer read _GetDOWNLOAD_HAS_LOCAL_TBS_ERROR;
    {class} property THREAD_INIT_ERROR: Integer read _GetTHREAD_INIT_ERROR;
    {class} property DOWNLOAD_HAS_COPY_TBS_ERROR: Integer read _GetDOWNLOAD_HAS_COPY_TBS_ERROR;
    {class} property DOWNLOAD_RETRYTIMES302_EXCEED: Integer read _GetDOWNLOAD_RETRYTIMES302_EXCEED;
    {class} property DOWNLOAD_REDIRECT_EMPTY: Integer read _GetDOWNLOAD_REDIRECT_EMPTY;
    {class} property DOWNLOAD_THROWABLE: Integer read _GetDOWNLOAD_THROWABLE;
    {class} property DOWNLOAD_INSTALL_SUCCESS: Integer read _GetDOWNLOAD_INSTALL_SUCCESS;
    {class} property EXCEED_UNZIP_RETRY_NUM: Integer read _GetEXCEED_UNZIP_RETRY_NUM;
    {class} property APK_PATH_ERROR: Integer read _GetAPK_PATH_ERROR;
    {class} property APK_VERSION_ERROR: Integer read _GetAPK_VERSION_ERROR;
    {class} property APK_INVALID: Integer read _GetAPK_INVALID;
    {class} property UNZIP_DIR_ERROR: Integer read _GetUNZIP_DIR_ERROR;
    {class} property UNZIP_IO_ERROR: Integer read _GetUNZIP_IO_ERROR;
    {class} property UNZIP_OTHER_ERROR: Integer read _GetUNZIP_OTHER_ERROR;
    {class} property EXCEED_DEXOPT_RETRY_NUM: Integer read _GetEXCEED_DEXOPT_RETRY_NUM;
    {class} property DEXOPT_EXCEPTION: Integer read _GetDEXOPT_EXCEPTION;
    {class} property ROM_NOT_ENOUGH: Integer read _GetROM_NOT_ENOUGH;
    {class} property EXCEED_COPY_RETRY_NUM: Integer read _GetEXCEED_COPY_RETRY_NUM;
    {class} property COPY_FAIL: Integer read _GetCOPY_FAIL;
    {class} property COPY_SRCDIR_ERROR: Integer read _GetCOPY_SRCDIR_ERROR;
    {class} property COPY_TMPDIR_ERROR: Integer read _GetCOPY_TMPDIR_ERROR;
    {class} property COPY_EXCEPTION: Integer read _GetCOPY_EXCEPTION;
    {class} property INCR_UPDATE_ERROR: Integer read _GetINCR_UPDATE_ERROR;
    {class} property INCR_UPDATE_FAIL: Integer read _GetINCR_UPDATE_FAIL;
    {class} property INCR_UPDATE_EXCEPTION: Integer read _GetINCR_UPDATE_EXCEPTION;
    {class} property RENAME_EXCEPTION: Integer read _GetRENAME_EXCEPTION;
    {class} property COPY_INSTALL_SUCCESS: Integer read _GetCOPY_INSTALL_SUCCESS;
    {class} property INCRUPDATE_INSTALL_SUCCESS: Integer read _GetINCRUPDATE_INSTALL_SUCCESS;
    {class} property UNLZMA_FAIURE: Integer read _GetUNLZMA_FAIURE;
    {class} property EXCEED_LZMA_RETRY_NUM: Integer read _GetEXCEED_LZMA_RETRY_NUM;
    {class} property EXCEED_INCR_UPDATE: Integer read _GetEXCEED_INCR_UPDATE;
    {class} property CREATE_TEMP_CONF_ERROR: Integer read _GetCREATE_TEMP_CONF_ERROR;
    {class} property DEXOAT_EXCEPTION: Integer read _GetDEXOAT_EXCEPTION;
    {class} property HOST_CONTEXT_IS_NULL: Integer read _GetHOST_CONTEXT_IS_NULL;
    {class} property ERROR_UNMATCH_TBSCORE_VER_THIRDPARTY: Integer read _GetERROR_UNMATCH_TBSCORE_VER_THIRDPARTY;
    {class} property ERROR_UNMATCH_TBSCORE_VER: Integer read _GetERROR_UNMATCH_TBSCORE_VER;
    {class} property ERROR_HOST_UNAVAILABLE: Integer read _GetERROR_HOST_UNAVAILABLE;
    {class} property THROWABLE_QBSDK_INIT: Integer read _GetTHROWABLE_QBSDK_INIT;
    {class} property ERROR_CANLOADX5_RETURN_FALSE: Integer read _GetERROR_CANLOADX5_RETURN_FALSE;
    {class} property ERROR_CANLOADX5_RETURN_NULL: Integer read _GetERROR_CANLOADX5_RETURN_NULL;
    {class} property ERROR_TBSCORE_SHARE_DIR: Integer read _GetERROR_TBSCORE_SHARE_DIR;
    {class} property ERROR_CANLOADVIDEO_RETURN_FALSE: Integer read _GetERROR_CANLOADVIDEO_RETURN_FALSE;
    {class} property ERROR_CANLOADVIDEO_RETURN_NULL: Integer read _GetERROR_CANLOADVIDEO_RETURN_NULL;
    {class} property ERROR_QBSDK_INIT_ISSUPPORT: Integer read _GetERROR_QBSDK_INIT_ISSUPPORT;
    {class} property ERROR_QBSDK_INIT_CANLOADX5: Integer read _GetERROR_QBSDK_INIT_CANLOADX5;
    {class} property THROWABLE_INITX5CORE: Integer read _GetTHROWABLE_INITX5CORE;
    {class} property TEST_THROWABLE_IS_NULL: Integer read _GetTEST_THROWABLE_IS_NULL;
    {class} property TEST_THROWABLE_ISNOT_NULL: Integer read _GetTEST_THROWABLE_ISNOT_NULL;
    {class} property THROWABLE_INITTESRUNTIMEENVIRONMENT: Integer read _GetTHROWABLE_INITTESRUNTIMEENVIRONMENT;
    {class} property ERROR_GETSTRINGARRAY_JARFILE: Integer read _GetERROR_GETSTRINGARRAY_JARFILE;
    {class} property ERROR_QBSDK_INIT_ERROR_RET_TYPE_NOT_BUNDLE: Integer read _GetERROR_QBSDK_INIT_ERROR_RET_TYPE_NOT_BUNDLE;
    {class} property ERROR_QBSDK_INIT_ERROR_EMPTY_BUNDLE: Integer read _GetERROR_QBSDK_INIT_ERROR_EMPTY_BUNDLE;
    {class} property INFO_FORCE_SYSTEM_WEBVIEW_INNER: Integer read _GetINFO_FORCE_SYSTEM_WEBVIEW_INNER;
    {class} property INFO_FORCE_SYSTEM_WEBVIEW_OUTER: Integer read _GetINFO_FORCE_SYSTEM_WEBVIEW_OUTER;
    {class} property INFO_MISS_SDKEXTENSION_JAR: Integer read _GetINFO_MISS_SDKEXTENSION_JAR;
    {class} property INFO_DISABLE_X5: Integer read _GetINFO_DISABLE_X5;
    {class} property INFO_CAN_NOT_LOAD_TBS: Integer read _GetINFO_CAN_NOT_LOAD_TBS;
    {class} property INFO_MISS_SDKEXTENSION_JAR_OLD: Integer read _GetINFO_MISS_SDKEXTENSION_JAR_OLD;
    {class} property INFO_CAN_NOT_LOAD_X5: Integer read _GetINFO_CAN_NOT_LOAD_X5;
    {class} property INFO_CAN_NOT_DISABLED_BY_CRASH: Integer read _GetINFO_CAN_NOT_DISABLED_BY_CRASH;
    {class} property INFO_CAN_NOT_USE_X5_TBS_AVAILABLE: Integer read _GetINFO_CAN_NOT_USE_X5_TBS_AVAILABLE;
    {class} property INFO_CAN_NOT_USE_X5_TBS_NOTAVAILABLE: Integer read _GetINFO_CAN_NOT_USE_X5_TBS_NOTAVAILABLE;
    {class} property INFO_CAN_NOT_USE_X5_FINAL_REASON: Integer read _GetINFO_CAN_NOT_USE_X5_FINAL_REASON;
    {class} property INFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX: Integer read _GetINFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX;
    {class} property INFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX: Integer read _GetINFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX;
    {class} property INFO_SDKINIT_IS_SYS_FORCED: Integer read _GetINFO_SDKINIT_IS_SYS_FORCED;
    {class} property INFO_INFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX_WITH_CORE: Integer read _GetINFO_INFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX_WITH_CORE;
    {class} property INFO_INFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX_WITHOUT_CORE: Integer read _GetINFO_INFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX_WITHOUT_CORE;
    {class} property INFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX_WITH_CORE: Integer read _GetINFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX_WITH_CORE;
    {class} property INFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX_WITHOUT_CORE: Integer read _GetINFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX_WITHOUT_CORE;
    {class} property INFO_INITX5_FALSE_DEFAULT: Integer read _GetINFO_INITX5_FALSE_DEFAULT;
    {class} property INFO_USE_BACKUP_FILE_INSTALL_BY_SERVER: Integer read _GetINFO_USE_BACKUP_FILE_INSTALL_BY_SERVER;
    {class} property INFO_TEMP_CORE_EXIST_CONF_ERROR: Integer read _GetINFO_TEMP_CORE_EXIST_CONF_ERROR;
    {class} property INFO_CORE_EXIST_NOT_LOAD: Integer read _GetINFO_CORE_EXIST_NOT_LOAD;
    {class} property INFO_CODE_MINIQB_STARTMINIQBTOLOADURL_COUNTS: Integer read _GetINFO_CODE_MINIQB_STARTMINIQBTOLOADURL_COUNTS;
    {class} property INFO_CODE_MINIQB_STARTMINIQBTOLOADURL_ISNOTX5CORE: Integer read _GetINFO_CODE_MINIQB_STARTMINIQBTOLOADURL_ISNOTX5CORE;
    {class} property INFO_CODE_MINIQB_STARTMINIQBTOLOADURL_SUCCESS: Integer read _GetINFO_CODE_MINIQB_STARTMINIQBTOLOADURL_SUCCESS;
    {class} property INFO_CODE_MINIQB_STARTMINIQBTOLOADURL_FAILED: Integer read _GetINFO_CODE_MINIQB_STARTMINIQBTOLOADURL_FAILED;
    {class} property INFO_CODE_FILEREADER_OPENFILEREADER_COUNTS: Integer read _GetINFO_CODE_FILEREADER_OPENFILEREADER_COUNTS;
    {class} property INFO_CODE_FILEREADER_OPENFILEREADER_APKFILE: Integer read _GetINFO_CODE_FILEREADER_OPENFILEREADER_APKFILE;
    {class} property INFO_CODE_FILEREADER_OPENFILEREADER_NOTSUPPORT: Integer read _GetINFO_CODE_FILEREADER_OPENFILEREADER_NOTSUPPORT;
    {class} property INFO_CODE_FILEREADER_OPENFILEREADER_OPENINQB: Integer read _GetINFO_CODE_FILEREADER_OPENFILEREADER_OPENINQB;
    {class} property INFO_CODE_FILEREADER_OPENFILEREADER_FILEPATHISNULL: Integer read _GetINFO_CODE_FILEREADER_OPENFILEREADER_FILEPATHISNULL;
    {class} property INFO_CODE_FILEREADER_OPENFILEREADER_MINIQBSUCCESS: Integer read _GetINFO_CODE_FILEREADER_OPENFILEREADER_MINIQBSUCCESS;
    {class} property INFO_CODE_FILEREADER_OPENFILEREADER_MINIQBFAILED: Integer read _GetINFO_CODE_FILEREADER_OPENFILEREADER_MINIQBFAILED;
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsListener$ErrorCode')]
  JTbsListener_ErrorCode = interface(IJavaInstance)
  ['{9A54D7B7-EAD3-4499-A1B9-D9F77B7B4B3E}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTbsListener_ErrorCode = class(TJavaGenericImport<JTbsListener_ErrorCodeClass, JTbsListener_ErrorCode>) end;

  JTbsListenerClass = interface(JObjectClass)
  ['{022EBC32-A1C4-45B2-AA2B-06E6F67A43D8}']
    { static Property Methods }
    {class} function _Gettag_load_error: JString;

    { static Methods }

    { static Property }
    {class} property tag_load_error: JString read _Gettag_load_error;
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsListener')]
  JTbsListener = interface(IJavaInstance)
  ['{C1343906-3671-43A2-8159-F5A9B9379E6D}']
    { Property Methods }

    { methods }
    procedure onDownloadFinish(P1: Integer); cdecl;
    procedure onInstallFinish(P1: Integer); cdecl;
    procedure onDownloadProgress(P1: Integer); cdecl;

    { Property }
  end;

  TJTbsListener = class(TJavaGenericImport<JTbsListenerClass, JTbsListener>) end;

//  JTbsLogReport_aClass = interface(JObjectClass)
//  ['{9FBF6AAD-2DF7-4E63-873B-BDD113701D11}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString; P2: JString): JTbsLogReport_a; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/TbsLogReport$a')]
//  JTbsLogReport_a = interface(JObject)
//  ['{9ED45E63-2A66-44CA-8945-03E75E5F1B98}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl;
//
//    { Property }
//  end;

//  TJTbsLogReport_a = class(TJavaGenericImport<JTbsLogReport_aClass, JTbsLogReport_a>) end;

  JTbsLogReport_EventTypeClass = interface(JObjectClass)
  ['{7DEB48BD-D4FC-4B2A-BA38-CA2A1A7D7CBB}']
    { static Property Methods }
    {class} function _GetTYPE_DOWNLOAD: JTbsLogReport_EventType;
    {class} function _GetTYPE_INSTALL: JTbsLogReport_EventType;
    {class} function _GetTYPE_LOAD: JTbsLogReport_EventType;
    {class} function _GetTYPE_DOWNLOAD_DECOUPLE: JTbsLogReport_EventType;
    {class} function _GetTYPE_INSTALL_DECOUPLE: JTbsLogReport_EventType;

    { static Methods }
    {class} function values: TJavaObjectArray<JTbsLogReport_EventType>; cdecl;
    {class} function valueOf(P1: JString): JTbsLogReport_EventType; cdecl;

    { static Property }
    {class} property TYPE_DOWNLOAD: JTbsLogReport_EventType read _GetTYPE_DOWNLOAD;
    {class} property TYPE_INSTALL: JTbsLogReport_EventType read _GetTYPE_INSTALL;
    {class} property TYPE_LOAD: JTbsLogReport_EventType read _GetTYPE_LOAD;
    {class} property TYPE_DOWNLOAD_DECOUPLE: JTbsLogReport_EventType read _GetTYPE_DOWNLOAD_DECOUPLE;
    {class} property TYPE_INSTALL_DECOUPLE: JTbsLogReport_EventType read _GetTYPE_INSTALL_DECOUPLE;
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsLogReport$EventType')]
  JTbsLogReport_EventType = interface(JObject)
  ['{A8CABE83-0EB9-46E0-B1E5-A859EC9544C2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTbsLogReport_EventType = class(TJavaGenericImport<JTbsLogReport_EventTypeClass, JTbsLogReport_EventType>) end;

  JTbsLogReport_TbsLogInfoClass = interface(JObjectClass)
  ['{771F4FB5-4AD5-42CE-8970-A89E0988535F}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsLogReport$TbsLogInfo')]
  JTbsLogReport_TbsLogInfo = interface(JObject)
  ['{68F919A6-EBAD-4F6A-9168-A2448C285EFC}']
    { Property Methods }

    { methods }
    procedure resetArgs; cdecl;
    procedure setEventTime(P1: Int64); cdecl;
    procedure setDownloadUrl(P1: JString); cdecl;
    procedure setResolveIp(P1: JString); cdecl;
    procedure setHttpCode(P1: Integer); cdecl;
    procedure setPatchUpdateFlag(P1: Integer); cdecl;
    procedure setDownloadCancel(P1: Integer); cdecl;
    procedure setUnpkgFlag(P1: Integer); cdecl;
    procedure setApn(P1: JString); cdecl;
    procedure setNetworkType(P1: Integer); cdecl;
    procedure setDownFinalFlag(P1: Integer); cdecl;
    function getDownFinalFlag: Integer; cdecl;
    procedure setPkgSize(P1: Int64); cdecl;
    procedure setDownConsumeTime(P1: Int64); cdecl;
    procedure setNetworkChange(P1: Integer); cdecl;
    procedure setErrorCode(P1: Integer); cdecl;
    procedure setCheckErrorDetail(P1: JString); cdecl;
    procedure setFailDetail(P1: JString); cdecl; overload;
    procedure setFailDetail(P1: JThrowable); cdecl; overload;
    procedure setDownloadSize(P1: Int64); cdecl;

    { Property }
  end;

  TJTbsLogReport_TbsLogInfo = class(TJavaGenericImport<JTbsLogReport_TbsLogInfoClass, JTbsLogReport_TbsLogInfo>) end;

  JTbsLogReportClass = interface(JObjectClass)
  ['{D70CF9A4-0A3D-47F6-8F35-191ABC660082}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: JContext): JTbsLogReport; cdecl; overload;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsLogReport')]
  JTbsLogReport = interface(JObject)
  ['{D6314AA0-489D-4CFC-9E7E-675004C190F5}']
    { Property Methods }

    { methods }
    function a: JTbsLogReport_TbsLogInfo; cdecl; overload;
    procedure a(P1: Integer; P2: JString); cdecl; overload;
    procedure a(P1: Integer; P2: JString; P3: JTbsLogReport_EventType); cdecl; overload;
    procedure a(P1: Integer; P2: JThrowable); cdecl; overload;
    procedure b(P1: Integer; P2: JString); cdecl; overload;
    procedure b(P1: Integer; P2: JThrowable); cdecl; overload;
    procedure b; cdecl; overload;
    procedure a(P1: JTbsLogReport_EventType; P2: JTbsLogReport_TbsLogInfo); cdecl; overload;
    procedure c; cdecl;
    procedure d; cdecl;

    { Property }
  end;

  TJTbsLogReport = class(TJavaGenericImport<JTbsLogReportClass, JTbsLogReport>) end;

  JTbsReaderView_ReaderCallbackClass = interface(JObjectClass)
  ['{3D26D59B-9FF5-45BD-885D-1BF64C8D0EDE}']
    { static Property Methods }
    {class} function _GetNOTIFY_CANDISPLAY: Integer;
    {class} function _GetNOTIFY_ERRORCODE: Integer;
    {class} function _GetGET_BAR_ANIMATING: Integer;
    {class} function _GetHIDDEN_BAR: Integer;
    {class} function _GetSHOW_BAR: Integer;
    {class} function _GetCOPY_SELECT_TEXT: Integer;
    {class} function _GetSEARCH_SELECT_TEXT: Integer;
    {class} function _GetREADER_TOAST: Integer;
    {class} function _GetSHOW_DIALOG: Integer;
    {class} function _GetREADER_PDF_LIST: Integer;
    {class} function _GetREADER_PPT_PLAY_MODEL: Integer;
    {class} function _GetREADER_TXT_READING_MODEL: Integer;
    {class} function _GetINSTALL_QB: Integer;
    {class} function _GetREADER_PLUGIN_STATUS: Integer;
    {class} function _GetREADER_PLUGIN_CANLOAD: Integer;
    {class} function _GetREADER_PLUGIN_DOWNLOADING: Integer;
    {class} function _GetREADER_PLUGIN_COMMAND_FIXSCREEN: Integer;
    {class} function _GetREADER_PLUGIN_RES_FIXSCREEN_NORMAL: Integer;
    {class} function _GetREADER_PLUGIN_RES_FIXSCREEN_PRESS: Integer;
    {class} function _GetREADER_PLUGIN_COMMAND_ROTATESCREEN: Integer;
    {class} function _GetREADER_PLUGIN_RES_ROTATESCREEN_NORMAL: Integer;
    {class} function _GetREADER_PLUGIN_RES_ROTATESCREEN_PRESS: Integer;
    {class} function _GetREADER_PLUGIN_RES_PPT_GUIDE: Integer;
    {class} function _GetREADER_PLUGIN_RES_TXT_GUIDE: Integer;
    {class} function _GetREADER_PLUGIN_RES_PDF_GUIDE: Integer;
    {class} function _GetGET_BAR_ISSHOWING: Integer;
    {class} function _GetREADER_PLUGIN_SO_ERR: Integer;
    {class} function _GetREADER_SEARCH_IN_DOCUMENT: Integer;
    {class} function _GetREADER_PLUGIN_SO_INTO_START: Integer;
    {class} function _GetREADER_PLUGIN_SO_PROGRESS: Integer;
    {class} function _GetREADER_PLUGIN_RES_DOC_GUIDE: Integer;
    {class} function _GetREADER_PLUGIN_SO_VERSION: Integer;
    {class} function _GetREADER_OPEN_QQ_FILE_LIST: Integer;
    {class} function _GetREADER_PLUGIN_ACTIVITY_PAUSE: Integer;
    {class} function _GetREADER_PLUGIN_COMMAND_PPT_PLAYER: Integer;
    {class} function _GetREADER_PLUGIN_COMMAND_PDF_LIST: Integer;
    {class} function _GetREADER_PLUGIN_COMMAND_TEXT_FIND: Integer;
    {class} function _GetREADER_PLUGIN_COMMAND_TEXT_FIND_NEXT: Integer;
    {class} function _GetREADER_PLUGIN_COMMAND_TEXT_FIND_PREV: Integer;
    {class} function _GetREADER_PLUGIN_COMMAND_TEXT_FIND_CLEAR: Integer;
    {class} function _GetREADER_PLUGIN_TEXT_FIND_RESULT: Integer;

    { static Methods }

    { static Property }
    {class} property NOTIFY_CANDISPLAY: Integer read _GetNOTIFY_CANDISPLAY;
    {class} property NOTIFY_ERRORCODE: Integer read _GetNOTIFY_ERRORCODE;
    {class} property GET_BAR_ANIMATING: Integer read _GetGET_BAR_ANIMATING;
    {class} property HIDDEN_BAR: Integer read _GetHIDDEN_BAR;
    {class} property SHOW_BAR: Integer read _GetSHOW_BAR;
    {class} property COPY_SELECT_TEXT: Integer read _GetCOPY_SELECT_TEXT;
    {class} property SEARCH_SELECT_TEXT: Integer read _GetSEARCH_SELECT_TEXT;
    {class} property READER_TOAST: Integer read _GetREADER_TOAST;
    {class} property SHOW_DIALOG: Integer read _GetSHOW_DIALOG;
    {class} property READER_PDF_LIST: Integer read _GetREADER_PDF_LIST;
    {class} property READER_PPT_PLAY_MODEL: Integer read _GetREADER_PPT_PLAY_MODEL;
    {class} property READER_TXT_READING_MODEL: Integer read _GetREADER_TXT_READING_MODEL;
    {class} property INSTALL_QB: Integer read _GetINSTALL_QB;
    {class} property READER_PLUGIN_STATUS: Integer read _GetREADER_PLUGIN_STATUS;
    {class} property READER_PLUGIN_CANLOAD: Integer read _GetREADER_PLUGIN_CANLOAD;
    {class} property READER_PLUGIN_DOWNLOADING: Integer read _GetREADER_PLUGIN_DOWNLOADING;
    {class} property READER_PLUGIN_COMMAND_FIXSCREEN: Integer read _GetREADER_PLUGIN_COMMAND_FIXSCREEN;
    {class} property READER_PLUGIN_RES_FIXSCREEN_NORMAL: Integer read _GetREADER_PLUGIN_RES_FIXSCREEN_NORMAL;
    {class} property READER_PLUGIN_RES_FIXSCREEN_PRESS: Integer read _GetREADER_PLUGIN_RES_FIXSCREEN_PRESS;
    {class} property READER_PLUGIN_COMMAND_ROTATESCREEN: Integer read _GetREADER_PLUGIN_COMMAND_ROTATESCREEN;
    {class} property READER_PLUGIN_RES_ROTATESCREEN_NORMAL: Integer read _GetREADER_PLUGIN_RES_ROTATESCREEN_NORMAL;
    {class} property READER_PLUGIN_RES_ROTATESCREEN_PRESS: Integer read _GetREADER_PLUGIN_RES_ROTATESCREEN_PRESS;
    {class} property READER_PLUGIN_RES_PPT_GUIDE: Integer read _GetREADER_PLUGIN_RES_PPT_GUIDE;
    {class} property READER_PLUGIN_RES_TXT_GUIDE: Integer read _GetREADER_PLUGIN_RES_TXT_GUIDE;
    {class} property READER_PLUGIN_RES_PDF_GUIDE: Integer read _GetREADER_PLUGIN_RES_PDF_GUIDE;
    {class} property GET_BAR_ISSHOWING: Integer read _GetGET_BAR_ISSHOWING;
    {class} property READER_PLUGIN_SO_ERR: Integer read _GetREADER_PLUGIN_SO_ERR;
    {class} property READER_SEARCH_IN_DOCUMENT: Integer read _GetREADER_SEARCH_IN_DOCUMENT;
    {class} property READER_PLUGIN_SO_INTO_START: Integer read _GetREADER_PLUGIN_SO_INTO_START;
    {class} property READER_PLUGIN_SO_PROGRESS: Integer read _GetREADER_PLUGIN_SO_PROGRESS;
    {class} property READER_PLUGIN_RES_DOC_GUIDE: Integer read _GetREADER_PLUGIN_RES_DOC_GUIDE;
    {class} property READER_PLUGIN_SO_VERSION: Integer read _GetREADER_PLUGIN_SO_VERSION;
    {class} property READER_OPEN_QQ_FILE_LIST: Integer read _GetREADER_OPEN_QQ_FILE_LIST;
    {class} property READER_PLUGIN_ACTIVITY_PAUSE: Integer read _GetREADER_PLUGIN_ACTIVITY_PAUSE;
    {class} property READER_PLUGIN_COMMAND_PPT_PLAYER: Integer read _GetREADER_PLUGIN_COMMAND_PPT_PLAYER;
    {class} property READER_PLUGIN_COMMAND_PDF_LIST: Integer read _GetREADER_PLUGIN_COMMAND_PDF_LIST;
    {class} property READER_PLUGIN_COMMAND_TEXT_FIND: Integer read _GetREADER_PLUGIN_COMMAND_TEXT_FIND;
    {class} property READER_PLUGIN_COMMAND_TEXT_FIND_NEXT: Integer read _GetREADER_PLUGIN_COMMAND_TEXT_FIND_NEXT;
    {class} property READER_PLUGIN_COMMAND_TEXT_FIND_PREV: Integer read _GetREADER_PLUGIN_COMMAND_TEXT_FIND_PREV;
    {class} property READER_PLUGIN_COMMAND_TEXT_FIND_CLEAR: Integer read _GetREADER_PLUGIN_COMMAND_TEXT_FIND_CLEAR;
    {class} property READER_PLUGIN_TEXT_FIND_RESULT: Integer read _GetREADER_PLUGIN_TEXT_FIND_RESULT;
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsReaderView$ReaderCallback')]
  JTbsReaderView_ReaderCallback = interface(IJavaInstance)
  ['{C429DAC1-A0F8-4518-81AD-667A8A0561AE}']
    { Property Methods }

    { methods }
    procedure onCallBackAction(P1: JInteger; P2: JObject; P3: JObject); cdecl;

    { Property }
  end;

  TJTbsReaderView_ReaderCallback = class(TJavaGenericImport<JTbsReaderView_ReaderCallbackClass, JTbsReaderView_ReaderCallback>) end;

  JTbsReaderViewClass = interface(JObjectClass)
  ['{ED07A29A-9446-4803-B0D9-433303886B35}']
    { static Property Methods }
    {class} function _GetIS_BAR_ANIMATING: JString;
    {class} function _GetIS_BAR_SHOWING: JString;
    {class} function _GetIS_INTO_DOWNLOADING: JString;
    {class} function _GetKEY_FILE_PATH: JString;
    {class} function _GetKEY_TEMP_PATH: JString;
    {class} function _GetgReaderPackName: JString;
    {class} function _GetgReaderPackVersion: JString;
    {class} function _GetTAG: JString;
    {class} function _GetREADER_STATISTICS_COUNT_CLICK_LOADED_BTN: JString;
    {class} function _GetREADER_STATISTICS_COUNT_CANCEL_LOADED_BTN: JString;
    {class} function _GetREADER_STATISTICS_COUNT_RETRY_BTN: JString;
    {class} function _GetREADER_STATISTICS_COUNT_PPT_PLAY_BTN: JString;
    {class} function _GetREADER_STATISTICS_COUNT_PPT_INTO_DIALOG: JString;
    {class} function _GetREADER_STATISTICS_COUNT_PPT_INTO_DOWNLOAD: JString;
    {class} function _GetREADER_STATISTICS_COUNT_PPT_INTO_BROWSER: JString;
    {class} function _GetREADER_STATISTICS_COUNT_PDF_FOLDER_BTN: JString;
    {class} function _GetREADER_STATISTICS_COUNT_PDF_INTO_DIALOG: JString;
    {class} function _GetREADER_STATISTICS_COUNT_PDF_INTO_DOWNLOAD: JString;
    {class} function _GetREADER_STATISTICS_COUNT_PDF_INTO_BROWSER: JString;
    {class} function _GetREADER_STATISTICS_COUNT_TXT_NOVEL_BTN: JString;
    {class} function _GetREADER_STATISTICS_COUNT_TXT_INTO_DIALOG: JString;
    {class} function _GetREADER_STATISTICS_COUNT_TXT_INTO_DOWNLOAD: JString;
    {class} function _GetREADER_STATISTICS_COUNT_TXT_INTO_BROWSER: JString;
    {class} function _GetREADER_STATISTICS_COUNT_DOC_SEARCH_BTN: JString;
    {class} function _GetREADER_STATISTICS_COUNT_DOC_INTO_DIALOG: JString;
    {class} function _GetREADER_STATISTICS_COUNT_DOC_INTO_DOWNLOAD: JString;
    {class} function _GetREADER_STATISTICS_COUNT_DOC_INTO_BROWSER: JString;
    {class} function _GetREADER_CHANNEL_PPT_ID: Integer;
    {class} function _GetREADER_CHANNEL_PDF_ID: Integer;
    {class} function _GetREADER_CHANNEL_TXT_ID: Integer;
    {class} function _GetREADER_CHANNEL_DOC_ID: Integer;

    { static Methods }
    {class} function init(P1: JContext; P2: JTbsReaderView_ReaderCallback): JTbsReaderView; cdecl;
    {class} function isSupportExt(P1: JContext; P2: JString): Boolean; cdecl;
    {class} function getResDrawable(P1: JContext; P2: Integer): JDrawable; cdecl;
    {class} function getResString(P1: JContext; P2: Integer): JString; cdecl;

    { static Property }
    {class} property IS_BAR_ANIMATING: JString read _GetIS_BAR_ANIMATING;
    {class} property IS_BAR_SHOWING: JString read _GetIS_BAR_SHOWING;
    {class} property IS_INTO_DOWNLOADING: JString read _GetIS_INTO_DOWNLOADING;
    {class} property KEY_FILE_PATH: JString read _GetKEY_FILE_PATH;
    {class} property KEY_TEMP_PATH: JString read _GetKEY_TEMP_PATH;
    {class} property gReaderPackName: JString read _GetgReaderPackName;
    {class} property gReaderPackVersion: JString read _GetgReaderPackVersion;
    {class} property TAG: JString read _GetTAG;
    {class} property READER_STATISTICS_COUNT_CLICK_LOADED_BTN: JString read _GetREADER_STATISTICS_COUNT_CLICK_LOADED_BTN;
    {class} property READER_STATISTICS_COUNT_CANCEL_LOADED_BTN: JString read _GetREADER_STATISTICS_COUNT_CANCEL_LOADED_BTN;
    {class} property READER_STATISTICS_COUNT_RETRY_BTN: JString read _GetREADER_STATISTICS_COUNT_RETRY_BTN;
    {class} property READER_STATISTICS_COUNT_PPT_PLAY_BTN: JString read _GetREADER_STATISTICS_COUNT_PPT_PLAY_BTN;
    {class} property READER_STATISTICS_COUNT_PPT_INTO_DIALOG: JString read _GetREADER_STATISTICS_COUNT_PPT_INTO_DIALOG;
    {class} property READER_STATISTICS_COUNT_PPT_INTO_DOWNLOAD: JString read _GetREADER_STATISTICS_COUNT_PPT_INTO_DOWNLOAD;
    {class} property READER_STATISTICS_COUNT_PPT_INTO_BROWSER: JString read _GetREADER_STATISTICS_COUNT_PPT_INTO_BROWSER;
    {class} property READER_STATISTICS_COUNT_PDF_FOLDER_BTN: JString read _GetREADER_STATISTICS_COUNT_PDF_FOLDER_BTN;
    {class} property READER_STATISTICS_COUNT_PDF_INTO_DIALOG: JString read _GetREADER_STATISTICS_COUNT_PDF_INTO_DIALOG;
    {class} property READER_STATISTICS_COUNT_PDF_INTO_DOWNLOAD: JString read _GetREADER_STATISTICS_COUNT_PDF_INTO_DOWNLOAD;
    {class} property READER_STATISTICS_COUNT_PDF_INTO_BROWSER: JString read _GetREADER_STATISTICS_COUNT_PDF_INTO_BROWSER;
    {class} property READER_STATISTICS_COUNT_TXT_NOVEL_BTN: JString read _GetREADER_STATISTICS_COUNT_TXT_NOVEL_BTN;
    {class} property READER_STATISTICS_COUNT_TXT_INTO_DIALOG: JString read _GetREADER_STATISTICS_COUNT_TXT_INTO_DIALOG;
    {class} property READER_STATISTICS_COUNT_TXT_INTO_DOWNLOAD: JString read _GetREADER_STATISTICS_COUNT_TXT_INTO_DOWNLOAD;
    {class} property READER_STATISTICS_COUNT_TXT_INTO_BROWSER: JString read _GetREADER_STATISTICS_COUNT_TXT_INTO_BROWSER;
    {class} property READER_STATISTICS_COUNT_DOC_SEARCH_BTN: JString read _GetREADER_STATISTICS_COUNT_DOC_SEARCH_BTN;
    {class} property READER_STATISTICS_COUNT_DOC_INTO_DIALOG: JString read _GetREADER_STATISTICS_COUNT_DOC_INTO_DIALOG;
    {class} property READER_STATISTICS_COUNT_DOC_INTO_DOWNLOAD: JString read _GetREADER_STATISTICS_COUNT_DOC_INTO_DOWNLOAD;
    {class} property READER_STATISTICS_COUNT_DOC_INTO_BROWSER: JString read _GetREADER_STATISTICS_COUNT_DOC_INTO_BROWSER;
    {class} property READER_CHANNEL_PPT_ID: Integer read _GetREADER_CHANNEL_PPT_ID;
    {class} property READER_CHANNEL_PDF_ID: Integer read _GetREADER_CHANNEL_PDF_ID;
    {class} property READER_CHANNEL_TXT_ID: Integer read _GetREADER_CHANNEL_TXT_ID;
    {class} property READER_CHANNEL_DOC_ID: Integer read _GetREADER_CHANNEL_DOC_ID;
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsReaderView')]
  JTbsReaderView = interface(JView)//JObject)
  ['{87A1E63C-367F-43B4-B791-76B87CA28AB7}']
    { Property Methods }

    { methods }
    function preOpen(P1: JString; P2: Boolean): Boolean; cdecl;
    function downloadPlugin(P1: JString): Boolean; cdecl;
    procedure openFile(P1: JBundle); cdecl;
    procedure doCommand(P1: JInteger; P2: JObject; P3: JObject); cdecl;
    procedure onSizeChanged(P1: Integer; P2: Integer); cdecl;
    procedure onStop; cdecl;
    procedure userStatistics(P1: JString); cdecl;

    { Property }
  end;

  TJTbsReaderView = class(TJavaGenericImport<JTbsReaderViewClass, JTbsReaderView>) end;

  JTbsShareManagerClass = interface(JObjectClass)
  ['{CD45829F-3FCF-47FF-8BE9-776D78CBD2EA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTbsShareManager; cdecl;
    {class} function isThirdPartyApp(P1: JContext): Boolean; cdecl;
    {class} function getCoreProviderAppList: TJavaObjectArray<JString>; cdecl;
    {class} function getHostCoreVersions(P1: JContext): Int64; cdecl;
    {class} function getSharedTbsCoreVersion(P1: JContext; P2: JString): Integer; cdecl;
    {class} function getCoreShareDecoupleCoreVersion(P1: JContext; P2: JString): Integer; cdecl;
    {class} function getCoreDisabled: Boolean; cdecl;
    {class} function findCoreForThirdPartyApp(P1: JContext): Integer; cdecl;
    {class} function forceLoadX5FromTBSDemo(P1: JContext): Boolean; cdecl;
    {class} procedure writeCoreInfoForThirdPartyApp(P1: JContext; P2: Integer; P3: Boolean); cdecl;
    {class} procedure writeProperties(P1: JContext; P2: JString; P3: JString; P4: JString; P5: JString); cdecl;
    {class} function getCoreFormOwn: Boolean; cdecl;
    {class} procedure forceToLoadX5ForThirdApp(P1: JContext; P2: Boolean); cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsShareManager')]
  JTbsShareManager = interface(JObject)
  ['{24989F67-9A24-47D7-A32D-8962CC13728A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTbsShareManager = class(TJavaGenericImport<JTbsShareManagerClass, JTbsShareManager>) end;

  JTbsVideoClass = interface(JObjectClass)
  ['{21134E97-F9D0-4102-AB6F-1DB44207C3D0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTbsVideo; cdecl;
    {class} procedure openVideo(P1: JContext; P2: JString); cdecl; overload;
    {class} procedure openVideo(P1: JContext; P2: JString; P3: JBundle); cdecl; overload;
//    {class} function openYunboVideo(P1: JContext; P2: JString; P3: JBundle; P4: Ja): Boolean; cdecl;
    {class} function canUseTbsPlayer(P1: JContext): Boolean; cdecl;
    {class} function canUseYunbo(P1: JContext): Boolean; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/TbsVideo')]
  JTbsVideo = interface(JObject)
  ['{1AD7D2CE-EE6E-4590-8F90-1C59B01609E7}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTbsVideo = class(TJavaGenericImport<JTbsVideoClass, JTbsVideo>) end;

//  JuClass = interface(JObjectClass)
//  ['{58A26E23-79EC-484A-BD52-925E7EDD0F6C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/u')]
//  Ju = interface(JObject)
//  ['{A83CA5D4-BCDD-457A-8F83-96536F44EB03}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Jnet_Uri); cdecl;
//    procedure onReceiveValue(P1: JObject); cdecl;
//
//    { Property }
//  end;

//  TJu = class(TJavaGenericImport<JuClass, Ju>) end;

//  JvClass = interface(JObjectClass)
//  ['{CAC2B62E-1A28-4CA3-938E-BDAE32EC32DD}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/v')]
//  Jv = interface(JObject)
//  ['{E0E07769-C7ED-461D-9CDF-0AC81B4F3600}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: TJavaObjectArray<Jnet_Uri>); cdecl;
//    procedure onReceiveValue(P1: JObject); cdecl;
//
//    { Property }
//  end;

//  TJv = class(TJavaGenericImport<JvClass, Jv>) end;

  JValueCallbackClass = interface(JObjectClass)
  ['{FFDD1983-70C7-42B8-B3CC-59EC73C973AE}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/ValueCallback')]
  JValueCallback = interface(IJavaInstance)
  ['{21C3F07F-5F79-4DCC-8374-CCAFB380AA98}']
    { Property Methods }

    { methods }
    procedure onReceiveValue(P1: JObject); cdecl;

    { Property }
  end;

  TJValueCallback = class(TJavaGenericImport<JValueCallbackClass, JValueCallback>) end;

  JVideoActivityClass = interface(JObjectClass)
  ['{F0ABEDD4-E930-49D3-8DD9-C3384B01E06A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JVideoActivity; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/VideoActivity')]
  JVideoActivity = interface(JObject)
  ['{78C58BC3-209F-4FEA-8EB0-E4DCFF3C6681}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJVideoActivity = class(TJavaGenericImport<JVideoActivityClass, JVideoActivity>) end;

//  JwClass = interface(JObjectClass)
//  ['{6B01B3E4-97AE-4BAD-857C-104254840F9C}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/w')]
//  Jw = interface(JObject)
//  ['{08B30F57-D41D-4D9D-8F0F-2B3565C69C43}']
//    { Property Methods }
//
//    { methods }
//    function getMode: Integer; cdecl;
//    function getAcceptTypes: TJavaObjectArray<JString>; cdecl;
//    function isCaptureEnabled: Boolean; cdecl;
//    function getTitle: JCharSequence; cdecl;
//    function getFilenameHint: JString; cdecl;
//    function createIntent: JIntent; cdecl;
//
//    { Property }
//  end;

//  TJw = class(TJavaGenericImport<JwClass, Jw>) end;

  JWebBackForwardListClass = interface(JObjectClass)
  ['{9CD6DED7-5D44-43D1-9794-52E8C143398C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JWebBackForwardList; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebBackForwardList')]
  JWebBackForwardList = interface(JObject)
  ['{CEBBA364-25DE-4B41-A8E1-9AD707274C48}']
    { Property Methods }

    { methods }
    function getCurrentItem: JWebHistoryItem; cdecl;
    function getCurrentIndex: Integer; cdecl;
    function getItemAtIndex(P1: Integer): JWebHistoryItem; cdecl;
    function getSize: Integer; cdecl;

    { Property }
  end;

  TJWebBackForwardList = class(TJavaGenericImport<JWebBackForwardListClass, JWebBackForwardList>) end;

  JWebChromeClient_FileChooserParamsClass = interface(JObjectClass)
  ['{787B0D1F-3152-42F9-8960-83A64BD895F4}']
    { static Property Methods }
    {class} function _GetMODE_OPEN: Integer;
    {class} function _GetMODE_OPEN_MULTIPLE: Integer;
    {class} function _GetMODE_OPEN_FOLDER: Integer;
    {class} function _GetMODE_SAVE: Integer;

    { static Methods }
    {class} function init: JWebChromeClient_FileChooserParams; cdecl;
    {class} function parseResult(P1: Integer; P2: JIntent): TJavaObjectArray<Jnet_Uri>; cdecl;

    { static Property }
    {class} property MODE_OPEN: Integer read _GetMODE_OPEN;
    {class} property MODE_OPEN_MULTIPLE: Integer read _GetMODE_OPEN_MULTIPLE;
    {class} property MODE_OPEN_FOLDER: Integer read _GetMODE_OPEN_FOLDER;
    {class} property MODE_SAVE: Integer read _GetMODE_SAVE;
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebChromeClient$FileChooserParams')]
  JWebChromeClient_FileChooserParams = interface(JObject)
  ['{7B6E3418-0D53-44C8-98C4-D3DE2E31F3B6}']
    { Property Methods }

    { methods }
    function getMode: Integer; cdecl;
    function getAcceptTypes: TJavaObjectArray<JString>; cdecl;
    function isCaptureEnabled: Boolean; cdecl;
    function getTitle: JCharSequence; cdecl;
    function getFilenameHint: JString; cdecl;
    function createIntent: JIntent; cdecl;

    { Property }
  end;

  TJWebChromeClient_FileChooserParams = class(TJavaGenericImport<JWebChromeClient_FileChooserParamsClass, JWebChromeClient_FileChooserParams>) end;

  JWebChromeClientClass = interface(JObjectClass)
  ['{44CFB2DF-F628-4814-8F29-32A11073A7AD}']
    { static Property Methods }

    { static Methods }
    {class} function init: JWebChromeClient; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebChromeClient')]
  JWebChromeClient = interface(JObject)
  ['{5DDE0566-FEC5-44EB-91E1-F03AB91E997A}']
    { Property Methods }

    { methods }
    procedure onExceededDatabaseQuota(P1: JString; P2: JString; P3: Int64; P4: Int64; P5: Int64; P6: JWebStorage_QuotaUpdater); cdecl;
    function getDefaultVideoPoster: JBitmap; cdecl;
    procedure getVisitedHistory(P1: JValueCallback); cdecl;
    function onConsoleMessage(P1: JConsoleMessage): Boolean; cdecl;
    function onCreateWindow(P1: JWebView; P2: Boolean; P3: Boolean; P4: JMessage): Boolean; cdecl;
    procedure onGeolocationPermissionsHidePrompt; cdecl;
    procedure onGeolocationPermissionsShowPrompt(P1: JString; P2: JGeolocationPermissionsCallback); cdecl;
    procedure onHideCustomView; cdecl;
    function onJsAlert(P1: JWebView; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    function onJsConfirm(P1: JWebView; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    function onJsPrompt(P1: JWebView; P2: JString; P3: JString; P4: JString; P5: JJsPromptResult): Boolean; cdecl;
    function onJsBeforeUnload(P1: JWebView; P2: JString; P3: JString; P4: JJsResult): Boolean; cdecl;
    function onJsTimeout: Boolean; cdecl;
    procedure onProgressChanged(P1: JWebView; P2: Integer); cdecl;
    procedure onReachedMaxAppCacheSize(P1: Int64; P2: Int64; P3: JWebStorage_QuotaUpdater); cdecl;
    procedure onReceivedIcon(P1: JWebView; P2: JBitmap); cdecl;
    procedure onReceivedTouchIconUrl(P1: JWebView; P2: JString; P3: Boolean); cdecl;
    procedure onReceivedTitle(P1: JWebView; P2: JString); cdecl;
    procedure onRequestFocus(P1: JWebView); cdecl;
    procedure onShowCustomView(P1: JView; P2: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
    procedure onShowCustomView(P1: JView; P2: Integer; P3: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
    procedure onCloseWindow(P1: JWebView); cdecl;
    function getVideoLoadingProgressView: JView; cdecl;
    procedure openFileChooser(P1: JValueCallback; P2: JString; P3: JString); cdecl;
    function onShowFileChooser(P1: JWebView; P2: JValueCallback; P3: JWebChromeClient_FileChooserParams): Boolean; cdecl;

    { Property }
  end;

  TJWebChromeClient = class(TJavaGenericImport<JWebChromeClientClass, JWebChromeClient>) end;

  JWebHistoryItemClass = interface(JObjectClass)
  ['{951F2708-FFE3-4D18-86DA-AFCBB9B6636E}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebHistoryItem')]
  JWebHistoryItem = interface(JObject)
  ['{8D86A492-F333-4CC6-AF15-FB385F385F74}']
    { Property Methods }

    { methods }
    function getUrl: JString; cdecl;
    function getOriginalUrl: JString; cdecl;
    function getTitle: JString; cdecl;
    function getFavicon: JBitmap; cdecl;

    { Property }
  end;

  TJWebHistoryItem = class(TJavaGenericImport<JWebHistoryItemClass, JWebHistoryItem>) end;

//  JWebIconDatabase_aClass = interface(JObjectClass)
//  ['{1988C396-6F99-4488-8220-DB9639F974E2}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/WebIconDatabase$a')]
//  JWebIconDatabase_a = interface(IJavaInstance)
//  ['{5D4567CD-D688-4A51-ACE9-E169A3D6B1A9}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString; P2: JBitmap); cdecl;
//
//    { Property }
//  end;

//  TJWebIconDatabase_a = class(TJavaGenericImport<JWebIconDatabase_aClass, JWebIconDatabase_a>) end;

  JWebIconDatabaseClass = interface(JObjectClass)
  ['{7E7047FD-E411-44DD-873C-1AE23F324152}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JWebIconDatabase; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebIconDatabase')]
  JWebIconDatabase = interface(JObject)
  ['{5BE05A0F-C7CF-4180-B5D4-0B4FF09412E6}']
    { Property Methods }

    { methods }
    procedure open(P1: JString); cdecl;
    procedure close; cdecl;
    procedure removeAllIcons; cdecl;
//    procedure requestIconForPageUrl(P1: JString; P2: JWebIconDatabase_a); cdecl;
//    procedure bulkRequestIconForPageUrl(P1: JContentResolver; P2: JString; P3: JWebIconDatabase_a); cdecl;
    procedure retainIconForPageUrl(P1: JString); cdecl;
    procedure releaseIconForPageUrl(P1: JString); cdecl;

    { Property }
  end;

  TJWebIconDatabase = class(TJavaGenericImport<JWebIconDatabaseClass, JWebIconDatabase>) end;

  JWebSettings_LayoutAlgorithmClass = interface(JObjectClass)
  ['{3783E45D-1EB4-4D64-97FD-297C71A3D565}']
    { static Property Methods }
    {class} function _GetNORMAL: JWebSettings_LayoutAlgorithm;
    {class} function _GetSINGLE_COLUMN: JWebSettings_LayoutAlgorithm;
    {class} function _GetNARROW_COLUMNS: JWebSettings_LayoutAlgorithm;

    { static Methods }
    {class} function values: TJavaObjectArray<JWebSettings_LayoutAlgorithm>; cdecl;
    {class} function valueOf(P1: JString): JWebSettings_LayoutAlgorithm; cdecl;

    { static Property }
    {class} property NORMAL: JWebSettings_LayoutAlgorithm read _GetNORMAL;
    {class} property SINGLE_COLUMN: JWebSettings_LayoutAlgorithm read _GetSINGLE_COLUMN;
    {class} property NARROW_COLUMNS: JWebSettings_LayoutAlgorithm read _GetNARROW_COLUMNS;
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebSettings$LayoutAlgorithm')]
  JWebSettings_LayoutAlgorithm = interface(JObject)
  ['{6B455E46-8802-4182-89C5-35B703222E84}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJWebSettings_LayoutAlgorithm = class(TJavaGenericImport<JWebSettings_LayoutAlgorithmClass, JWebSettings_LayoutAlgorithm>) end;

  JWebSettings_PluginStateClass = interface(JObjectClass)
  ['{E451702C-45BA-4A74-A579-2F8767071F34}']
    { static Property Methods }
    {class} function _GetON: JWebSettings_PluginState;
    {class} function _GetON_DEMAND: JWebSettings_PluginState;
    {class} function _GetOFF: JWebSettings_PluginState;

    { static Methods }
    {class} function values: TJavaObjectArray<JWebSettings_PluginState>; cdecl;
    {class} function valueOf(P1: JString): JWebSettings_PluginState; cdecl;

    { static Property }
    {class} property &ON: JWebSettings_PluginState read _GetON;
    {class} property ON_DEMAND: JWebSettings_PluginState read _GetON_DEMAND;
    {class} property OFF: JWebSettings_PluginState read _GetOFF;
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebSettings$PluginState')]
  JWebSettings_PluginState = interface(JObject)
  ['{9D31BE44-51A9-4D07-B079-20279F6B36A6}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJWebSettings_PluginState = class(TJavaGenericImport<JWebSettings_PluginStateClass, JWebSettings_PluginState>) end;

  JWebSettings_RenderPriorityClass = interface(JObjectClass)
  ['{71BCFE5C-8495-4552-935E-33AF39580520}']
    { static Property Methods }
    {class} function _GetNORMAL: JWebSettings_RenderPriority;
    {class} function _GetHIGH: JWebSettings_RenderPriority;
    {class} function _GetLOW: JWebSettings_RenderPriority;

    { static Methods }
    {class} function values: TJavaObjectArray<JWebSettings_RenderPriority>; cdecl;
    {class} function valueOf(P1: JString): JWebSettings_RenderPriority; cdecl;

    { static Property }
    {class} property NORMAL: JWebSettings_RenderPriority read _GetNORMAL;
    {class} property HIGH: JWebSettings_RenderPriority read _GetHIGH;
    {class} property LOW: JWebSettings_RenderPriority read _GetLOW;
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebSettings$RenderPriority')]
  JWebSettings_RenderPriority = interface(JObject)
  ['{45DF899A-3C97-47A2-B7CE-4247864FB7A6}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJWebSettings_RenderPriority = class(TJavaGenericImport<JWebSettings_RenderPriorityClass, JWebSettings_RenderPriority>) end;

  JWebSettings_TextSizeClass = interface(JObjectClass)
  ['{D870A062-0051-45FA-8D21-248436180175}']
    { static Property Methods }
    {class} function _GetSMALLEST: JWebSettings_TextSize;
    {class} function _GetSMALLER: JWebSettings_TextSize;
    {class} function _GetNORMAL: JWebSettings_TextSize;
    {class} function _GetLARGER: JWebSettings_TextSize;
    {class} function _GetLARGEST: JWebSettings_TextSize;

    { static Methods }
    {class} function values: TJavaObjectArray<JWebSettings_TextSize>; cdecl;
    {class} function valueOf(P1: JString): JWebSettings_TextSize; cdecl;

    { static Property }
    {class} property SMALLEST: JWebSettings_TextSize read _GetSMALLEST;
    {class} property SMALLER: JWebSettings_TextSize read _GetSMALLER;
    {class} property NORMAL: JWebSettings_TextSize read _GetNORMAL;
    {class} property LARGER: JWebSettings_TextSize read _GetLARGER;
    {class} property LARGEST: JWebSettings_TextSize read _GetLARGEST;
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebSettings$TextSize')]
  JWebSettings_TextSize = interface(JObject)
  ['{01945AA1-866D-475A-A7E7-97AB38B6BD00}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJWebSettings_TextSize = class(TJavaGenericImport<JWebSettings_TextSizeClass, JWebSettings_TextSize>) end;

  JWebSettings_ZoomDensityClass = interface(JObjectClass)
  ['{A410440E-884F-4A82-962D-45C227D81416}']
    { static Property Methods }
    {class} function _GetFAR: JWebSettings_ZoomDensity;
    {class} function _GetMEDIUM: JWebSettings_ZoomDensity;
    {class} function _GetCLOSE: JWebSettings_ZoomDensity;

    { static Methods }
    {class} function values: TJavaObjectArray<JWebSettings_ZoomDensity>; cdecl;
    {class} function valueOf(P1: JString): JWebSettings_ZoomDensity; cdecl;

    { static Property }
    {class} property &FAR: JWebSettings_ZoomDensity read _GetFAR;
    {class} property MEDIUM: JWebSettings_ZoomDensity read _GetMEDIUM;
    {class} property CLOSE: JWebSettings_ZoomDensity read _GetCLOSE;
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebSettings$ZoomDensity')]
  JWebSettings_ZoomDensity = interface(JObject)
  ['{3E8D9137-28A7-4A09-843D-D9B55A4612CF}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJWebSettings_ZoomDensity = class(TJavaGenericImport<JWebSettings_ZoomDensityClass, JWebSettings_ZoomDensity>) end;

  JWebSettingsClass = interface(JObjectClass)
  ['{931A5E42-F36F-46BC-B7C6-8F384B3849DD}']
    { static Property Methods }
    {class} function _GetLOAD_DEFAULT: Integer;
    {class} function _GetLOAD_NORMAL: Integer;
    {class} function _GetLOAD_CACHE_ELSE_NETWORK: Integer;
    {class} function _GetLOAD_NO_CACHE: Integer;
    {class} function _GetLOAD_CACHE_ONLY: Integer;

    { static Methods }
    {class} function getDefaultUserAgent(P1: JContext): JString; cdecl;

    { static Property }
    {class} property LOAD_DEFAULT: Integer read _GetLOAD_DEFAULT;
    {class} property LOAD_NORMAL: Integer read _GetLOAD_NORMAL;
    {class} property LOAD_CACHE_ELSE_NETWORK: Integer read _GetLOAD_CACHE_ELSE_NETWORK;
    {class} property LOAD_NO_CACHE: Integer read _GetLOAD_NO_CACHE;
    {class} property LOAD_CACHE_ONLY: Integer read _GetLOAD_CACHE_ONLY;
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebSettings')]
  JWebSettings = interface(JObject)
  ['{BAF99E92-FA64-4407-8EE6-AB58D4F5411D}']
    { Property Methods }

    { methods }
    procedure setNavDump(P1: Boolean); cdecl;
    function getMixedContentMode: Integer; cdecl;
    function getNavDump: Boolean; cdecl;
    procedure setSupportZoom(P1: Boolean); cdecl;
    function supportZoom: Boolean; cdecl;
    procedure setBuiltInZoomControls(P1: Boolean); cdecl;
    function getBuiltInZoomControls: Boolean; cdecl;
    procedure setDisplayZoomControls(P1: Boolean); cdecl;
    function getDisplayZoomControls: Boolean; cdecl;
    procedure setAllowFileAccess(P1: Boolean); cdecl;
    function getAllowFileAccess: Boolean; cdecl;
    procedure setAllowContentAccess(P1: Boolean); cdecl;
    procedure setMixedContentMode(P1: Integer); cdecl;
    function getAllowContentAccess: Boolean; cdecl;
    procedure setLoadWithOverviewMode(P1: Boolean); cdecl;
    function getLoadWithOverviewMode: Boolean; cdecl;
    procedure setEnableSmoothTransition(P1: Boolean); cdecl;
    function enableSmoothTransition: Boolean; cdecl;
    procedure setUseWebViewBackgroundForOverscrollBackground(P1: Boolean); cdecl;
    function getUseWebViewBackgroundForOverscrollBackground: Boolean; cdecl;
    procedure setSaveFormData(P1: Boolean); cdecl;
    function getSaveFormData: Boolean; cdecl;
    procedure setSavePassword(P1: Boolean); cdecl;
    function getSavePassword: Boolean; cdecl;
    procedure setTextZoom(P1: Integer); cdecl;
    function getTextZoom: Integer; cdecl;
    procedure setTextSize(P1: JWebSettings_TextSize); cdecl;
    function getTextSize: JWebSettings_TextSize; cdecl;
    procedure setDefaultZoom(P1: JWebSettings_ZoomDensity); cdecl;
    function getDefaultZoom: JWebSettings_ZoomDensity; cdecl;
    procedure setLightTouchEnabled(P1: Boolean); cdecl;
    function getLightTouchEnabled: Boolean; cdecl;
    procedure setUserAgent(P1: JString); cdecl;
    function getUserAgentString: JString; cdecl;
    procedure setUserAgentString(P1: JString); cdecl;
    procedure setUseWideViewPort(P1: Boolean); cdecl;
    function getUseWideViewPort: Boolean; cdecl;
    procedure setSupportMultipleWindows(P1: Boolean); cdecl;
    function supportMultipleWindows: Boolean; cdecl;
    procedure setLayoutAlgorithm(P1: JWebSettings_LayoutAlgorithm); cdecl;
    function getLayoutAlgorithm: JWebSettings_LayoutAlgorithm; cdecl;
    procedure setStandardFontFamily(P1: JString); cdecl;
    function getStandardFontFamily: JString; cdecl;
    procedure setFixedFontFamily(P1: JString); cdecl;
    function getFixedFontFamily: JString; cdecl;
    procedure setSansSerifFontFamily(P1: JString); cdecl;
    function getSansSerifFontFamily: JString; cdecl;
    procedure setSerifFontFamily(P1: JString); cdecl;
    function getSerifFontFamily: JString; cdecl;
    procedure setCursiveFontFamily(P1: JString); cdecl;
    function getCursiveFontFamily: JString; cdecl;
    procedure setFantasyFontFamily(P1: JString); cdecl;
    function getFantasyFontFamily: JString; cdecl;
    procedure setMinimumFontSize(P1: Integer); cdecl;
    function getMinimumFontSize: Integer; cdecl;
    procedure setMinimumLogicalFontSize(P1: Integer); cdecl;
    function getMinimumLogicalFontSize: Integer; cdecl;
    procedure setDefaultFontSize(P1: Integer); cdecl;
    function getDefaultFontSize: Integer; cdecl;
    procedure setDefaultFixedFontSize(P1: Integer); cdecl;
    function getDefaultFixedFontSize: Integer; cdecl;
    procedure setLoadsImagesAutomatically(P1: Boolean); cdecl;
    function getLoadsImagesAutomatically: Boolean; cdecl;
    procedure setBlockNetworkImage(P1: Boolean); cdecl;
    function getBlockNetworkImage: Boolean; cdecl;
    procedure setBlockNetworkLoads(P1: Boolean); cdecl;
    function getBlockNetworkLoads: Boolean; cdecl;
    procedure setJavaScriptEnabled(P1: Boolean); cdecl;
    procedure setAllowUniversalAccessFromFileURLs(P1: Boolean); cdecl;
    procedure setAllowFileAccessFromFileURLs(P1: Boolean); cdecl;
    procedure setPluginsEnabled(P1: Boolean); cdecl;
    procedure setPluginState(P1: JWebSettings_PluginState); cdecl;
    procedure setPluginsPath(P1: JString); cdecl;
    procedure setDatabasePath(P1: JString); cdecl;
    procedure setGeolocationDatabasePath(P1: JString); cdecl;
    procedure setAppCacheEnabled(P1: Boolean); cdecl;
    procedure setAppCachePath(P1: JString); cdecl;
    procedure setAppCacheMaxSize(P1: Int64); cdecl;
    procedure setDatabaseEnabled(P1: Boolean); cdecl;
    procedure setDomStorageEnabled(P1: Boolean); cdecl;
    function getDomStorageEnabled: Boolean; cdecl;
    function getDatabasePath: JString; cdecl;
    function getDatabaseEnabled: Boolean; cdecl;
    procedure setGeolocationEnabled(P1: Boolean); cdecl;
    function getJavaScriptEnabled: Boolean; cdecl;
    function getPluginsEnabled: Boolean; cdecl;
    function getPluginState: JWebSettings_PluginState; cdecl;
    function getPluginsPath: JString; cdecl;
    procedure setJavaScriptCanOpenWindowsAutomatically(P1: Boolean); cdecl;
    function getJavaScriptCanOpenWindowsAutomatically: Boolean; cdecl;
    procedure setDefaultTextEncodingName(P1: JString); cdecl;
    function getDefaultTextEncodingName: JString; cdecl;
    function getMediaPlaybackRequiresUserGesture: Boolean; cdecl;
    procedure setMediaPlaybackRequiresUserGesture(P1: Boolean); cdecl;
    procedure setNeedInitialFocus(P1: Boolean); cdecl;
    procedure setRenderPriority(P1: JWebSettings_RenderPriority); cdecl;
    procedure setCacheMode(P1: Integer); cdecl;
    function getCacheMode: Integer; cdecl;

    { Property }
  end;

  TJWebSettings = class(TJavaGenericImport<JWebSettingsClass, JWebSettings>) end;

  JWebStorage_QuotaUpdaterClass = interface(JObjectClass)
  ['{8D061F09-194F-4E54-9D26-4ACA1740D775}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebStorage$QuotaUpdater')]
  JWebStorage_QuotaUpdater = interface(IJavaInstance)
  ['{AEA6A4D0-9BBD-47DF-8F32-E0B6806714A6}']
    { Property Methods }

    { methods }
    procedure updateQuota(P1: Int64); cdecl;

    { Property }
  end;

  TJWebStorage_QuotaUpdater = class(TJavaGenericImport<JWebStorage_QuotaUpdaterClass, JWebStorage_QuotaUpdater>) end;

  JWebStorageClass = interface(JObjectClass)
  ['{F1561732-9AB8-4ED7-AA39-37565F956253}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JWebStorage; cdecl;
    {class} function init: JWebStorage; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebStorage')]
  JWebStorage = interface(JObject)
  ['{08B5CB81-4BD0-45FC-A44D-2E6B5C6FA209}']
    { Property Methods }

    { methods }
    procedure getOrigins(P1: JValueCallback); cdecl;
    procedure getUsageForOrigin(P1: JString; P2: JValueCallback); cdecl;
    procedure getQuotaForOrigin(P1: JString; P2: JValueCallback); cdecl;
    procedure setQuotaForOrigin(P1: JString; P2: Int64); cdecl;
    procedure deleteOrigin(P1: JString); cdecl;
    procedure deleteAllData; cdecl;

    { Property }
  end;

  TJWebStorage = class(TJavaGenericImport<JWebStorageClass, JWebStorage>) end;

//  JWebView_aClass = interface(JObjectClass)
//  ['{C4845C83-8CC7-4A3A-9BB0-669CEB79CE9B}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/WebView$a')]
//  JWebView_a = interface(JObject)
//  ['{BF394CDF-B43F-43B3-BC44-69F6D2A0C19A}']
//    { Property Methods }
//
//    { methods }
//    procedure onReceive(P1: JContext; P2: JIntent); cdecl;
//
//    { Property }
//  end;

//  TJWebView_a = class(TJavaGenericImport<JWebView_aClass, JWebView_a>) end;

//  JWebView_bClass = interface(JObjectClass)
//  ['{D4FE629C-2349-486F-B909-30D33F9E5D75}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JWebView; P2: JContext): JWebView_b; cdecl; overload;
//    {class} function init(P1: JWebView; P2: JContext; P3: JAttributeSet): JWebView_b; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/WebView$b')]
//  JWebView_b = interface(JObject)
//  ['{581A57D7-D92F-48F5-807A-595ACCB007E5}']
//    { Property Methods }
//
//    { methods }
//    procedure invalidate; cdecl;
//    function getSettings: JWebSettings; cdecl;
//    procedure a(P1: Integer; P2: Integer; P3: Integer; P4: Integer); cdecl; overload;
//    procedure computeScroll; cdecl;
//    procedure a; cdecl; overload;
//    function onTouchEvent(P1: JMotionEvent): Boolean; cdecl;
//    function a(P1: JMotionEvent): Boolean; cdecl; overload;
//    function overScrollBy(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer; P8: Integer; P9: Boolean): Boolean; cdecl;
//    function a(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer; P8: Integer; P9: Boolean): Boolean; cdecl; overload;
//    procedure onOverScrolled(P1: Integer; P2: Integer; P3: Boolean; P4: Boolean); cdecl;
//    procedure a(P1: Integer; P2: Integer; P3: Boolean; P4: Boolean); cdecl; overload;
//    function dispatchTouchEvent(P1: JMotionEvent): Boolean; cdecl;
//    function b(P1: JMotionEvent): Boolean; cdecl;
//    function onInterceptTouchEvent(P1: JMotionEvent): Boolean; cdecl;
//    function c(P1: JMotionEvent): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJWebView_b = class(TJavaGenericImport<JWebView_bClass, JWebView_b>) end;

  JWebView_HitTestResultClass = interface(JObjectClass)
  ['{BEE106A5-748C-4316-B9B4-D4B4D5D5C509}']
    { static Property Methods }
    {class} function _GetUNKNOWN_TYPE: Integer;
    {class} function _GetANCHOR_TYPE: Integer;
    {class} function _GetPHONE_TYPE: Integer;
    {class} function _GetGEO_TYPE: Integer;
    {class} function _GetEMAIL_TYPE: Integer;
    {class} function _GetIMAGE_TYPE: Integer;
    {class} function _GetIMAGE_ANCHOR_TYPE: Integer;
    {class} function _GetSRC_ANCHOR_TYPE: Integer;
    {class} function _GetSRC_IMAGE_ANCHOR_TYPE: Integer;
    {class} function _GetEDIT_TEXT_TYPE: Integer;

    { static Methods }
    {class} function init: JWebView_HitTestResult; cdecl; overload;
    {class} function init(P1: JIX5WebViewBase_HitTestResult): JWebView_HitTestResult; cdecl; overload;
    {class} function init(P1: JWebView_HitTestResult): JWebView_HitTestResult; cdecl; overload;

    { static Property }
    {class} property UNKNOWN_TYPE: Integer read _GetUNKNOWN_TYPE;
    {class} property ANCHOR_TYPE: Integer read _GetANCHOR_TYPE;
    {class} property PHONE_TYPE: Integer read _GetPHONE_TYPE;
    {class} property GEO_TYPE: Integer read _GetGEO_TYPE;
    {class} property EMAIL_TYPE: Integer read _GetEMAIL_TYPE;
    {class} property IMAGE_TYPE: Integer read _GetIMAGE_TYPE;
    {class} property IMAGE_ANCHOR_TYPE: Integer read _GetIMAGE_ANCHOR_TYPE;
    {class} property SRC_ANCHOR_TYPE: Integer read _GetSRC_ANCHOR_TYPE;
    {class} property SRC_IMAGE_ANCHOR_TYPE: Integer read _GetSRC_IMAGE_ANCHOR_TYPE;
    {class} property EDIT_TEXT_TYPE: Integer read _GetEDIT_TEXT_TYPE;
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebView$HitTestResult')]
  JWebView_HitTestResult = interface(JObject)
  ['{8DB2D2D8-741C-4ACB-B043-D4244D6647D5}']
    { Property Methods }

    { methods }
    function getType: Integer; cdecl;
    function getExtra: JString; cdecl;

    { Property }
  end;

  TJWebView_HitTestResult = class(TJavaGenericImport<JWebView_HitTestResultClass, JWebView_HitTestResult>) end;

  JWebView_PictureListenerClass = interface(JObjectClass)
  ['{74B0B5F7-3A07-4015-A7B0-FB025F438C21}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebView$PictureListener')]
  JWebView_PictureListener = interface(IJavaInstance)
  ['{4BF0FFB2-94D7-4AA8-AFB0-C7DD1A351AE1}']
    { Property Methods }

    { methods }
    procedure onNewPicture(P1: JWebView; P2: JPicture); cdecl;

    { Property }
  end;

  TJWebView_PictureListener = class(TJavaGenericImport<JWebView_PictureListenerClass, JWebView_PictureListener>) end;

  JWebView_WebViewTransportClass = interface(JObjectClass)
  ['{099DF6C2-8FE0-4D3A-909B-07C05636D7D7}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JWebView): JWebView_WebViewTransport; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebView$WebViewTransport')]
  JWebView_WebViewTransport = interface(JObject)
  ['{59678828-BB6D-46E2-BBC4-65D76B834495}']
    { Property Methods }

    { methods }
    procedure setWebView(P1: JWebView); cdecl;
    function getWebView: JWebView; cdecl;

    { Property }
  end;

  TJWebView_WebViewTransport = class(TJavaGenericImport<JWebView_WebViewTransportClass, JWebView_WebViewTransport>) end;

  JWebViewClass = interface(JObjectClass)
  ['{B7294804-6889-4056-9063-DF1DF7CCA361}']
    { static Property Methods }
    {class} function _GetSCHEME_TEL: JString;
    {class} function _GetSCHEME_MAILTO: JString;
    {class} function _GetSCHEME_GEO: JString;
    {class} function _GetGETPVERROR: Integer;
    {class} function _GetmSysWebviewCreated: Boolean;
    {class} function _GetNIGHT_MODE_ALPHA: Integer;
    {class} function _GetNORMAL_MODE_ALPHA: Integer;
    {class} function _GetNIGHT_MODE_COLOR: Integer;

    { static Methods }
    {class} function init(P1: JContext): JWebView; cdecl; overload;
    {class} function init(P1: JContext; P2: JAttributeSet): JWebView; cdecl; overload;
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JWebView; cdecl; overload;
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer; P4: Boolean): JWebView; cdecl; overload;
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer; P4: JMap; P5: Boolean): JWebView; cdecl; overload;
    {class} procedure enablePlatformNotifications; cdecl;
    {class} procedure disablePlatformNotifications; cdecl;
    {class} procedure setWebContentsDebuggingEnabled(P1: Boolean); cdecl;
    {class} function findAddress(P1: JString): JString; cdecl;
    {class} function getPluginList: JObject; cdecl;
    {class} function getTbsCoreVersion(P1: JContext): Integer; cdecl;
    {class} function getTbsSDKVersion(P1: JContext): Integer; cdecl;
    {class} procedure setSysDayOrNight(P1: Boolean); cdecl;
    {class} function getCrashExtraMessage(P1: JContext): JString; cdecl;
    {class} function getTbsNeedReboot: Boolean; cdecl;

    { static Property }
    {class} property SCHEME_TEL: JString read _GetSCHEME_TEL;
    {class} property SCHEME_MAILTO: JString read _GetSCHEME_MAILTO;
    {class} property SCHEME_GEO: JString read _GetSCHEME_GEO;
    {class} property GETPVERROR: Integer read _GetGETPVERROR;
    {class} property mSysWebviewCreated: Boolean read _GetmSysWebviewCreated;
    {class} property NIGHT_MODE_ALPHA: Integer read _GetNIGHT_MODE_ALPHA;
    {class} property NORMAL_MODE_ALPHA: Integer read _GetNORMAL_MODE_ALPHA;
    {class} property NIGHT_MODE_COLOR: Integer read _GetNIGHT_MODE_COLOR;
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebView')]
  JWebView = interface(JView)//JObject)//
  ['{C3884FE0-92DF-4736-AE23-9EDB36B9CE69}']
    { Property Methods }
    function _GetmWebViewCallbackClient: JWebViewCallbackClient;
    procedure _SetmWebViewCallbackClient(amWebViewCallbackClient: JWebViewCallbackClient);

    { methods }
    function createPrintDocumentAdapter(P1: JString): JObject; cdecl;
    function computeHorizontalScrollOffset: Integer; cdecl;
    function computeHorizontalScrollRange: Integer; cdecl;
    function computeHorizontalScrollExtent: Integer; cdecl;
    function computeVerticalScrollRange: Integer; cdecl;
    procedure setScrollBarStyle(P1: Integer); cdecl;
    procedure setHorizontalScrollbarOverlay(P1: Boolean); cdecl;
    procedure setVerticalScrollbarOverlay(P1: Boolean); cdecl;
    function overlayHorizontalScrollbar: Boolean; cdecl;
    function overlayVerticalScrollbar: Boolean; cdecl;
    function requestChildRectangleOnScreen(P1: JView; P2: JRect; P3: Boolean): Boolean; cdecl;
    function getWebScrollX: Integer; cdecl;
    function getWebScrollY: Integer; cdecl;
    function getVisibleTitleHeight: Integer; cdecl;
    function getCertificate: JSslCertificate; cdecl;
    procedure setCertificate(P1: JSslCertificate); cdecl;
    procedure savePassword(P1: JString; P2: JString; P3: JString); cdecl;
    procedure setHttpAuthUsernamePassword(P1: JString; P2: JString; P3: JString; P4: JString); cdecl;
    function getHttpAuthUsernamePassword(P1: JString; P2: JString): TJavaObjectArray<JString>; cdecl;
    procedure destroy; cdecl;
    procedure setNetworkAvailable(P1: Boolean); cdecl;
    function saveState(P1: JBundle): JWebBackForwardList; cdecl;
    function savePicture(P1: JBundle; P2: JFile): Boolean; cdecl;
    function restorePicture(P1: JBundle; P2: JFile): Boolean; cdecl;
    function restoreState(P1: JBundle): JWebBackForwardList; cdecl;
    procedure loadUrl(P1: JString; P2: JMap); cdecl; overload;
    procedure loadUrl(P1: JString); cdecl; overload;
    function showDebugView(P1: JString): Boolean; cdecl;
    procedure postUrl(P1: JString; P2: TJavaArray<Byte>); cdecl;
    procedure loadData(P1: JString; P2: JString; P3: JString); cdecl;
    procedure loadDataWithBaseURL(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString); cdecl;
    procedure saveWebArchive(P1: JString); cdecl; overload;
    procedure saveWebArchive(P1: JString; P2: Boolean; P3: JValueCallback); cdecl; overload;
    procedure stopLoading; cdecl;
    procedure reload; cdecl;
    function canGoBack: Boolean; cdecl;
    procedure goBack; cdecl;
    function canGoForward: Boolean; cdecl;
    procedure goForward; cdecl;
    function canGoBackOrForward(P1: Integer): Boolean; cdecl;
    procedure goBackOrForward(P1: Integer); cdecl;
    function pageUp(P1: Boolean): Boolean; cdecl;
    function pageDown(P1: Boolean): Boolean; cdecl;
    procedure clearView; cdecl;
    function capturePicture: JPicture; cdecl;
    function getScale: Single; cdecl;
    procedure setInitialScale(P1: Integer); cdecl;
    procedure invokeZoomPicker; cdecl;
    function getHitTestResult: JWebView_HitTestResult; cdecl;
    procedure requestFocusNodeHref(P1: JMessage); cdecl;
    procedure requestImageRef(P1: JMessage); cdecl;
    function getUrl: JString; cdecl;
    function getOriginalUrl: JString; cdecl;
    function getTitle: JString; cdecl;
    function getFavicon: JBitmap; cdecl;
    function getProgress: Integer; cdecl;
    function getContentHeight: Integer; cdecl;
    function getContentWidth: Integer; cdecl;
    procedure pauseTimers; cdecl;
    procedure resumeTimers; cdecl;
    procedure onPause; cdecl;
    procedure onResume; cdecl;
    procedure freeMemory; cdecl;
    procedure clearCache(P1: Boolean); cdecl;
    procedure clearFormData; cdecl;
    procedure clearHistory; cdecl;
    procedure clearSslPreferences; cdecl;
    function copyBackForwardList: JWebBackForwardList; cdecl;
    procedure setFindListener(P1: JIX5WebViewBase_FindListener); cdecl;
    procedure findNext(P1: Boolean); cdecl;
    function findAll(P1: JString): Integer; cdecl;
    procedure findAllAsync(P1: JString); cdecl;
    function showFindDialog(P1: JString; P2: Boolean): Boolean; cdecl;
    procedure clearMatches; cdecl;
    procedure documentHasImages(P1: JMessage); cdecl;
    procedure setWebViewClient(P1: JWebViewClient); cdecl;
    procedure setWebViewCallbackClient(P1: JWebViewCallbackClient); cdecl;
    procedure customDiskCachePathEnabled(P1: Boolean; P2: JString); cdecl;
    procedure setDownloadListener(P1: JDownloadListener); cdecl;
    procedure setWebChromeClient(P1: JWebChromeClient); cdecl;
    procedure setPictureListener(P1: JWebView_PictureListener); cdecl;
    procedure addJavascriptInterface(P1: JObject; P2: JString); cdecl;
    procedure removeJavascriptInterface(P1: JString); cdecl;
    function getSettings: JWebSettings; cdecl;
    procedure refreshPlugins(P1: Boolean); cdecl;
    procedure setMapTrackballToArrowKeys(P1: Boolean); cdecl;
    procedure flingScroll(P1: Integer; P2: Integer); cdecl;
    function getZoomControls: JView; cdecl;
    function canZoomIn: Boolean; cdecl;
    function isPrivateBrowsingEnabled: Boolean; cdecl;
    function canZoomOut: Boolean; cdecl;
    function zoomIn: Boolean; cdecl;
    function zoomOut: Boolean; cdecl;
//    procedure dumpViewHierarchyWithProperties(P1: JBufferedWriter; P2: Integer); cdecl;
    function findHierarchyView(P1: JString; P2: Integer): JView; cdecl;
    procedure computeScroll; cdecl;
    procedure setBackgroundColor(P1: Integer); cdecl;
    function getView: JView; cdecl;
    function getX5WebViewExtension: JIX5WebViewExtension; cdecl;
    function getSettingsExtension: JIX5WebSettingsExtension; cdecl;
    procedure setWebViewClientExtension(P1: JIX5WebViewClientExtension); cdecl;
    procedure setWebChromeClientExtension(P1: JIX5WebChromeClientExtension); cdecl;
    function getWebChromeClientExtension: JIX5WebChromeClientExtension; cdecl;
    function getWebViewClientExtension: JIX5WebViewClientExtension; cdecl;
    procedure evaluateJavascript(P1: JString; P2: JValueCallback); cdecl;
    function setVideoFullScreen(P1: JContext; P2: Boolean): Boolean; cdecl;
    procedure setOnTouchListener(P1: JView_OnTouchListener); cdecl;
    procedure switchNightMode(P1: Boolean); cdecl;
    procedure switchToNightMode; cdecl;
    procedure setDayOrNight(P1: Boolean); cdecl;
    procedure setARModeEnable(P1: Boolean); cdecl;
    function isDayMode: Boolean; cdecl;
    function getSysNightModeAlpha: Integer; cdecl;
    procedure setSysNightModeAlpha(P1: Integer); cdecl;
    function onLongClick(P1: JView): Boolean; cdecl;
    procedure setOnLongClickListener(P1: JView_OnLongClickListener); cdecl;
    procedure addView(P1: JView); cdecl;
    procedure removeView(P1: JView); cdecl;
    procedure super_onScrollChanged(P1: Integer; P2: Integer; P3: Integer; P4: Integer); cdecl;
    function super_overScrollBy(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer; P8: Integer; P9: Boolean): Boolean; cdecl;
    procedure super_onOverScrolled(P1: Integer; P2: Integer; P3: Boolean; P4: Boolean); cdecl;
    function super_dispatchTouchEvent(P1: JMotionEvent): Boolean; cdecl;
    function super_onInterceptTouchEvent(P1: JMotionEvent): Boolean; cdecl;
    function super_onTouchEvent(P1: JMotionEvent): Boolean; cdecl;
    procedure super_computeScroll; cdecl;
    function getScrollBarDefaultDelayBeforeFade: Integer; cdecl;
    function getScrollBarFadeDuration: Integer; cdecl;
    function getScrollBarSize: Integer; cdecl;
    function getScrollBarStyle: Integer; cdecl;
    procedure setVisibility(P1: Integer); cdecl;

    { Property }
    property mWebViewCallbackClient: JWebViewCallbackClient read _GetmWebViewCallbackClient write _SetmWebViewCallbackClient;
  end;

  TJWebView = class(TJavaGenericImport<JWebViewClass, JWebView>) end;

  JWebViewCallbackClientClass = interface(JObjectClass)
  ['{833A4B7C-A5B1-403E-A593-A30B0EACFEF7}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebViewCallbackClient')]
  JWebViewCallbackClient = interface(IJavaInstance)
  ['{184AECCF-D24C-41A2-89E9-70187AC0E387}']
    { Property Methods }

    { methods }
    function onTouchEvent(P1: JMotionEvent; P2: JView): Boolean; cdecl;
    function overScrollBy(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer; P8: Integer; P9: Boolean; P10: JView): Boolean; cdecl;
    function dispatchTouchEvent(P1: JMotionEvent; P2: JView): Boolean; cdecl;
    procedure computeScroll(P1: JView); cdecl;
    procedure onOverScrolled(P1: Integer; P2: Integer; P3: Boolean; P4: Boolean; P5: JView); cdecl;
    function onInterceptTouchEvent(P1: JMotionEvent; P2: JView): Boolean; cdecl;
    procedure onScrollChanged(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: JView); cdecl;
    procedure invalidate; cdecl;

    { Property }
  end;

  TJWebViewCallbackClient = class(TJavaGenericImport<JWebViewCallbackClientClass, JWebViewCallbackClient>) end;

  JWebViewClientClass = interface(JObjectClass)
  ['{3A5E6879-B635-4A84-AE1C-58AFA62E6936}']
    { static Property Methods }
    {class} function _GetERROR_UNKNOWN: Integer;
    {class} function _GetERROR_HOST_LOOKUP: Integer;
    {class} function _GetERROR_UNSUPPORTED_AUTH_SCHEME: Integer;
    {class} function _GetERROR_AUTHENTICATION: Integer;
    {class} function _GetERROR_PROXY_AUTHENTICATION: Integer;
    {class} function _GetERROR_CONNECT: Integer;
    {class} function _GetERROR_IO: Integer;
    {class} function _GetERROR_TIMEOUT: Integer;
    {class} function _GetERROR_REDIRECT_LOOP: Integer;
    {class} function _GetERROR_UNSUPPORTED_SCHEME: Integer;
    {class} function _GetERROR_FAILED_SSL_HANDSHAKE: Integer;
    {class} function _GetERROR_BAD_URL: Integer;
    {class} function _GetERROR_FILE: Integer;
    {class} function _GetERROR_FILE_NOT_FOUND: Integer;
    {class} function _GetERROR_TOO_MANY_REQUESTS: Integer;
    {class} function _GetINTERCEPT_BY_ISP: Integer;

    { static Methods }
    {class} function init: JWebViewClient; cdecl;

    { static Property }
    {class} property ERROR_UNKNOWN: Integer read _GetERROR_UNKNOWN;
    {class} property ERROR_HOST_LOOKUP: Integer read _GetERROR_HOST_LOOKUP;
    {class} property ERROR_UNSUPPORTED_AUTH_SCHEME: Integer read _GetERROR_UNSUPPORTED_AUTH_SCHEME;
    {class} property ERROR_AUTHENTICATION: Integer read _GetERROR_AUTHENTICATION;
    {class} property ERROR_PROXY_AUTHENTICATION: Integer read _GetERROR_PROXY_AUTHENTICATION;
    {class} property ERROR_CONNECT: Integer read _GetERROR_CONNECT;
    {class} property ERROR_IO: Integer read _GetERROR_IO;
    {class} property ERROR_TIMEOUT: Integer read _GetERROR_TIMEOUT;
    {class} property ERROR_REDIRECT_LOOP: Integer read _GetERROR_REDIRECT_LOOP;
    {class} property ERROR_UNSUPPORTED_SCHEME: Integer read _GetERROR_UNSUPPORTED_SCHEME;
    {class} property ERROR_FAILED_SSL_HANDSHAKE: Integer read _GetERROR_FAILED_SSL_HANDSHAKE;
    {class} property ERROR_BAD_URL: Integer read _GetERROR_BAD_URL;
    {class} property ERROR_FILE: Integer read _GetERROR_FILE;
    {class} property ERROR_FILE_NOT_FOUND: Integer read _GetERROR_FILE_NOT_FOUND;
    {class} property ERROR_TOO_MANY_REQUESTS: Integer read _GetERROR_TOO_MANY_REQUESTS;
    {class} property INTERCEPT_BY_ISP: Integer read _GetINTERCEPT_BY_ISP;
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebViewClient')]
  JWebViewClient = interface(JObject)
  ['{50DCC937-6802-43BD-998F-5CC9385C336C}']
    { Property Methods }

    { methods }
    procedure onLoadResource(P1: JWebView; P2: JString); cdecl;
    function shouldOverrideUrlLoading(P1: JWebView; P2: JString): Boolean; cdecl;
    procedure onPageStarted(P1: JWebView; P2: JString; P3: JBitmap); cdecl;
    procedure onPageFinished(P1: JWebView; P2: JString); cdecl;
    procedure onReceivedError(P1: JWebView; P2: Integer; P3: JString; P4: JString); cdecl; overload;
    procedure onReceivedError(P1: JWebView; P2: JWebResourceRequest; P3: JWebResourceError); cdecl; overload;
    procedure onReceivedHttpError(P1: JWebView; P2: JWebResourceRequest; P3: JWebResourceResponse); cdecl;
    function shouldInterceptRequest(P1: JWebView; P2: JString): JWebResourceResponse; cdecl; overload;
    function shouldInterceptRequest(P1: JWebView; P2: JWebResourceRequest): JWebResourceResponse; cdecl; overload;
    function shouldInterceptRequest(P1: JWebView; P2: JWebResourceRequest; P3: JBundle): JWebResourceResponse; cdecl; overload;
    procedure doUpdateVisitedHistory(P1: JWebView; P2: JString; P3: Boolean); cdecl;
    procedure onFormResubmission(P1: JWebView; P2: JMessage; P3: JMessage); cdecl;
    procedure onReceivedHttpAuthRequest(P1: JWebView; P2: JHttpAuthHandler; P3: JString; P4: JString); cdecl;
    procedure onReceivedSslError(P1: JWebView; P2: JSslErrorHandler; P3: JSslError); cdecl;
    procedure onReceivedClientCertRequest(P1: JWebView; P2: JClientCertRequest); cdecl;
    procedure onScaleChanged(P1: JWebView; P2: Single; P3: Single); cdecl;
    procedure onUnhandledKeyEvent(P1: JWebView; P2: JKeyEvent); cdecl;
    function shouldOverrideKeyEvent(P1: JWebView; P2: JKeyEvent): Boolean; cdecl;
    procedure onTooManyRedirects(P1: JWebView; P2: JMessage; P3: JMessage); cdecl;
    procedure onReceivedLoginRequest(P1: JWebView; P2: JString; P3: JString; P4: JString); cdecl;
    procedure onDetectedBlankScreen(P1: JString; P2: Integer); cdecl;

    { Property }
  end;

  TJWebViewClient = class(TJavaGenericImport<JWebViewClientClass, JWebViewClient>) end;

  JWebViewDatabaseClass = interface(JObjectClass)
  ['{43995DA6-7E34-41CD-A38D-146CE42DDCD8}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance(P1: JContext): JWebViewDatabase; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/sdk/WebViewDatabase')]
  JWebViewDatabase = interface(JObject)
  ['{3133142D-ED0A-4242-94DB-5124F7518139}']
    { Property Methods }

    { methods }
    function hasUsernamePassword: Boolean; cdecl;
    procedure clearUsernamePassword; cdecl;
    function hasHttpAuthUsernamePassword: Boolean; cdecl;
    procedure clearHttpAuthUsernamePassword; cdecl;
    function hasFormData: Boolean; cdecl;
    procedure clearFormData; cdecl;

    { Property }
  end;

  TJWebViewDatabase = class(TJavaGenericImport<JWebViewDatabaseClass, JWebViewDatabase>) end;

//  JxClass = interface(JObjectClass)
//  ['{F6DBC702-0B8D-4487-ADCB-A714FAADE016}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JIX5WebViewClient; P2: JWebView; P3: JWebViewClient): Jx; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/x')]
//  Jx = interface(JObject)
//  ['{AFBBE684-61AB-4076-B465-0FAD9F74DD05}']
//    { Property Methods }
//
//    { methods }
//    procedure doUpdateVisitedHistory(P1: JIX5WebViewBase; P2: JString; P3: Boolean); cdecl;
//    procedure onFormResubmission(P1: JIX5WebViewBase; P2: JMessage; P3: JMessage); cdecl;
//    procedure onLoadResource(P1: JIX5WebViewBase; P2: JString); cdecl;
//    procedure onPageFinished(P1: JIX5WebViewBase; P2: Integer; P3: Integer; P4: JString); cdecl; overload;
//    procedure onPageStarted(P1: JIX5WebViewBase; P2: Integer; P3: Integer; P4: JString; P5: JBitmap); cdecl; overload;
//    procedure onReceivedError(P1: JIX5WebViewBase; P2: JWebResourceRequest; P3: JWebResourceError); cdecl; overload;
//    procedure onReceivedError(P1: JIX5WebViewBase; P2: Integer; P3: JString; P4: JString); cdecl; overload;
//    procedure onReceivedHttpError(P1: JIX5WebViewBase; P2: JWebResourceRequest; P3: JWebResourceResponse); cdecl;
//    procedure onReceivedHttpAuthRequest(P1: JIX5WebViewBase; P2: JHttpAuthHandler; P3: JString; P4: JString); cdecl;
//    procedure onReceivedSslError(P1: JIX5WebViewBase; P2: JSslErrorHandler; P3: JSslError); cdecl;
//    procedure onReceivedClientCertRequest(P1: JIX5WebViewBase; P2: JClientCertRequest); cdecl;
//    procedure onScaleChanged(P1: JIX5WebViewBase; P2: Single; P3: Single); cdecl;
//    procedure onUnhandledKeyEvent(P1: JIX5WebViewBase; P2: JKeyEvent); cdecl;
//    function shouldOverrideKeyEvent(P1: JIX5WebViewBase; P2: JKeyEvent): Boolean; cdecl;
//    procedure a(P1: JString); cdecl; overload;
//    function shouldOverrideUrlLoading(P1: JIX5WebViewBase; P2: JString): Boolean; cdecl;
//    procedure onTooManyRedirects(P1: JIX5WebViewBase; P2: JMessage; P3: JMessage); cdecl;
//    function shouldInterceptRequest(P1: JIX5WebViewBase; P2: JString): JWebResourceResponse; cdecl; overload;
//    function shouldInterceptRequest(P1: JIX5WebViewBase; P2: JWebResourceRequest): JWebResourceResponse; cdecl; overload;
//    function shouldInterceptRequest(P1: JIX5WebViewBase; P2: JWebResourceRequest; P3: JBundle): JWebResourceResponse; cdecl; overload;
//    procedure onReceivedLoginRequest(P1: JIX5WebViewBase; P2: JString; P3: JString; P4: JString); cdecl;
//    procedure a(P1: JWebView; P2: JString; P3: JBitmap); cdecl; overload;
//    procedure onDetectedBlankScreen(P1: JIX5WebViewBase; P2: JString; P3: Integer); cdecl;
//    procedure onPageFinished(P1: JIX5WebViewBase; P2: JString); cdecl; overload;
//    procedure onPageStarted(P1: JIX5WebViewBase; P2: JString; P3: JBitmap); cdecl; overload;
//    procedure countPVContentCacheCallBack(P1: JString); cdecl;
//
//    { Property }
//  end;

//  TJx = class(TJavaGenericImport<JxClass, Jx>) end;

//  JyClass = interface(JObjectClass)
//  ['{A40ACA4B-E4BC-4E32-AF50-B52A36F93485}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/y')]
//  Jy = interface(JObject)
//  ['{4CBF65F7-0964-4E45-AEA7-EA1427B9CD23}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJy = class(TJavaGenericImport<JyClass, Jy>) end;

//  JzClass = interface(JObjectClass)
//  ['{9766E361-82B0-4189-8BD0-2C9A203F20CC}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/sdk/z')]
//  Jz = interface(JObject)
//  ['{6439D0C1-BFD5-48D6-9794-A4B4385096C9}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: TJavaObjectArray<JString>); cdecl;
//    procedure onReceiveValue(P1: JObject); cdecl;
//
//    { Property }
//  end;

//  TJz = class(TJavaGenericImport<JzClass, Jz>) end;

//  JaClass = interface(JObjectClass)
//  ['{8969390D-478E-4875-B07D-5794006265C9}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: JFile; P3: Int64; P4: Integer): Boolean; cdecl; overload;
//    {class} function a(P1: JFile): JString; cdecl; overload;
//    {class} function a(P1: JContext; P2: JFile): Integer; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/a')]
//  Ja = interface(JObject)
//  ['{93E6C7D8-1750-49ED-8585-402E02648882}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

//  JaaClass = interface(JObjectClass)
//  ['{3B380731-B74A-454C-9433-66BEFAEF204A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: Int64; cdecl; overload;
//    {class} function a(P1: JContext): Boolean; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/aa')]
//  Jaa = interface(JObject)
//  ['{92B0DE7F-C306-4912-9729-853682A582B6}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJaa = class(TJavaGenericImport<JaaClass, Jaa>) end;

  JApnClass = interface(JObjectClass)
  ['{86B668F6-0010-43F2-A626-1865BB7CB736}']
    { static Property Methods }
    {class} function _GetAPN_UNKNOWN: Integer;
    {class} function _GetAPN_2G: Integer;
    {class} function _GetAPN_3G: Integer;
    {class} function _GetAPN_WIFI: Integer;
    {class} function _GetAPN_4G: Integer;

    { static Methods }
    {class} function init: JApn; cdecl;
    {class} function getApnInfo(P1: JContext): JString; cdecl;
    {class} function getApnType(P1: JContext): Integer; cdecl;
    {class} function isNetworkAvailable(P1: JContext): Boolean; cdecl;
    {class} function getWifiSSID(P1: JContext): JString; cdecl;

    { static Property }
    {class} property APN_UNKNOWN: Integer read _GetAPN_UNKNOWN;
    {class} property APN_2G: Integer read _GetAPN_2G;
    {class} property APN_3G: Integer read _GetAPN_3G;
    {class} property APN_WIFI: Integer read _GetAPN_WIFI;
    {class} property APN_4G: Integer read _GetAPN_4G;
  end;

  [JavaSignature('com/tencent/smtt/utils/Apn')]
  JApn = interface(JObject)
  ['{28641981-8195-4846-B1F5-92378714811A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJApn = class(TJavaGenericImport<JApnClass, JApn>) end;

//  JbClass = interface(JObjectClass)
//  ['{174555E3-869C-4291-BFA9-85E550F00358}']
//    { static Property Methods }
//    {class} function _Geta: JString;
//    {class} function _Getb: JString;
//    {class} function _Getc: JString;
//    {class} function _Getd: JString;
//    {class} function _Gete: JString;
//
//    { static Methods }
//    {class} function a(P1: JContext): JString; cdecl; overload;
//    {class} function b(P1: JContext): Integer; cdecl;
//    {class} function a(P1: JContext; P2: JString): JString; cdecl; overload;
//    {class} function c(P1: JContext): JString; cdecl;
//    {class} function d(P1: JContext): JString; cdecl;
//    {class} function a: JString; cdecl; overload;
//    {class} function e(P1: JContext): JString; cdecl;
//    {class} function f(P1: JContext): JString; cdecl;
//    {class} function a(P1: JContext; P2: JFile): JString; cdecl; overload;
//
//    { static Property }
//    {class} property a: JString read _Geta;
//    {class} property b: JString read _Getb;
//    {class} property c: JString read _Getc;
//    {class} property d: JString read _Getd;
//    {class} property e: JString read _Gete;
//  end;

//  [JavaSignature('com/tencent/smtt/utils/b')]
//  Jb = interface(JObject)
//  ['{F192E336-C781-4A45-A153-21888E18BA51}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

//  JcClass = interface(JObjectClass)
//  ['{D6B1B28D-2FF1-400C-9941-885D5E0F909F}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: TJavaArray<Byte>): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/c')]
//  Jc = interface(JObject)
//  ['{E5128DD4-FC8E-49BD-85BF-F9F7B455E849}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

//  JdClass = interface(JObjectClass)
//  ['{C906890A-F356-431C-A8B0-C72FE94A69B3}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init(P1: JString): Jd; cdecl; overload;
//    {class} function init(P1: JFile): Jd; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/d')]
//  Jd = interface(JObject)
//  ['{0BA9E196-B873-4131-A98F-F0EB6B51EC31}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Boolean); cdecl; overload;
//    procedure a(P1: Int64); cdecl; overload;
//    function a(P1: TJavaArray<Char>): Integer; cdecl; overload;
//    function a: Integer; cdecl; overload;
//    procedure close; cdecl;
//
//    { Property }
//  end;

//  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

//  Je_aClass = interface(JObjectClass)
//  ['{DFAFC1FB-F1EF-46E1-8EB4-FFA3EF050F8F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/e$a')]
//  Je_a = interface(IJavaInstance)
//  ['{2E4B9C94-E150-41FB-81DD-4692710BB192}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl; overload;
//    procedure a(P1: JThrowable); cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//
//    { Property }
//  end;

//  TJe_a = class(TJavaGenericImport<Je_aClass, Je_a>) end;

//  JeClass = interface(JObjectClass)
//  ['{22F5EE8C-79DE-4667-A584-BA7CB3511B99}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Je; cdecl; overload;
//    {class} procedure a(P1: JString; P2: Je_a); cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/e')]
//  Je = interface(JObject)
//  ['{5EC684FB-8794-48AA-AEBF-BCDA97284C54}']
//    { Property Methods }
//    function _Geta: JString;
//    procedure _Seta(aa: JString);
//
//    { methods }
//    procedure a(P1: JString; P2: JWebView; P3: JContext); cdecl; overload;
//    procedure a(P1: JString; P2: JWebView; P3: JContext; P4: JLooper); cdecl; overload;
//
//    { Property }
//    property a: JString read _Geta write _Seta;
//  end;

//  TJe = class(TJavaGenericImport<JeClass, Je>) end;

//  JfClass = interface(JObjectClass)
//  ['{F83E73FA-6F74-4C2C-AAF7-716B162C33E3}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/f')]
//  Jf = interface(JObject)
//  ['{637A4FD7-123B-4B78-A3DC-ABD9FDB7282C}']
//    { Property Methods }
//
//    { methods }
//    procedure a; cdecl; overload;
//    procedure a(P1: Integer); cdecl; overload;
//    procedure a(P1: JThrowable); cdecl; overload;
//
//    { Property }
//  end;

//  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

//  JgClass = interface(JObjectClass)
//  ['{C110D5FF-4BA1-41D4-9A57-418AC7A42D1F}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/g')]
//  Jg = interface(JObject)
//  ['{CBD6A297-4275-4582-A8F2-6F183609532B}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

//  JhClass = interface(JObjectClass)
//  ['{D0504B23-D860-48DC-9565-4324D5B5268D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/h')]
//  Jh = interface(JObject)
//  ['{D03AAA70-1C95-445D-A71E-F7EA7E913D76}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

//  JiClass = interface(JObjectClass)
//  ['{3B6C489A-9692-4C0C-B754-DA8BE4779EC3}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/i')]
//  Ji = interface(JObject)
//  ['{54B2A0F8-A9C6-4298-88E8-D5BF44C87110}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJi = class(TJavaGenericImport<JiClass, Ji>) end;

//  JjClass = interface(JObjectClass)
//  ['{01A966C6-DAE3-4A7C-B8DD-E089F7F1A9D9}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/j')]
//  Jj = interface(JObject)
//  ['{D219E1D9-E213-46FB-991A-304A73362EA1}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJj = class(TJavaGenericImport<JjClass, Jj>) end;

//  Jk_aClass = interface(JObjectClass)
//  ['{C4A0B320-DB59-474A-AFCA-29411119B00D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/k$a')]
//  Jk_a = interface(IJavaInstance)
//  ['{D458DF4C-BD1A-4C82-817F-C2676DD19F74}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JFile; P2: JFile): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJk_a = class(TJavaGenericImport<Jk_aClass, Jk_a>) end;

//  Jk_bClass = interface(JObjectClass)
//  ['{6357912D-0CA5-46DA-83EE-9F7EC7F4DEBB}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/k$b')]
//  Jk_b = interface(IJavaInstance)
//  ['{43CA3E55-B053-41A4-9E24-4BDC411241BF}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JInputStream; P2: JZipEntry; P3: JString): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJk_b = class(TJavaGenericImport<Jk_bClass, Jk_b>) end;

//  JkClass = interface(JObjectClass)
//  ['{FB6A24F8-F85C-468A-B877-DD894832E8AF}']
//    { static Property Methods }
//    {class} function _Geta: JString;
//    {class} function _Getb: Jk_a;
//
//    { static Methods }
//    {class} function a(P1: JContext; P2: Integer): JString; cdecl; overload;
//    {class} function a(P1: JContext; P2: JString; P3: Integer; P4: Boolean): JString; cdecl; overload;
//    {class} function a(P1: JContext): Boolean; cdecl; overload;
//    {class} function a(P1: JFile; P2: JFile): Boolean; cdecl; overload;
//    {class} function a(P1: JString; P2: JString): Boolean; cdecl; overload;
//    {class} function b(P1: JFile; P2: JFile): Boolean; cdecl; overload;
//    {class} function a(P1: JFile; P2: JFile; P3: JFileFilter): Boolean; cdecl; overload;
//    {class} function a(P1: JFile; P2: JFile; P3: JFileFilter; P4: Jk_a): Boolean; cdecl; overload;
//    {class} function a(P1: JFile): Boolean; cdecl; overload;
//    {class} procedure b(P1: JFile); cdecl; overload;
//    {class} procedure a(P1: JFile; P2: Boolean); cdecl; overload;
//    {class} function c(P1: JFile): Boolean; cdecl; overload;
//    {class} function a(P1: JInputStream; P2: JOutputStream): Int64; cdecl; overload;
//    {class} function b(P1: JInputStream; P2: JOutputStream): Integer; cdecl; overload;
//    {class} function a(P1: JInputStream): JByteArrayOutputStream; cdecl; overload;
//    {class} function b(P1: JInputStream): TJavaArray<Byte>; cdecl; overload;
//    {class} function a: JFile; cdecl; overload;
//    {class} function b: Boolean; cdecl; overload;
//    {class} function c: JFile; cdecl; overload;
//    {class} function d(P1: JFile): JFileOutputStream; cdecl;
//    {class} function b(P1: JContext): Boolean; cdecl; overload;
//    {class} function c(P1: JContext): JString; cdecl; overload;
//    {class} function a(P1: JContext; P2: Boolean; P3: JString): JFile; cdecl; overload;
//    {class} function b(P1: JContext; P2: Boolean; P3: JString): JFileOutputStream; cdecl; overload;
//    {class} function a(P1: JContext; P2: JFileOutputStream): JFileLock; cdecl; overload;
//    {class} procedure a(P1: JFileLock; P2: JFileOutputStream); cdecl; overload;
//
//    { static Property }
//    {class} property a: JString read _Geta;
//    {class} property b: Jk_a read _Getb;
//  end;

//  [JavaSignature('com/tencent/smtt/utils/k')]
//  Jk = interface(JObject)
//  ['{7676F616-C8BF-43A2-91CE-B48B0C01204A}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJk = class(TJavaGenericImport<JkClass, Jk>) end;

//  JlClass = interface(JObjectClass)
//  ['{BD1C0BCE-3FB7-4FE3-94C2-194EF30DC428}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/l')]
//  Jl = interface(JObject)
//  ['{CDBAD626-EC4E-4659-9859-E9A488EF6396}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JInputStream; P2: JZipEntry; P3: JString): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJl = class(TJavaGenericImport<JlClass, Jl>) end;

  JLogFileUtilsClass = interface(JObjectClass)
  ['{1EEE0C97-DE83-4657-A8D9-29F51E2C8E64}']
    { static Property Methods }

    { static Methods }
    {class} function init: JLogFileUtils; cdecl;
    {class} procedure writeDataToStorage(P1: JFile; P2: JString; P3: TJavaArray<Byte>; P4: JString; P5: Boolean); cdecl;
    {class} procedure closeOutputStream(P1: JOutputStream); cdecl;
    {class} function encrypt(P1: JString; P2: JString): TJavaArray<Byte>; cdecl;
    {class} function createKey: JString; cdecl;
    {class} function encryptKey(P1: JString; P2: JString): TJavaArray<Byte>; cdecl;
    {class} function createHeaderText(P1: JString; P2: JString): TJavaArray<Byte>; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/utils/LogFileUtils')]
  JLogFileUtils = interface(JObject)
  ['{88D13FFD-DE4B-41C7-BA2D-0A1327587977}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLogFileUtils = class(TJavaGenericImport<JLogFileUtilsClass, JLogFileUtils>) end;

//  JmClass = interface(JObjectClass)
//  ['{2295BDE5-34AF-42FB-BB5F-761B149E6584}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/m')]
//  Jm = interface(JObject)
//  ['{0FAFFF88-0F9F-497D-99E2-3D2930CD553C}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JFile; P2: JFile): Boolean; cdecl;
//
//    { Property }
//  end;

//  TJm = class(TJavaGenericImport<JmClass, Jm>) end;

//  Jn_aClass = interface(JObjectClass)
//  ['{1A9EA9ED-6FDE-47D0-98FC-FF0CB9651D44}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/n$a')]
//  Jn_a = interface(IJavaInstance)
//  ['{7A48A528-7F7E-4FB4-BB0B-0B4C00F57CC0}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: Integer); cdecl;
//
//    { Property }
//  end;

//  TJn_a = class(TJavaGenericImport<Jn_aClass, Jn_a>) end;

//  JnClass = interface(JObjectClass)
//  ['{9A6C39FF-E891-484C-9F93-551D31A458B5}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JString; P2: TJavaArray<Byte>; P3: Jn_a; P4: Boolean): JString; cdecl; overload;
//    {class} function a(P1: JString; P2: JMap; P3: TJavaArray<Byte>; P4: Jn_a; P5: Boolean): JString; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/n')]
//  Jn = interface(JObject)
//  ['{98875D57-429F-4A72-B3D2-EAC5CF0C7B60}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJn = class(TJavaGenericImport<JnClass, Jn>) end;

//  JoClass = interface(JObjectClass)
//  ['{2AF12BB3-30DD-4958-971E-2A5ABC4C7A33}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JString): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/o')]
//  Jo = interface(JObject)
//  ['{D8163377-62EA-4224-8DA6-BA7EE2781791}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJo = class(TJavaGenericImport<JoClass, Jo>) end;

//  JpClass = interface(JObjectClass)
//  ['{3E1DF6E4-1285-45E0-BD99-0C24863E9E35}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: Jp; cdecl; overload;
//    {class} function b(P1: TJavaArray<Byte>): JString; cdecl; overload;
//    {class} function a(P1: TJavaArray<Byte>; P2: JString): TJavaArray<Byte>; cdecl; overload;
//    {class} function c: JString; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/p')]
//  Jp = interface(JObject)
//  ['{6992289D-0CEF-4073-B84D-C5644D706CF5}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload;
//    function c(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload;
//    function b: JString; cdecl; overload;
//
//    { Property }
//  end;

//  TJp = class(TJavaGenericImport<JpClass, Jp>) end;

//  JqClass = interface(JObjectClass)
//  ['{EF9E3189-5427-41B4-9727-3619E72C43CB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: Jq; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/q')]
//  Jq = interface(JObject)
//  ['{6F6F5EFC-28DF-446D-B25E-ACD5BB30D5C2}']
//    { Property Methods }
//
//    { methods }
//    procedure b; cdecl;
//    function c: JString; cdecl;
//    function a(P1: JString): JString; cdecl; overload;
//    function a(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload;
//
//    { Property }
//  end;

//  TJq = class(TJavaGenericImport<JqClass, Jq>) end;

//  JrClass = interface(JObjectClass)
//  ['{526298EA-7FB1-4E0B-A656-E6A310DB8873}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JString; P2: JString): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/r')]
//  Jr = interface(JObject)
//  ['{2C4A47A3-47CC-4FFC-8037-7D36F77F94D3}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJr = class(TJavaGenericImport<JrClass, Jr>) end;

//  JsClass = interface(JObjectClass)
//  ['{2C7F7443-73DE-4082-BCBF-DCDDF208FA1E}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a: Js; cdecl; overload;
//    {class} procedure b(P1: JContext; P2: JString); cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/s')]
//  Js = interface(JObject)
//  ['{D1489E23-385F-4D39-A239-1D292B99CFF4}']
//    { Property Methods }
//
//    { methods }
//    function a(P1: JContext; P2: JString): Boolean; cdecl; overload;
//    function a(P1: JString; P2: JContext; P3: Integer): JPackageInfo; cdecl; overload;
//
//    { Property }
//  end;

//  TJs = class(TJavaGenericImport<JsClass, Js>) end;

//  JtClass = interface(JObjectClass)
//  ['{1FC40396-38F7-4AD9-87F9-701D4130A89D}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/t')]
//  Jt = interface(JObject)
//  ['{0FB82DB3-DF13-4B2C-AA3F-447DA6420248}']
//    { Property Methods }
//
//    { methods }
//    procedure handleMessage(P1: JMessage); cdecl;
//
//    { Property }
//  end;

//  TJt = class(TJavaGenericImport<JtClass, Jt>) end;

  JTbsLogClass = interface(JObjectClass)
  ['{3E67EE0D-E594-4DD2-8194-642C3C00CEB4}']
    { static Property Methods }
    {class} function _GetTBSLOG_CODE_SDK_BASE: Integer;
    {class} function _GetTBSLOG_CODE_SDK_INIT: Integer;
    {class} function _GetTBSLOG_CODE_SDK_LOAD_ERROR: Integer;
    {class} function _GetTBSLOG_CODE_SDK_INVOKE_ERROR: Integer;
    {class} function _GetTBSLOG_CODE_SDK_SELF_MODE: Integer;
    {class} function _GetTBSLOG_CODE_SDK_THIRD_MODE: Integer;
    {class} function _GetTBSLOG_CODE_SDK_NO_SHARE_X5CORE: Integer;
    {class} function _GetTBSLOG_CODE_SDK_CONFLICT_X5CORE: Integer;
    {class} function _GetTBSLOG_CODE_SDK_UNAVAIL_X5CORE: Integer;
    {class} function _GetsTbsLogList: JList;
    {class} function _GetsLogMaxCount: Integer;

    { static Methods }
    {class} function init: JTbsLog; cdecl;
    {class} procedure app_extra(P1: JString; P2: JContext); cdecl;
    {class} procedure i(P1: JString; P2: JString); cdecl; overload;
    {class} procedure i(P1: JString; P2: JString; P3: Boolean); cdecl; overload;
    {class} procedure e(P1: JString; P2: JString); cdecl; overload;
    {class} procedure e(P1: JString; P2: JString; P3: Boolean); cdecl; overload;
    {class} procedure w(P1: JString; P2: JString); cdecl; overload;
    {class} procedure w(P1: JString; P2: JString; P3: Boolean); cdecl; overload;
    {class} procedure d(P1: JString; P2: JString); cdecl; overload;
    {class} procedure d(P1: JString; P2: JString; P3: Boolean); cdecl; overload;
    {class} procedure v(P1: JString; P2: JString); cdecl; overload;
    {class} procedure v(P1: JString; P2: JString; P3: Boolean); cdecl; overload;
    {class} procedure setLogView(P1: JTextView); cdecl;
    {class} function setTbsLogClient(P1: JTbsLogClient): Boolean; cdecl;
    {class} function getTbsLogFilePath: JString; cdecl;
    {class} procedure initIfNeed(P1: JContext); cdecl;
    {class} procedure writeLogToDisk; cdecl;
    {class} procedure addLog(P1: Integer; P2: JString; P3: TJavaObjectArray<JObject>); cdecl;

    { static Property }
    {class} property TBSLOG_CODE_SDK_BASE: Integer read _GetTBSLOG_CODE_SDK_BASE;
    {class} property TBSLOG_CODE_SDK_INIT: Integer read _GetTBSLOG_CODE_SDK_INIT;
    {class} property TBSLOG_CODE_SDK_LOAD_ERROR: Integer read _GetTBSLOG_CODE_SDK_LOAD_ERROR;
    {class} property TBSLOG_CODE_SDK_INVOKE_ERROR: Integer read _GetTBSLOG_CODE_SDK_INVOKE_ERROR;
    {class} property TBSLOG_CODE_SDK_SELF_MODE: Integer read _GetTBSLOG_CODE_SDK_SELF_MODE;
    {class} property TBSLOG_CODE_SDK_THIRD_MODE: Integer read _GetTBSLOG_CODE_SDK_THIRD_MODE;
    {class} property TBSLOG_CODE_SDK_NO_SHARE_X5CORE: Integer read _GetTBSLOG_CODE_SDK_NO_SHARE_X5CORE;
    {class} property TBSLOG_CODE_SDK_CONFLICT_X5CORE: Integer read _GetTBSLOG_CODE_SDK_CONFLICT_X5CORE;
    {class} property TBSLOG_CODE_SDK_UNAVAIL_X5CORE: Integer read _GetTBSLOG_CODE_SDK_UNAVAIL_X5CORE;
    {class} property sTbsLogList: JList read _GetsTbsLogList;
    {class} property sLogMaxCount: Integer read _GetsLogMaxCount;
  end;

  [JavaSignature('com/tencent/smtt/utils/TbsLog')]
  JTbsLog = interface(JObject)
  ['{E2242032-60C4-4E14-BA1F-FC3213F3A56E}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTbsLog = class(TJavaGenericImport<JTbsLogClass, JTbsLog>) end;

//  JTbsLogClient_aClass = interface(JObjectClass)
//  ['{4FD0F420-8AD9-4C70-9231-77A37185FA1E}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/TbsLogClient$a')]
//  JTbsLogClient_a = interface(JObject)
//  ['{F8A635A0-0E58-4045-A98B-A4DB656CD1E6}']
//    { Property Methods }
//
//    { methods }
//    procedure run; cdecl;
//
//    { Property }
//  end;

//  TJTbsLogClient_a = class(TJavaGenericImport<JTbsLogClient_aClass, JTbsLogClient_a>) end;

  JTbsLogClientClass = interface(JObjectClass)
  ['{B95CFB77-1990-427E-BAE0-8BB639DE6F32}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JContext): JTbsLogClient; cdecl;

    { static Property }
  end;

  [JavaSignature('com/tencent/smtt/utils/TbsLogClient')]
  JTbsLogClient = interface(JObject)
  ['{3A702BCF-C9A9-4E25-B90D-D022E192F6D3}']
    { Property Methods }

    { methods }
    procedure writeLog(P1: JString); cdecl;
    procedure writeLogToDisk; cdecl;
    procedure showLog(P1: JString); cdecl;
    procedure setLogView(P1: JTextView); cdecl;
    procedure i(P1: JString; P2: JString); cdecl;
    procedure e(P1: JString; P2: JString); cdecl;
    procedure w(P1: JString; P2: JString); cdecl;
    procedure d(P1: JString; P2: JString); cdecl;
    procedure v(P1: JString; P2: JString); cdecl;

    { Property }
  end;

  TJTbsLogClient = class(TJavaGenericImport<JTbsLogClientClass, JTbsLogClient>) end;

//  JuClass = interface(JObjectClass)
//  ['{590F37A6-3735-4FA8-B996-329E4D1BE268}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Ju; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/u')]
//  Ju = interface(JObject)
//  ['{4852C1C0-7A23-4C3B-95F4-838FA4A55770}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JString); cdecl; overload;
//
//    { Property }
//  end;

//  TJu = class(TJavaGenericImport<JuClass, Ju>) end;

//  JvClass = interface(JObjectClass)
//  ['{A654A730-A074-4949-AB1E-CDEA432A3D4A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JString; P2: JString): JObject; cdecl; overload;
//    {class} function a(P1: JClass; P2: JString; P3: TJavaObjectArray<JClass>; P4: TJavaObjectArray<JObject>): JObject; cdecl; overload;
//    {class} function a(P1: JObject; P2: JString): JObject; cdecl; overload;
//    {class} function a(P1: JObject; P2: JString; P3: TJavaObjectArray<JClass>; P4: TJavaObjectArray<JObject>): JObject; cdecl; overload;
//    {class} function a(P1: JObject; P2: JString; P3: TJavaObjectArray<JClass>): JMethod; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/v')]
//  Jv = interface(JObject)
//  ['{4A52F45A-CAC4-4348-870C-3C0D641ADADA}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJv = class(TJavaGenericImport<JvClass, Jv>) end;

//  JwClass = interface(JObjectClass)
//  ['{56CABF38-7B95-4518-8B0C-06B5B05AE5E5}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): JString; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/w')]
//  Jw = interface(JObject)
//  ['{0F1D136D-5C8F-4623-A516-AA707B37B962}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJw = class(TJavaGenericImport<JwClass, Jw>) end;

//  JxClass = interface(JObjectClass)
//  ['{9D54CA0D-28D6-42F1-B6E0-7D35FE35000A}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jx; cdecl; overload;
//    {class} function a: Jx; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/x')]
//  Jx = interface(JObject)
//  ['{32FE5E37-760C-4DF0-AE58-44193566AB40}']
//    { Property Methods }
//
//    { methods }
//    function b: JString; cdecl;
//    function c: JString; cdecl;
//    function d: JString; cdecl;
//    function e: JString; cdecl;
//    function f: JString; cdecl;
//
//    { Property }
//  end;

//  TJx = class(TJavaGenericImport<JxClass, Jx>) end;

//  JyClass = interface(JObjectClass)
//  ['{8156EF15-7FFD-433F-A524-9B842882B4EB}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function a(P1: JContext): Jy; cdecl; overload;
//    {class} function a: Jy; cdecl; overload;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/y')]
//  Jy = interface(JObject)
//  ['{E0657620-B204-4F99-8301-B4A8C3DAEDCB}']
//    { Property Methods }
//    function _Geta: Boolean;
//    procedure _Seta(aa: Boolean);
//
//    { methods }
//    procedure b; cdecl;
//    procedure a(P1: Boolean); cdecl; overload;
//    procedure c; cdecl;
//
//    { Property }
//    property a: Boolean read _Geta write _Seta;
//  end;

//  TJy = class(TJavaGenericImport<JyClass, Jy>) end;

//  Jz_aClass = interface(JObjectClass)
//  ['{6F2638EF-CCA4-461B-AAE9-4DDF68686EA7}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/z$a')]
//  Jz_a = interface(JObject)
//  ['{FB503B6C-6D40-4F93-8B90-96DEB259EDE2}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJz_a = class(TJavaGenericImport<Jz_aClass, Jz_a>) end;

//  Jz_bClass = interface(JObjectClass)
//  ['{4A67E1B2-DCC7-47B3-B1DF-9B746101E612}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/z$b')]
//  Jz_b = interface(JObject)
//  ['{066BEAC4-D8EE-4E1E-B4D7-FD7283D5F532}']
//    { Property Methods }
//
//    { methods }
//
//    { Property }
//  end;

//  TJz_b = class(TJavaGenericImport<Jz_bClass, Jz_b>) end;

//  JzClass = interface(JObjectClass)
//  ['{62B1A3A5-432B-47ED-961D-A513C93B1FF0}']
//    { static Property Methods }
//
//    { static Methods }
//    {class} function init: Jz; cdecl;
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/smtt/utils/z')]
//  Jz = interface(JObject)
//  ['{E0F3BCA2-A60F-4171-98E5-12B75D74ABC4}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JFile); cdecl; overload;
//    procedure b(P1: JFile); cdecl;
//    function a: Boolean; cdecl; overload;
//
//    { Property }
//  end;

//  TJz = class(TJavaGenericImport<JzClass, Jz>) end;

//  JaClass = interface(JObjectClass)
//  ['{78309EA5-766E-4501-AC92-1C82090EC5CE}']
//    { static Property Methods }
//
//    { static Methods }
//
//    { static Property }
//  end;

//  [JavaSignature('com/tencent/tbs/video/interfaces/a')]
//  Ja = interface(IJavaInstance)
//  ['{13E0C5F3-0CA9-4083-AB81-8D1B8087F6EE}']
//    { Property Methods }
//
//    { methods }
//    procedure a(P1: JIUserStateChangedListener); cdecl; overload;
//    procedure a(P1: Integer; P2: Integer; P3: JIntent); cdecl; overload;
//
//    { Property }
//  end;

//  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

  JIUserStateChangedListenerClass = interface(JObjectClass)
  ['{473B7382-76ED-4698-BC8D-4A1D2972270D}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/tencent/tbs/video/interfaces/IUserStateChangedListener')]
  JIUserStateChangedListener = interface(IJavaInstance)
  ['{FECEA26E-223F-4008-BEB3-75C20A9828B8}']
    { Property Methods }

    { methods }
    procedure onUserStateChanged; cdecl;

    { Property }
  end;

  TJIUserStateChangedListener = class(TJavaGenericImport<JIUserStateChangedListenerClass, JIUserStateChangedListener>) end;

  JThirdAppInfoNewClass = interface(JObjectClass)
  ['{015C078B-9A71-4C91-B275-923938DD1A05}']
    { static Property Methods }

    { static Methods }
    {class} function init: JThirdAppInfoNew; cdecl;

    { static Property }
  end;

  [JavaSignature('MTT/ThirdAppInfoNew')]
  JThirdAppInfoNew = interface(JObject)
  ['{D93A9047-4705-476B-A47D-0E0E5BBC62D0}']
    { Property Methods }
    function _GetsAppName: JString;
    procedure _SetsAppName(asAppName: JString);
    function _GetsTime: JString;
    procedure _SetsTime(asTime: JString);
    function _GetsQua2: JString;
    procedure _SetsQua2(asQua2: JString);
    function _GetsLc: JString;
    procedure _SetsLc(asLc: JString);
    function _GetsGuid: JString;
    procedure _SetsGuid(asGuid: JString);
    function _GetsImei: JString;
    procedure _SetsImei(asImei: JString);
    function _GetsImsi: JString;
    procedure _SetsImsi(asImsi: JString);
    function _GetsMac: JString;
    procedure _SetsMac(asMac: JString);
    function _GetiPv: Int64;
    procedure _SetiPv(aiPv: Int64);
    function _GetiCoreType: Integer;
    procedure _SetiCoreType(aiCoreType: Integer);
    function _GetsAppVersionName: JString;
    procedure _SetsAppVersionName(asAppVersionName: JString);
    function _GetsAppSignature: JString;
    procedure _SetsAppSignature(asAppSignature: JString);
    function _GetsAndroidID: JString;
    procedure _SetsAndroidID(asAndroidID: JString);
    function _GetsWifiConnectedTime: Int64;
    procedure _SetsWifiConnectedTime(asWifiConnectedTime: Int64);
    function _GetlocalCoreVersion: Integer;
    procedure _SetlocalCoreVersion(alocalCoreVersion: Integer);

    { methods }

    { Property }
    property sAppName: JString read _GetsAppName write _SetsAppName;
    property sTime: JString read _GetsTime write _SetsTime;
    property sQua2: JString read _GetsQua2 write _SetsQua2;
    property sLc: JString read _GetsLc write _SetsLc;
    property sGuid: JString read _GetsGuid write _SetsGuid;
    property sImei: JString read _GetsImei write _SetsImei;
    property sImsi: JString read _GetsImsi write _SetsImsi;
    property sMac: JString read _GetsMac write _SetsMac;
    property iPv: Int64 read _GetiPv write _SetiPv;
    property iCoreType: Integer read _GetiCoreType write _SetiCoreType;
    property sAppVersionName: JString read _GetsAppVersionName write _SetsAppVersionName;
    property sAppSignature: JString read _GetsAppSignature write _SetsAppSignature;
    property sAndroidID: JString read _GetsAndroidID write _SetsAndroidID;
    property sWifiConnectedTime: Int64 read _GetsWifiConnectedTime write _SetsWifiConnectedTime;
    property localCoreVersion: Integer read _GetlocalCoreVersion write _SetlocalCoreVersion;
  end;

  TJThirdAppInfoNew = class(TJavaGenericImport<JThirdAppInfoNewClass, JThirdAppInfoNew>) end;

{$ENDIF}
implementation
//{$IFDEF ANDROID}
//
//
//procedure RegisterTypes;
//begin
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JDexLoader_TbsCorePrivateClassLoader',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JDexLoader_TbsCorePrivateClassLoader));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JDexLoader',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JDexLoader));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebChromeClientExtension',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebChromeClientExtension));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettingsExtension',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettingsExtension));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewClientExtension',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewClientExtension));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewExtension',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewExtension));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JProxyWebChromeClientExtension',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JProxyWebChromeClientExtension));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JProxyWebViewClientExtension',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JProxyWebViewClientExtension));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JX5ProxyWebViewClientExtension',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JX5ProxyWebViewClientExtension));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JClientCertRequest',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JClientCertRequest));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JConsoleMessage_MessageLevel',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JConsoleMessage_MessageLevel));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JConsoleMessage',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JConsoleMessage));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JDownloadListener',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JDownloadListener));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JGeolocationPermissionsCallback',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JGeolocationPermissionsCallback));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JHttpAuthHandler',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JHttpAuthHandler));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIconListener',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIconListener));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JISelectionInterface',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JISelectionInterface));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5DateSorter',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5DateSorter));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5ScrollListener',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5ScrollListener));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebBackForwardList',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebBackForwardList));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebBackForwardListClient',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebBackForwardListClient));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebChromeClient_CustomViewCallback',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebChromeClient_CustomViewCallback));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebChromeClient_FileChooserParams',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebChromeClient_FileChooserParams));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebChromeClient',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebChromeClient));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebHistoryItem',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebHistoryItem));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettings_LayoutAlgorithm',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettings_LayoutAlgorithm));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettings_PluginState',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettings_PluginState));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettings_RenderPriority',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettings_RenderPriority));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettings_TextSize',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettings_TextSize));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettings_ZoomDensity',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettings_ZoomDensity));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettings',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebSettings));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_FindListener',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_FindListener));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_HitTestResult_AnchorData',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_HitTestResult_AnchorData));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_HitTestResult_EditableData',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_HitTestResult_EditableData));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_HitTestResult_ImageAnchorData',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_HitTestResult_ImageAnchorData));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_HitTestResult_ImageData',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_HitTestResult_ImageData));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_HitTestResult',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_HitTestResult));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_ImageInfo',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_ImageInfo));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_PictureListener',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_PictureListener));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_WebViewTransport',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase_WebViewTransport));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewBase));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewClient',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIX5WebViewClient));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JJsPromptResult',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JJsPromptResult));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JJsResult',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JJsResult));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JMediaAccessPermissionsCallback',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JMediaAccessPermissionsCallback));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JQuotaUpdater',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JQuotaUpdater));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JSslError',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JSslError));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JSslErrorHandler',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JSslErrorHandler));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebResourceError',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebResourceError));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebResourceRequest',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebResourceRequest));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebResourceResponse',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebResourceResponse));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JLibraryLoader',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JLibraryLoader));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jlibwebp_1',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jlibwebp_1));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jlibwebp',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jlibwebp));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JProxyWebChromeClient',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JProxyWebChromeClient));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JProxyWebViewClient',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JProxyWebViewClient));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JX5ProxyWebChromeClient',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JX5ProxyWebChromeClient));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JX5ProxyWebViewClient',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JX5ProxyWebViewClient));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsCoreSettings',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsCoreSettings));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebViewWizardBase',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebViewWizardBase));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Ja',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jb',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jc',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jd_1',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jd_1));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jd_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jd_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jd_b',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jd_b));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jd',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Ja',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jaa',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jaa));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jab',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jab));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jac',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jac));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jad',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jad));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jae_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jae_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jae_b',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jae_b));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jae_c',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jae_c));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jae_d',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jae_d));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jae_e',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jae_e));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jae_f',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jae_f));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jae_g',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jae_g));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jae',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jae));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jaf',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jaf));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jag',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jag));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jah',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jah));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jai',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jai));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jaj',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jaj));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jak',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jak));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jal',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jal));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jam',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jam));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jan',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jan));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jao',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jao));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jap',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jap));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jaq',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jaq));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jar',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jar));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jas',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jas));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jat',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jat));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jau',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jau));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jav',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jav));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jaw',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jaw));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jax',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jax));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jay',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jay));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jaz',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jaz));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Ja',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jb',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jc',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jd',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Je',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jf',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jg',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jh',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Ji',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Ji));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jb',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jba',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jba));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbb',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbb));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbc',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbc));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbd',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbd));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbe',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbe));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbf',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbf));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbg',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbg));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbh',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbh));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbi',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbi));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbj',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbj));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbk',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbk));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbl',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbl));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbm',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbm));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbn',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbn));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbo',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbo));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jbp',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jbp));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jc',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JCacheManager',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JCacheManager));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JCookieManager_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JCookieManager_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JCookieManager',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JCookieManager));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JCookieSyncManager',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JCookieSyncManager));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jd',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JDownloadListener',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JDownloadListener));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Je',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jf',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jg',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jh',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Ji',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Ji));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jj',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jj));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jk',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jk));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jl',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jl));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jm',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jm));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jn',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jn));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jo',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jo));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jp',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jp));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jq',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jq));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JQbSdk_PreInitCallback',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JQbSdk_PreInitCallback));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JQbSdk',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JQbSdk));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jr',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jr));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Js_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Js_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Js',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Js));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient_b',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient_b));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient_c',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient_c));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient_d',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient_d));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient_e',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient_e));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient_f',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient_f));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JSystemWebChromeClient));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jt',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jt));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsConfig',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsConfig));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsCoreLoadStat_TbsSequenceQueue',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsCoreLoadStat_TbsSequenceQueue));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsCoreLoadStat',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsCoreLoadStat));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsDownloadConfig_TbsConfigKey',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsDownloadConfig_TbsConfigKey));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsDownloadConfig',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsDownloadConfig));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsDownloader_TbsDownloaderCallback',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsDownloader_TbsDownloaderCallback));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsDownloader',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsDownloader));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsLinuxToolsJni',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsLinuxToolsJni));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsListener_ErrorCode',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsListener_ErrorCode));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsListener',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsListener));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsLogReport_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsLogReport_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsLogReport_EventType',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsLogReport_EventType));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsLogReport_TbsLogInfo',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsLogReport_TbsLogInfo));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsLogReport',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsLogReport));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsReaderView_ReaderCallback',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsReaderView_ReaderCallback));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsReaderView',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsReaderView));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsShareManager',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsShareManager));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsVideo',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsVideo));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Ju',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Ju));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jv',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jv));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JValueCallback',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JValueCallback));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JVideoActivity',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JVideoActivity));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jw',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jw));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebBackForwardList',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebBackForwardList));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebChromeClient_FileChooserParams',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebChromeClient_FileChooserParams));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebChromeClient',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebChromeClient));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebHistoryItem',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebHistoryItem));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebIconDatabase_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebIconDatabase_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebIconDatabase',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebIconDatabase));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebSettings_LayoutAlgorithm',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebSettings_LayoutAlgorithm));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebSettings_PluginState',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebSettings_PluginState));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebSettings_RenderPriority',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebSettings_RenderPriority));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebSettings_TextSize',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebSettings_TextSize));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebSettings_ZoomDensity',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebSettings_ZoomDensity));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebSettings',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebSettings));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebStorage_QuotaUpdater',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebStorage_QuotaUpdater));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebStorage',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebStorage));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebView_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebView_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebView_b',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebView_b));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebView_HitTestResult',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebView_HitTestResult));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebView_PictureListener',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebView_PictureListener));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebView_WebViewTransport',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebView_WebViewTransport));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebView',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebView));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebViewCallbackClient',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebViewCallbackClient));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebViewClient',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebViewClient));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JWebViewDatabase',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JWebViewDatabase));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jx',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jx));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jy',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jy));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jz',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jz));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Ja',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jaa',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jaa));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JApn',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JApn));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jb',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jb));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jc',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jc));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jd',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jd));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Je_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Je_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Je',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Je));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jf',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jf));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jg',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jg));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jh',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jh));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Ji',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Ji));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jj',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jj));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jk_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jk_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jk_b',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jk_b));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jk',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jk));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jl',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jl));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JLogFileUtils',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JLogFileUtils));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jm',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jm));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jn_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jn_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jn',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jn));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jo',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jo));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jp',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jp));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jq',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jq));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jr',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jr));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Js',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Js));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jt',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jt));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsLog',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsLog));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsLogClient_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsLogClient_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JTbsLogClient',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JTbsLogClient));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Ju',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Ju));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jv',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jv));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jw',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jw));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jx',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jx));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jy',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jy));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jz_a',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jz_a));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jz_b',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jz_b));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Jz',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Jz));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.Ja',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.Ja));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JIUserStateChangedListener',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JIUserStateChangedListener));
//  TRegTypes.RegisterType('Androidapi.JNI.tbs_sdk_thirdapp.JThirdAppInfoNew',
//    TypeInfo(Androidapi.JNI.tbs_sdk_thirdapp.JThirdAppInfoNew));
//end;
//
//
//initialization
//  RegisterTypes;
//
//{$ENDIF}

end.

