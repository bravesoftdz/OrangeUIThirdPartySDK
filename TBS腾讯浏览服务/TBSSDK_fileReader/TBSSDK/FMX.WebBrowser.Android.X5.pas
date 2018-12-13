//copyright delphiteacher QQ:452330643
//2017-12-27 02:46:00
//未经授权,严禁他人使用

unit FMX.WebBrowser.Android.X5;

interface

{$SCOPEDENUMS ON}

{$IFDEF ANDROID}

uses
  System.Classes, System.Types, System.StrUtils, System.SysUtils,  System.IOUtils,
  System.RTLConsts,

  FMX.Platform,
  FMX.Platform.Android,
  FMX.WebBrowser,
  FMX.Types,
  FMX.Dialogs,

  Androidapi.JNI.tbs_sdk_thirdapp,
  Androidapi.JNI.x5web_assistant,


//
//  //下载需要使用
//  Androidapi.JNI.android.app.DownloadManager,
//  Androidapi.JNI.android.app.DownloadManager_Request,
//  Androidapi.JNI.android.app.DownloadManager_Query,


  //要去掉,因为这个单元里面也有JWebView,避免冲突
//  Androidapi.JNI.Webkit,
  Androidapi.JNI.Embarcadero,
  Androidapi.JNI.Widget,
  FMX.Helpers.Android,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNIBridge,
  Androidapi.JNI.Os,
  Androidapi.JNI.Net,
  Androidapi.NativeActivity,
  Androidapi.IOUtils,
  Androidapi.Helpers,
  Androidapi.JNI.App,


  FMX.Graphics,
  FMX.Forms,
  FMX.Surfaces;




type
// ===== Forward declarations =====



  //需要使用JEnvironment来获取到SD卡的路径
  JEnvironment = interface; //android.os.Environment

// ===== Interface declarations =====

  JEnvironmentClass = interface(JObjectClass)
  ['{C910516D-F0DA-441F-99E3-9B83A35DFCC7}']
    { static Property Methods }
    {class} function _GetDIRECTORY_MUSIC: JString; //Ljava/lang/String;
    {class} function _GetDIRECTORY_PODCASTS: JString; //Ljava/lang/String;
    {class} function _GetDIRECTORY_RINGTONES: JString; //Ljava/lang/String;
    {class} function _GetDIRECTORY_ALARMS: JString; //Ljava/lang/String;
    {class} function _GetDIRECTORY_NOTIFICATIONS: JString; //Ljava/lang/String;
    {class} function _GetDIRECTORY_PICTURES: JString; //Ljava/lang/String;
    {class} function _GetDIRECTORY_MOVIES: JString; //Ljava/lang/String;
    {class} function _GetDIRECTORY_DOWNLOADS: JString; //Ljava/lang/String;
    {class} function _GetDIRECTORY_DCIM: JString; //Ljava/lang/String;
    {class} function _GetDIRECTORY_DOCUMENTS: JString; //Ljava/lang/String;
    {class} function _GetMEDIA_UNKNOWN: JString; //Ljava/lang/String;
    {class} function _GetMEDIA_REMOVED: JString; //Ljava/lang/String;
    {class} function _GetMEDIA_UNMOUNTED: JString; //Ljava/lang/String;
    {class} function _GetMEDIA_CHECKING: JString; //Ljava/lang/String;
    {class} function _GetMEDIA_NOFS: JString; //Ljava/lang/String;
    {class} function _GetMEDIA_MOUNTED: JString; //Ljava/lang/String;
    {class} function _GetMEDIA_MOUNTED_READ_ONLY: JString; //Ljava/lang/String;
    {class} function _GetMEDIA_SHARED: JString; //Ljava/lang/String;
    {class} function _GetMEDIA_BAD_REMOVAL: JString; //Ljava/lang/String;
    {class} function _GetMEDIA_UNMOUNTABLE: JString; //Ljava/lang/String;

    { static Methods }
    {class} function init: JEnvironment; cdecl; //()V
    {class} function getRootDirectory: JFile; cdecl; //()Ljava/io/File;
    {class} function getDataDirectory: JFile; cdecl; //()Ljava/io/File;
    {class} function getExternalStorageDirectory: JFile; cdecl; //()Ljava/io/File;
    {class} function getExternalStoragePublicDirectory(P1: JString): JFile; cdecl; //(Ljava/lang/String;)Ljava/io/File;
    {class} function getDownloadCacheDirectory: JFile; cdecl; //()Ljava/io/File;
    {class} function getExternalStorageState: JString; cdecl; //()Ljava/lang/String;
    {class} function getStorageState(P1: JFile): JString; cdecl; //(Ljava/io/File;)Ljava/lang/String;
    {class} function isExternalStorageRemovable: Boolean; cdecl; //()Z
    {class} function isExternalStorageEmulated: Boolean; cdecl; //()Z

    { static Property }
    {class} property DIRECTORY_MUSIC: JString read _GetDIRECTORY_MUSIC;
    {class} property DIRECTORY_PODCASTS: JString read _GetDIRECTORY_PODCASTS;
    {class} property DIRECTORY_RINGTONES: JString read _GetDIRECTORY_RINGTONES;
    {class} property DIRECTORY_ALARMS: JString read _GetDIRECTORY_ALARMS;
    {class} property DIRECTORY_NOTIFICATIONS: JString read _GetDIRECTORY_NOTIFICATIONS;
    {class} property DIRECTORY_PICTURES: JString read _GetDIRECTORY_PICTURES;
    {class} property DIRECTORY_MOVIES: JString read _GetDIRECTORY_MOVIES;
    {class} property DIRECTORY_DOWNLOADS: JString read _GetDIRECTORY_DOWNLOADS;
    {class} property DIRECTORY_DCIM: JString read _GetDIRECTORY_DCIM;
    {class} property DIRECTORY_DOCUMENTS: JString read _GetDIRECTORY_DOCUMENTS;
    {class} property MEDIA_UNKNOWN: JString read _GetMEDIA_UNKNOWN;
    {class} property MEDIA_REMOVED: JString read _GetMEDIA_REMOVED;
    {class} property MEDIA_UNMOUNTED: JString read _GetMEDIA_UNMOUNTED;
    {class} property MEDIA_CHECKING: JString read _GetMEDIA_CHECKING;
    {class} property MEDIA_NOFS: JString read _GetMEDIA_NOFS;
    {class} property MEDIA_MOUNTED: JString read _GetMEDIA_MOUNTED;
    {class} property MEDIA_MOUNTED_READ_ONLY: JString read _GetMEDIA_MOUNTED_READ_ONLY;
    {class} property MEDIA_SHARED: JString read _GetMEDIA_SHARED;
    {class} property MEDIA_BAD_REMOVAL: JString read _GetMEDIA_BAD_REMOVAL;
    {class} property MEDIA_UNMOUNTABLE: JString read _GetMEDIA_UNMOUNTABLE;
  end;

  [JavaSignature('android/os/Environment')]
  JEnvironment = interface(JObject)
  ['{7645859A-81E0-4864-AFFD-0EE53FCDBDCA}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJEnvironment = class(TJavaGenericImport<JEnvironmentClass, JEnvironment>) end;








type
  TAndroidX5WebBrowserService=class;


  //SDK是否加载成功回调
  TMyJQbSdk_PreInitCallback = class(TJavaLocal,JQbSdk_PreInitCallback)
    { methods }
    procedure onCoreInitFinished; cdecl;
    procedure onViewInitFinished(P1: Boolean); cdecl;
  end;


  //文件阅读器回调
  TMyJValueCallback = class(TJavaLocal,JValueCallback)
    { methods }
    procedure onReceiveValue(P1: JObject); cdecl;
  end;



  TMyJOnMyWebViewClienListener = class(TJavaLocal,JOnMyWebViewClienListener)
  private
    [Weak] FWBService: TAndroidX5WebBrowserService;
  public
    constructor Create(AWBService: TAndroidX5WebBrowserService);
  public
    { methods }
    function shouldOverrideUrlLoading(P1: JWebView; P2: JString): Boolean; cdecl;
//    procedure doUpdateVisitedHistory(P1: JWebView; P2: JString; P3: Boolean); cdecl;
//    procedure onDetectedBlankScreen(P1: JString; P2: Integer); cdecl;
//    procedure onFormResubmission(P1: JWebView; P2: JMessage; P3: JMessage); cdecl;
//    procedure onLoadResource(P1: JWebView; P2: JString); cdecl;
//    procedure onPageStarted(P1: JWebView; P2: JString; P3: JBitmap); cdecl;
//    procedure onReceivedClientCertRequest(P1: JWebView; P2: JClientCertRequest); cdecl;
//    procedure onReceivedError(P1: JWebView; P2: Integer; P3: JString; P4: JString); overload; cdecl;
//    procedure onReceivedError(P1: JWebView; P2: JWebResourceRequest; P3: JWebResourceError); overload; cdecl;
//    procedure onReceivedHttpAuthRequest(P1: JWebView; P2: JHttpAuthHandler; P3: JString; P4: JString); cdecl;
//    procedure onReceivedHttpError(P1: JWebView; P2: JWebResourceRequest; P3: JWebResourceResponse); cdecl;
//    procedure onReceivedLoginRequest(P1: JWebView; P2: JString; P3: JString; P4: JString); cdecl;
//    procedure onReceivedSslError(P1: JWebView; P2: JSslErrorHandler; P3: JSslError); cdecl;
//    procedure onScaleChanged(P1: JWebView; P2: Single; P3: Single); cdecl;
//    procedure onTooManyRedirects(P1: JWebView; P2: JMessage; P3: JMessage); cdecl;
//    procedure onUnhandledKeyEvent(P1: JWebView; P2: JKeyEvent); cdecl;
//    function shouldInterceptRequest(P1: JWebView; P2: JString): JWebResourceResponse; overload; cdecl;
//    function shouldInterceptRequest(P1: JWebView; P2: JWebResourceRequest; P3: JBundle): JWebResourceResponse; overload; cdecl;
//    function shouldInterceptRequest(P1: JWebView; P2: JWebResourceRequest): JWebResourceResponse; overload; cdecl;
//    function shouldOverrideKeyEvent(P1: JWebView; P2: JKeyEvent): Boolean; cdecl;
    procedure onPageFinished(P1: JWebView; P2: JString); cdecl;
  end;




  TMyJOnMyWebChromeClientListener = class(TJavaLocal,JOnMyWebChromeClientListener)
  private
    [Weak] FWBService: TAndroidX5WebBrowserService;
  public
    constructor Create(AWBService: TAndroidX5WebBrowserService);
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
    procedure onShowCustomView(P1: JView; P2: JIX5WebChromeClient_CustomViewCallback); overload; cdecl;
//    procedure onShowCustomView(P1: JView; P2: Integer; P3: JIX5WebChromeClient_CustomViewCallback); cdecl; overload;
//    function onShowFileChooser(P1: JWebView; P2: JValueCallback; P3: JWebChromeClient_FileChooserParams): Boolean; cdecl;
//    procedure openFileChooser(P1: JValueCallback; P2: JString; P3: JString); cdecl;
  end;



  //下载事件
  TMyJDownloadListener = class(TJavaLocal, JDownloadListener)
  private
    [Weak] FWBService: TAndroidX5WebBrowserService;
  public
    constructor Create(AWBService: TAndroidX5WebBrowserService);
  public
    procedure onDownloadStart(P1: JString; P2: JString; P3: JString; P4: JString; P5: Int64); cdecl;
  end;




  //文件查看控件回调
  TJMyTbsReaderView_ReaderCallback = class(TJavaLocal, JTbsReaderView_ReaderCallback)
    procedure onCallBackAction(P1: JInteger; P2: JObject; P3: JObject); cdecl;
  end;




  TAndroidX5WBService = class(TWBFactoryService)
  protected
    function DoCreateWebBrowser: ICustomBrowser; override;
  end;



{ TAndroidX5WebBrowserService }

  TAndroidX5WebBrowserService = class(TInterfacedObject, ICustomBrowser)
  private
    type
//      TWebBrowserListener = class(TJavaLocal,JOnWebViewListener)
//      private
//        [Weak] FWBService: TAndroidX5WebBrowserService;
//      public
//        constructor Create(AWBService: TAndroidX5WebBrowserService);
//        procedure doUpdateVisitedHistory(P1: JWebView; P2: JString; P3: Boolean); cdecl;
//        procedure onFormResubmission(P1: JWebView; P2: JMessage; P3: JMessage); cdecl;
//        procedure onLoadResource(P1: JWebView; P2: JString); cdecl;
//        procedure onPageFinished(P1: JWebView; P2: JString); cdecl;
//        procedure onPageStarted(P1: JWebView; P2: JString; P3: JBitmap); cdecl;
//        procedure onReceivedError(P1: JWebView; P2: Integer; P3: JString; P4: JString); cdecl;
//        procedure onReceivedHttpAuthRequest(P1: JWebView; P2: JHttpAuthHandler; P3: JString; P4: JString); cdecl;
//        procedure onReceivedSslError(P1: JWebView; P2: JSslErrorHandler; P3: JSslError); cdecl;
//        procedure onScaleChanged(P1: JWebView; P2: Single; P3: Single); cdecl;
//        procedure onUnhandledKeyEvent(P1: JWebView; P2: JKeyEvent); cdecl;
//        function shouldOverrideKeyEvent(P1: JWebView; P2: JKeyEvent): Boolean; cdecl;
//        function shouldOverrideUrlLoading(P1: JWebView; P2: JString): Boolean; cdecl;
//      end;

      TFocusChangeListener = class(TJavaLocal, JView_OnFocusChangeListener)
      private
        [Weak] FService: TAndroidX5WebBrowserService;
      public
        constructor Create(const Service: TAndroidX5WebBrowserService);
        procedure onFocusChange(v: JView; hasFocus: Boolean); cdecl;
      end;

  private
    //当前是看文档还是网页
    FCurrentIsShowReaderView:Boolean;
  private
    //文档阅读器
    FJTbsReaderView_ReaderCallback:JTbsReaderView_ReaderCallback;

    FJTbsReaderView:JTbsReaderView;
    //上次查看的本地文件
    FLastViewLocalFilePath:String;

    FJNativeLayout_TbsReaderView:JNativeLayout;

  private
    //文件下载
    FJDownloadListener:JDownloadListener;
    //JS
    FJMyWebChromeClient:JMyWebChromeClient;
    FJOnMyWebChromeClientListener:JOnMyWebChromeClientListener;

    FJWebBrowser: JWebView;
    FJNativeLayout_WebBrowser:JNativeLayout;

    FListener: TMyJOnMyWebViewClienListener;
    FJMyWebViewClient: JMyWebViewClient;

    FFocusChangeListener: TFocusChangeListener;

  private
    FScale: Single;
    //当前的视图
    FJNativeLayout: JNativeLayout;
    FURL: string;
    [Weak] FWebControl: TCustomWebBrowser;
    FNeedUpdateBounds: Boolean;
    FBounds: TRect;
    FRealBounds: TRect;
    procedure InitUIThread;
    procedure CalcRealBorder;
    procedure SetFocus(AFocus: Boolean);
    procedure LoadURLInUIThread(const URL: string);
  protected
    function GetParent: TFmxObject;
    function GetVisible: Boolean;
    procedure Show;
    procedure Hide;
    procedure PrepareForDestruction;
    procedure UpdateContentFromControl;
    procedure DoNavigate(const URL: string);
    procedure DoGoBack;
    procedure DoGoForward;
    procedure DoReload;
    { IFMXWebBrowserService }
    function GetURL: string;
    function GetCanGoBack: Boolean;
    function GetCanGoForward: Boolean;
    procedure SetURL(const AValue: string);
    function GetEnableCaching: Boolean;
    procedure SetEnableCaching(const Value : Boolean);
    procedure SetWebBrowserControl(const AValue: TCustomWebBrowser);
    procedure Navigate;
    procedure LoadFromStrings(const Content: string; const BaseUrl: string);
    procedure Reload;
    procedure Stop;
    procedure EvaluateJavaScript(const JavaScript: string);
    procedure GoBack;
    procedure GoForward;
    procedure GoHome;

    procedure StartLoading;
    procedure FinishLoading;
    procedure FailLoadingWithError;
    procedure ShouldStartLoading(const URL: string);
  public
    constructor Create;
    destructor Destroy; override;
    function CaptureBitmap: TBitmap;

    property EnableCaching: Boolean read GetEnableCaching write SetEnableCaching;
    property URL: string read GetURL write SetURL;
    property CanGoBack: Boolean read GetCanGoBack;
    property CanGoForward: Boolean read GetCanGoForward;
    property Focus: Boolean write SetFocus;
  end;

  TOnX5WebBrowserDownloadStartEvent=procedure(Sender:TCustomWebBrowser;AFileUrl:String) of object;
  TOnX5WebBrowserProgressChangedEvent=procedure(Sender:TCustomWebBrowser;AProgress:Integer) of object;

var
  //X5内核是否已经加载
  IsInitedX5Environment:Boolean;
  //内核初始成功事件
  OnX5EnvironmentInited:TNotifyEvent;
  //网页下载开始事件
  OnX5WebBrowserDownloadStart:TOnX5WebBrowserDownloadStartEvent;
  //网页进度事件
  OnX5WebBrowserProgressChanged:TOnX5WebBrowserProgressChangedEvent;


procedure RegisterWebBrowserService;
procedure UnRegisterWebBrowserService;

//获取SD卡路径
var
  GlobalSDCardPath:String;
//function GetSDCardPath: string;

//打开文件阅读器页面
procedure OpenFileReader(ALocalFilePath:String);

procedure PlayVideo(AVideoUrl:String);

{$ENDIF ANDROID}


implementation


{$IFDEF ANDROID}


var
  WBService: TAndroidX5WBService;
  FIsNeedRegisterWebBrowserService:Boolean;

  //初始回调
  FJQbSdk_PreInitCallback:JQbSdk_PreInitCallback;
  FJValueCallback:JValueCallback;
  

procedure InitX5Environment;
begin

  CallInUIThread(
  procedure
  begin
    SharedActivity.getWindow().setFormat(TJPixelFormat.JavaClass.TRANSLUCENT);
    SharedActivity.getWindow().setFlags(
      TJWindowManager_LayoutParams.JavaClass.FLAG_HARDWARE_ACCELERATED,
      TJWindowManager_LayoutParams.JavaClass.FLAG_HARDWARE_ACCELERATED);
  end);


  if FJQbSdk_PreInitCallback=nil then
  begin
    IsInitedX5Environment:=False;

    FJQbSdk_PreInitCallback:=TMyJQbSdk_PreInitCallback.Create;
    //initX5Environment
    //x5内核初始化接口
    TJQbSdk.JavaClass.initX5Environment(SharedActivity.getApplicationContext,
                FJQbSdk_PreInitCallback);
  end;

end;



procedure TMyJValueCallback.onReceiveValue(P1: JObject);
begin
end;


procedure OpenFileReader(ALocalFilePath:String);
begin
  CallInUIThread(
  procedure
  begin
    if FileExists(ALocalFilePath) then
    begin
      FMX.Types.Log.d('OrangeUI OpenFileReader '+ALocalFilePath);

      FJValueCallback:=TMyJValueCallback.Create;

      FMX.Types.Log.d('OrangeUI OpenFileReader 1');

      try
        TFile.Copy(ALocalFilePath,GlobalSDCardPath+ExtractFileName(ALocalFilePath));
        FMX.Types.Log.d('OrangeUI OpenFileReader 2');
      except
        on E:Exception do
        begin
          FMX.Types.Log.d('OrangeUI OpenFileReader 2.9 '+E.Message);
        end
      end;

      ALocalFilePath:=GlobalSDCardPath+ExtractFileName(ALocalFilePath);

      if FileExists(ALocalFilePath) then
      begin
        FMX.Types.Log.d('OrangeUI OpenFileReader 3');
        TJQbSdk.JavaClass.openFileReader(SharedActivityContext,
                StringToJString(ALocalFilePath),
                nil,
                FJValueCallback
                );
        FMX.Types.Log.d('OrangeUI OpenFileReader 4');
      end
      else
      begin
        //拷贝文件失败
        FMX.Types.Log.d('OrangeUI OpenFileReader File copy fail '+ALocalFilePath);
      end;

    end
    else
    begin
      //文件不存在
      FMX.Types.Log.d('OrangeUI OpenFileReader File is not exists '+ALocalFilePath);
    end;

  end);
end;

procedure PlayVideo(AVideoUrl:String);
begin
  {$IFDEF ANDROID}
//  public static boolean canUseTbsPlayer(Context context)
//  //判断当前Tbs播放器是否已经可以使用。
//  public static void openVideo(Context context, String videoUrl)
//  //直接调用播放接口，传入视频流的url
//  public static void openVideo(Context context, String videoUrl, Bundle extraData)
//  //extraData对象是根据定制需要传入约定的信息，没有需要可以传如null

//http://x5.tencent.com/tbs/technical.html#/detail/sdk/1/a1f54118-e2b7-43df-8189-8824e4ce5970
//Bundle data = new Bundle();
//data.putBoolean("standardFullScreen", false);
////true表示标准全屏，false表示X5全屏；不设置默认false，
//data.putBoolean("supportLiteWnd", false);
////false：关闭小窗；true：开启小窗；不设置默认true，
//data.putInt("DefaultVideoScreen", 2);
////1：以页面内开始播放，2：以全屏开始播放；不设置默认：1
//mWebView.getX5WebViewExtension().invokeMiscMethod("setVideoParams", data);
//1) standardFullScreen 全屏设置
//设置为true时，我们会回调WebChromeClient的onShowCustomView方法，由开发者自己实现全屏展示；
//设置为false时，由我们实现全屏展示，我们实现全屏展示需要满足下面两个条件：
//a. 我们 Webview初始化的Context必须是Activity类型的Context
//b. 我们 Webview 所在的Activity要声明这个属性
//android:configChanges="orientation|screenSize|keyboardHidden"
//如果不满足这两个条件，standardFullScreen 自动置为 true
//2) supportLiteWnd 小窗播放设置
//前提standardFullScreen=false，这个条件才生效
//设置为 true， 开启小窗功能
//设置为 false，不使用小窗功能
//3) DefaultVideoScreen 初始播放形态设置
//a、以页面内形态开始播放
//b、以全屏形态开始播放

  CallInUIThread(
  procedure
  var
    AUrl:String;
  begin
      if TJTbsVideo.JavaClass.canUseTbsPlayer(TAndroidHelper.Context) then
      begin
//          AUrl:='http://mirror.aarnet.edu.au/pub/TED-talks/911Mothers_2010W-480p.mp4';
//          AUrl:='http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4';
          TJTbsVideo.JavaClass.openVideo(
                    TAndroidHelper.Context,
                    StringToJString(AVideoUrl)
                    );
      end
      else
      begin
//        TThread.Synchronize(nil,
//        procedure
//        begin
//            ShowMessage('当前Tbs播放器不可以使用');
//        end);
        FMX.Types.Log.d('OrangeUI PlayVideo can not use now ');
      end;
  end);
  {$ENDIF}
end;

procedure RegisterWebBrowserService;
begin
  FIsNeedRegisterWebBrowserService:=True;
  //放在InitX5Environment成功后的X5初始回调事件中注册
//  WBService := TAndroidX5WBService.Create;
//  TPlatformServices.Current.AddPlatformService(IFMXWBService, WBService);
  InitX5Environment;

end;

procedure UnregisterWebBrowserService;
begin

  FJQbSdk_PreInitCallback:=nil;

  TPlatformServices.Current.RemovePlatformService(IFMXWBService);
end;

//function JNIgetExternalStorageDirectory(SubPath: string): string;
//begin
////  if SubPath <> '' then
////  begin
////    Result := IncludeTrailingPathDelimiter(
////      GetJniPath('getExternalStorageDirectory', '()Landroid/os/Environment;')
////      ) + SubPath;
////  end
////  else
////  begin
////    Result := GetJniPath('getExternalStorageDirectory', '()Landroid/os/Environment;');
////  end;
//
//  try
//    if SubPath <> '' then
//    begin
//      Result := IncludeTrailingPathDelimiter(JStringToString(
//        TJEnvironment.JavaClass.getExternalStorageDirectory.getPath)) + SubPath;
//    end
//    else
//    begin
//      Result := JStringToString(TJEnvironment.JavaClass.getExternalStorageDirectory.getPath);
//    end;
//  except
//    on E:Exception do
//    begin
//      FMX.Types.Log.d('OrangeUI JNIgetExternalStorageDirectory '+E.Message);
//    end
//  end;
//end;
//
//function GetSDCardPath: string;
//begin
//  Result:=JNIgetExternalStorageDirectory('');
//end;

function TAndroidX5WebBrowserService.GetCanGoBack: Boolean;
var
  CanGoBack: Boolean;
begin
  CallInUIThreadAndWaitFinishing(procedure begin
    CanGoBack := FJWebBrowser.canGoBack;
  end);
  Result := CanGoBack;
end;

function TAndroidX5WebBrowserService.GetCanGoForward: Boolean;
var
  CanGoForward: Boolean;
begin
  CallInUIThreadAndWaitFinishing(procedure begin
    CanGoForward := FJWebBrowser.canGoForward;
  end);
  Result := CanGoForward;
end;

function TAndroidX5WebBrowserService.GetEnableCaching: Boolean;
var
  CacheEnable : Boolean;
begin
  CallInUIThreadAndWaitFinishing(procedure begin
    CacheEnable := FJWebBrowser.getSettings.getCacheMode = TJWebSettings.JavaClass.LOAD_CACHE_ELSE_NETWORK;
  end);
  Result := CacheEnable;
end;

function TAndroidX5WebBrowserService.GetParent: TFmxObject;
begin
  Result := FWebControl.Parent;
end;

function TAndroidX5WebBrowserService.GetURL: string;
begin
  Result := FURL;
end;

function TAndroidX5WebBrowserService.GetVisible: Boolean;
begin
  Result := False;
  if FWebControl <> nil then
    Result := FWebControl.Visible;
end;

procedure TAndroidX5WebBrowserService.GoBack;
begin
  CallInUIThread(DoGoBack);
end;

procedure TAndroidX5WebBrowserService.GoForward;
begin
  CallInUIThread(DoGoForward);
end;

procedure TAndroidX5WebBrowserService.GoHome;
begin

end;

procedure TAndroidX5WebBrowserService.Hide;
begin
  CallInUIThread(
    procedure
    begin
      if FJWebBrowser.getVisibility <> TJView.JavaClass.INVISIBLE then
      begin
        FJWebBrowser.setVisibility(TJView.JavaClass.INVISIBLE);
        FJNativeLayout.setPosition(FRealBounds.Right * 2 ,
                                  FRealBounds.Height * 2);
      end;
      
      if FJTbsReaderView.getVisibility <> TJView.JavaClass.INVISIBLE then
      begin
        FJTbsReaderView.setVisibility(TJView.JavaClass.INVISIBLE);
        FJNativeLayout.setPosition(FRealBounds.Right * 2 ,
                                  FRealBounds.Height * 2);
      end;
    end);
end;

procedure TAndroidX5WebBrowserService.InitUIThread;
begin

  FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.InitUIThread 1');
  FJWebBrowser := TJWebView.JavaClass.init(TAndroidHelper.Activity,nil);
//  FJWebBrowser.getSettings.setJavaScriptEnabled(True);

  FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.InitUIThread 2');
  FJMyWebViewClient:=TJMyWebViewClient.Create;
  FListener := TMyJOnMyWebViewClienListener.Create(Self);
  FJMyWebViewClient.setListener(FListener);
  FJWebBrowser.setWebViewClient(TJWebViewClient.Wrap((FJMyWebViewClient as ILocalObject).GetObjectID));
  FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.InitUIThread 3');

  FJMyWebChromeClient:=TJMyWebChromeClient.Create;
  FJOnMyWebChromeClientListener:=TMyJOnMyWebChromeClientListener.Create(Self);
  FJMyWebChromeClient.setListener(FJOnMyWebChromeClientListener);
  FJWebBrowser.setWebChromeClient(TJWebChromeClient.Wrap((FJMyWebChromeClient as ILocalObject).GetObjectID));

  FJDownloadListener:=TMyJDownloadListener.Create(Self);
  FJWebBrowser.setDownloadListener(FJDownloadListener);

  //用于网页浏览的Layout
  FJNativeLayout_WebBrowser := TJNativeLayout.JavaClass.init(TAndroidHelper.Activity,
    MainActivity.getWindow.getDecorView.getWindowToken);

  //设置为默认Layout
  FJNativeLayout:=FJNativeLayout_WebBrowser;
  FCurrentIsShowReaderView:=False;

  FJNativeLayout_WebBrowser.setPosition(100,100);
  FJNativeLayout_WebBrowser.setSize(300,300);
  FJNativeLayout_WebBrowser.setControl(FJWebBrowser);

  FFocusChangeListener := TFocusChangeListener.Create(Self);
  FJNativeLayout_WebBrowser.setOnFocusChangeListener(FFocusChangeListener);

  FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.InitUIThread 4');

//  FJWebBrowser.getSettings.setGeolocationEnabled(True);
//  FJWebBrowser.getSettings.setAppCacheEnabled(True);
//  FJWebBrowser.getSettings.setDatabaseEnabled(True);
//  FJWebBrowser.getSettings.setDomStorageEnabled(True);
//  FJWebBrowser.getSettings.setBuiltInZoomControls(True);
//  FJWebBrowser.getSettings.setDisplayZoomControls(False);

  FJWebBrowser.getSettings.setJavaScriptEnabled(true);
  FJWebBrowser.getSettings.setJavaScriptCanOpenWindowsAutomatically(true);
  FJWebBrowser.getSettings.setAllowFileAccess(true);
  FJWebBrowser.getSettings.setLayoutAlgorithm(TJWebSettings_LayoutAlgorithm.JavaClass.NARROW_COLUMNS);
  FJWebBrowser.getSettings.setSupportZoom(true);
  FJWebBrowser.getSettings.setBuiltInZoomControls(true);
  FJWebBrowser.getSettings.setUseWideViewPort(true);
  FJWebBrowser.getSettings.setSupportMultipleWindows(true);
  // FJWebBrowser.getSettings.setLoadWithOverviewMode(true);
  FJWebBrowser.getSettings.setAppCacheEnabled(true);
  // FJWebBrowser.getSettings.setDatabaseEnabled(true);
  FJWebBrowser.getSettings.setDomStorageEnabled(true);
  FJWebBrowser.getSettings.setGeolocationEnabled(true);
//		FJWebBrowser.getSettings.setAppCacheMaxSize(Long.MAX_VALUE);
  // FJWebBrowser.getSettings.setPageCacheCapacity(IX5WebSettings.DEFAULT_CACHE_CAPACITY);
  FJWebBrowser.getSettings.setPluginState(TJWebSettings_PluginState.JavaClass.ON_DEMAND);
  // FJWebBrowser.getSettings.setRenderPriority(WebSettings.RenderPriority.HIGH);
  FJWebBrowser.getSettings.setCacheMode(TJWebSettings.JavaClass.LOAD_NO_CACHE);




  
  FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.InitUIThread 5');
  FJTbsReaderView_ReaderCallback:=TJMyTbsReaderView_ReaderCallback.Create;

  FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.InitUIThread 6');
  FJTbsReaderView:=TJTbsReaderView.JavaClass.init(SharedActivityContext,
        FJTbsReaderView_ReaderCallback);
  FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.InitUIThread 7');

  //用于文档查看的Layout
  FJNativeLayout_TbsReaderView := TJNativeLayout.JavaClass.init(TAndroidHelper.Activity,
    MainActivity.getWindow.getDecorView.getWindowToken);
  //先隐藏
  FJNativeLayout_TbsReaderView.setPosition(10000,10000);
  FJNativeLayout_TbsReaderView.setSize(300,300);
  FJNativeLayout_TbsReaderView.setControl(FJTbsReaderView);
  //先隐藏
  FJTbsReaderView.setVisibility(TJView.JavaClass.INVISIBLE);

  FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.InitUIThread 8');

end;

procedure TAndroidX5WebBrowserService.LoadFromStrings(const Content: string; const BaseUrl: string);
begin
  FJWebBrowser.loadDataWithBaseURL(StringToJString(BaseUrl), StringToJString(Content), nil, nil, nil);
  UpdateContentFromControl;
end;

procedure TAndroidX5WebBrowserService.LoadURLInUIThread(const URL: string);
begin
  CallInUIThreadAndWaitFinishing(
  procedure
  var
    AFileExt:String;
    AFilePath:String;
    AJBundle:JBundle;
    AIsLocalFile:Boolean;
  begin
    //判断URL是不是本地文件
    AFileExt:=LowerCase(Copy(URL,Length(URL)-5,5));
    AIsLocalFile:=False;


    if
      //file:协议,表示本地文件
      (Pos('file:',LowerCase(URL))>0)
      //后缀名不是.html或.htm
      and (Pos('.htm',AFileExt)=0) then
    begin


        //本地文件路径
        AFilePath:=ReplaceStr(URL,'file:///','');
        AFilePath:=ReplaceStr(URL,'file://','');
        AFilePath:=ReplaceStr(URL,'file:/','');
        if FileExists(AFilePath) then
        begin
          //存在
          FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.LoadURLInUIThread File Exists');

          //查看
          AFileExt:=ReplaceStr(ExtractFileExt(AFilePath),'.','');
          AIsLocalFile:=True;


          
//          //因为加载多次会加载不出来
//          //所以需要重新创建
//          FJNativeLayout_TbsReaderView.setControl(nil);
//          FJTbsReaderView_ReaderCallback:=TJMyTbsReaderView_ReaderCallback.Create;
//          FJTbsReaderView:=TJTbsReaderView.JavaClass.init(SharedActivityContext,
//                FJTbsReaderView_ReaderCallback);
//          FJNativeLayout_TbsReaderView.setControl(FJTbsReaderView);

          
          
          if Not FCurrentIsShowReaderView then
          begin
                    //网页切换成文件查看
                    FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.LoadURLInUIThread switch');

                    //隐藏WebView
                    if FJWebBrowser.getVisibility <> TJView.JavaClass.INVISIBLE then
                    begin
                      FJWebBrowser.setVisibility(TJView.JavaClass.INVISIBLE);
                    end;
                    FJNativeLayout.setPosition(FRealBounds.Right * 2 ,
                                              FRealBounds.Height * 2);
                  
                    FJNativeLayout:=FJNativeLayout_TbsReaderView;
                    FCurrentIsShowReaderView:=True;
                  
                    Show;
              
          end;
          

          
          
          //判断格式是否支持
          if FJTbsReaderView.preOpen(
                //文件后缀名不能有.，不然会闪退
                StringToJString(AFileExt),
                False) then
          begin

              FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.LoadURLInUIThread preOpen Succ');



              if FLastViewLocalFilePath<>AFilePath then
              begin 
                AJBundle:=TJBundle.JavaClass.init;
                AJBundle.putString(StringToJString('filePath'),
                    StringToJString(AFilePath));
                AJBundle.putString(StringToJString('tempPath'),
                    StringToJString(GlobalSDCardPath));
                    
                
                FJTbsReaderView.openFile(AJBundle);
              end;

              FLastViewLocalFilePath:=AFilePath;

              FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.LoadURLInUIThread 4');

          end
          else
          begin
              FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.LoadURLInUIThread preOpen Fail Not Support '+AFileExt);
          end;


        end;
    end;


    if Not AIsLocalFile then
    begin
      if FCurrentIsShowReaderView then
      begin
                FMX.Types.Log.d('OrangeUI TAndroidX5WebBrowserService.LoadURLInUIThread switch');
                //切换回网页
                //隐藏文件查看
                if FJTbsReaderView.getVisibility <> TJView.JavaClass.INVISIBLE then
                begin
                  FJTbsReaderView.setVisibility(TJView.JavaClass.INVISIBLE);
                end;
                FJNativeLayout.setPosition(FRealBounds.Right * 2 ,
                                          FRealBounds.Height * 2);
            
                FJNativeLayout:=FJNativeLayout_WebBrowser;
                FCurrentIsShowReaderView:=False;
 
                Show;
      end;

      
      //网页
      FJWebBrowser.loadUrl(StringToJString(URL));
    end;

  end);
end;

procedure TAndroidX5WebBrowserService.EvaluateJavaScript(const JavaScript: string);
begin
  LoadURLInUIThread('javascript:' + JavaScript);
  UpdateContentFromControl;
end;

procedure TAndroidX5WebBrowserService.Navigate;
begin
  DoNavigate(URL);
end;

procedure TAndroidX5WebBrowserService.PrepareForDestruction;
begin
  TUIThreadCaller.ForceRunnablesCollection;
end;

procedure TAndroidX5WebBrowserService.Reload;
begin
  DoReload;
end;

procedure TAndroidX5WebBrowserService.SetEnableCaching(const Value: Boolean);
begin
  CallInUIThreadAndWaitFinishing(procedure begin
    if Value then
      FJWebBrowser.getSettings.setCacheMode(TJWebSettings.JavaClass.LOAD_CACHE_ELSE_NETWORK)
    else
      FJWebBrowser.getSettings.setCacheMode(TJWebSettings.JavaClass.LOAD_NO_CACHE);
  end);
end;

procedure TAndroidX5WebBrowserService.SetFocus(AFocus: Boolean);
begin
  if FJNativeLayout <> nil then
    CallInUIThreadAndWaitFinishing(
      procedure
      begin
        FJNativeLayout.setFocus(AFocus);
      end);
end;

procedure TAndroidX5WebBrowserService.SetURL(const AValue: string);
begin
  if FURL <> AValue then
    FURL:= AValue;
end;

procedure TAndroidX5WebBrowserService.SetWebBrowserControl(const AValue: TCustomWebBrowser);
begin
  FWebControl := AValue;
  TUIThreadCaller.Call<Boolean>(
    procedure (B: boolean)
    begin
      FJWebBrowser.setFocusable(B);
    end, FWebControl.CanFocus);
end;

procedure TAndroidX5WebBrowserService.ShouldStartLoading(const URL: string);
begin
  TThread.Queue(nil, procedure begin
    if FWebControl <> nil then
      FWebControl.ShouldStartLoading(URL);
  end);
end;

procedure TAndroidX5WebBrowserService.Show;
begin
  TUIThreadCaller.Call<TRect>(
    procedure (R: TRect)
    begin
      FJNativeLayout.setPosition(R.Left, R.Top);
      FJNativeLayout.setSize(R.Right, R.Bottom);
    end, FBounds);
    
    
  CallInUIThread(
    procedure
    begin
      if Self.FCurrentIsShowReaderView then
      begin
        if FJTbsReaderView.getVisibility <> TJView.JavaClass.VISIBLE then
        begin
          FJTbsReaderView.setVisibility(TJView.JavaClass.VISIBLE);
        end;
      end
      else
      begin
        if FJWebBrowser.getVisibility <> TJView.JavaClass.VISIBLE then
        begin
          FJWebBrowser.setVisibility(TJView.JavaClass.VISIBLE);
        end;
      end;
    end);
    
end;

procedure TAndroidX5WebBrowserService.StartLoading;
begin
  TThread.Queue(nil, procedure begin
    if FWebControl <> nil then
      FWebControl.StartLoading;
  end);
end;

procedure TAndroidX5WebBrowserService.Stop;
begin
  CallInUIThread(procedure begin
    FJWebBrowser.stopLoading;
  end);
end;

procedure TAndroidX5WebBrowserService.CalcRealBorder;
var
  NativeWin: JWindow;
  ContentRect: JRect;
begin
  NativeWin := TAndroidHelper.Activity.getWindow;
  if NativeWin <> nil then
  begin
    ContentRect := TJRect.Create;
    NativeWin.getDecorView.getDrawingRect(ContentRect);
    FRealBounds := Rect(ContentRect.left,
                        ContentRect.top,
                        ContentRect.right,
                        ContentRect.bottom);
  end
  else
    FRealBounds := TRect.Empty;
end;

function TAndroidX5WebBrowserService.CaptureBitmap: TBitmap;
var
  Surface: TBitmapSurface;
begin
  Result := nil;
  Surface := TBitmapSurface.Create;
  try
    if NativeViewToSurface(FJWebBrowser, Surface) then
    begin
      Result := TBitmap.Create;
      Result.Assign(Surface);
    end;
  finally
    Surface.Free;
  end;
end;

constructor TAndroidX5WebBrowserService.Create;
var
  ScreenSrv: IFMXScreenService;
begin
  CalcRealBorder;
  if TPlatformServices.Current.SupportsPlatformService(IFMXScreenService, ScreenSrv) then
    FScale := ScreenSrv.GetScreenScale
  else
    FScale := 1;
  CallInUIThreadAndWaitFinishing(InitUIThread);
  SetEnableCaching(True);
end;

procedure TAndroidX5WebBrowserService.DoGoBack;
begin
  inherited;
  FJWebBrowser.goBack;
end;

procedure TAndroidX5WebBrowserService.DoGoForward;
begin
  inherited;
  FJWebBrowser.goForward;
end;

procedure TAndroidX5WebBrowserService.DoNavigate(const URL: string);
var
  NewURL: string;
  LFile: string;
begin
  NewURL := URL;
  if Pos(TWebBrowser.FilesPref, URL) <> 0 then
  begin
    LFile := Copy(URL, length(TWebBrowser.FilesPref) + 1, length(URL));
    if not FileExists(LFile) then
      raise EFileNotFoundException.Create(SFileNotFound);
    NewURL := ReplaceStr(NewURL, TWebBrowser.FilesPref, TWebBrowser.FilesPref + '/');
  end
  else
  begin
    if Pos('http', URL) = 0 then
      Insert('http://', NewURL, 0);
  end;
  LoadURLInUIThread(NewURL);
  ShouldStartLoading(NewURL);
  UpdateContentFromControl;
end;

procedure TAndroidX5WebBrowserService.DoReload;
begin
  CallInUIThread(procedure begin
    FJWebBrowser.reload;
  end);
end;

procedure TAndroidX5WebBrowserService.FailLoadingWithError;
begin
  TThread.Queue(nil, procedure begin
    if FWebControl <> nil then
      FWebControl.FailLoadingWithError;
  end);
end;

procedure TAndroidX5WebBrowserService.FinishLoading;
begin
  TThread.Queue(nil, procedure begin
    if FWebControl <> nil then
      FWebControl.FinishLoading;
  end);
end;

destructor TAndroidX5WebBrowserService.Destroy;
begin
  TUIThreadCaller.Call<JWebView, JNativeLayout>(
    procedure (UIWebBrowser: JWebView; UINativeLayout: JNativeLayout)
    begin
      UIWebBrowser.setVisibility(TJView.JavaClass.INVISIBLE);
      UIWebBrowser.setWebViewClient(nil);

      UIWebBrowser.setWebChromeClient(nil);
      UIWebBrowser.setDownloadListener(nil);


      UINativeLayout.setOnFocusChangeListener(nil);
      UINativeLayout.setControl(nil);


    end, 
    FJWebBrowser, FJNativeLayout_WebBrowser);
    

    
  TUIThreadCaller.Call<JView, JNativeLayout>(
    procedure (UIWebBrowser: JView; UINativeLayout: JNativeLayout)
    begin
      UIWebBrowser.setVisibility(TJView.JavaClass.INVISIBLE);

      UINativeLayout.setOnFocusChangeListener(nil);
      UINativeLayout.setControl(nil);
    end, 
    FJTbsReaderView, FJNativeLayout_TbsReaderView);

    
  inherited;
end;

procedure TAndroidX5WebBrowserService.UpdateContentFromControl;
var
  Pos: TPointF;
begin

  while FJNativeLayout = nil do
    Application.ProcessMessages;
    
  if FJNativeLayout <> nil then
  begin
    if (FWebControl <> nil) and not (csDesigning in FWebControl.ComponentState) and (FWebControl.Root <> nil) and
      (FWebControl.Root.GetObject is TCommonCustomForm) then
    begin
      FNeedUpdateBounds := True;
      Pos := FWebControl.LocalToAbsolute(TPointF.Zero) * FScale;
      FBounds := Rect(Round(Pos.X), Round(Pos.Y), Round(FWebControl.Width * FScale), Round(FWebControl.Height *
        FScale));
      if FWebControl.Visible and FWebControl.ParentedVisible and
        (TCommonCustomForm(FWebControl.Root.GetObject)).Visible and
        (TCommonCustomForm(FWebControl.Root.GetObject)).Active then
        Show
      else
        Hide;
    end
    else
      Hide;
  end;
end;

{ TAndroidX5WBService }

function TAndroidX5WBService.DoCreateWebBrowser: ICustomBrowser;
var
  Browser : TAndroidX5WebBrowserService;
begin
  Browser := TAndroidX5WebBrowserService.Create;
  Result := Browser;
end;

//{ TAndroidX5WebBrowserService.TWebBrowserListener }
//
//constructor TAndroidX5WebBrowserService.TWebBrowserListener.Create(
//  AWBService: TAndroidX5WebBrowserService);
//begin
//  inherited Create;
//  FWBService := AWBService;
//end;
//
//procedure TAndroidX5WebBrowserService.TWebBrowserListener.doUpdateVisitedHistory(
//  P1: JWebView; P2: JString; P3: Boolean);
//begin
//
//end;
//
//procedure TAndroidX5WebBrowserService.TWebBrowserListener.onFormResubmission(
//  P1: JWebView; P2, P3: JMessage);
//begin
//
//end;
//
//procedure TAndroidX5WebBrowserService.TWebBrowserListener.onLoadResource(
//  P1: JWebView; P2: JString);
//begin
//
//end;
//
//procedure TAndroidX5WebBrowserService.TWebBrowserListener.onPageFinished(
//  P1: JWebView; P2: JString);
//begin
//  FWBService.FURL := JStringToString(P2);
//  FWBService.FinishLoading;
//end;
//
//procedure TAndroidX5WebBrowserService.TWebBrowserListener.onPageStarted(
//  P1: JWebView; P2: JString; P3: JBitmap);
//begin
//  FWBService.FURL := JStringToString(P2);
//  FWBService.StartLoading;
//end;
//
//procedure TAndroidX5WebBrowserService.TWebBrowserListener.onReceivedError(
//  P1: JWebView; P2: Integer; P3, P4: JString);
//begin
//  FWBService.FailLoadingWithError;
//end;
//
//procedure TAndroidX5WebBrowserService.TWebBrowserListener.onReceivedHttpAuthRequest(
//  P1: JWebView; P2: JHttpAuthHandler; P3, P4: JString);
//begin
//
//end;
//
//procedure TAndroidX5WebBrowserService.TWebBrowserListener.onReceivedSslError(
//  P1: JWebView; P2: JSslErrorHandler; P3: JSslError);
//begin
//  FWBService.FailLoadingWithError;
//end;
//
//procedure TAndroidX5WebBrowserService.TWebBrowserListener.onScaleChanged(
//  P1: JWebView; P2, P3: Single);
//begin
//
//end;
//
//procedure TAndroidX5WebBrowserService.TWebBrowserListener.onUnhandledKeyEvent(
//  P1: JWebView; P2: JKeyEvent);
//begin
//
//end;
//
//function TAndroidX5WebBrowserService.TWebBrowserListener.shouldOverrideKeyEvent(
//  P1: JWebView; P2: JKeyEvent): Boolean;
//begin
//  Result := False;
//end;
//
//function TAndroidX5WebBrowserService.TWebBrowserListener.shouldOverrideUrlLoading(
//  P1: JWebView; P2: JString): Boolean;
//begin
//  FWBService.ShouldStartLoading(JStringToString(P2));
//  Result := False;
//end;

{ TAndroidX5WebBrowserService.TFocusChangeListener }

constructor TAndroidX5WebBrowserService.TFocusChangeListener.Create(const Service: TAndroidX5WebBrowserService);
begin
  inherited Create;
  FService := Service;
end;

procedure TAndroidX5WebBrowserService.TFocusChangeListener.onFocusChange(v: JView; hasFocus: Boolean);
begin
  if hasFocus then
  begin
    TThread.Queue(nil, procedure begin
      if FService.FWebControl.CanFocus  then
        FService.FWebControl.SetFocus;
    end);
  end
  else begin
    v.clearFocus;
  end;
end;


{ TMyJQbSdk_PreInitCallback }

procedure TMyJQbSdk_PreInitCallback.onCoreInitFinished;
begin
  FMX.Types.Log.d('OrangeUI TMyJQbSdk_PreInitCallback.onCoreInitFinished');
end;

procedure TMyJQbSdk_PreInitCallback.onViewInitFinished(P1: Boolean);
begin

  //x5內核初始化完成的回调，为true表示x5内核加载成功，否则表示x5内核加载失败，会自动切换到系统内核。
  FMX.Types.Log.d('OrangeUI TMyJQbSdk_PreInitCallback.onViewInitFinished');

  IsInitedX5Environment:=True;

  if FIsNeedRegisterWebBrowserService then
  begin
    FMX.Types.Log.d('OrangeUI TMyJQbSdk_PreInitCallback.onViewInitFinished AddPlatformService ');
    FIsNeedRegisterWebBrowserService:=False;

    WBService := TAndroidX5WBService.Create;
    TPlatformServices.Current.AddPlatformService(IFMXWBService, WBService);
  end;

  if Assigned(OnX5EnvironmentInited) then
  begin
    OnX5EnvironmentInited(Self);
  end;
  
end;


{ TMyJOnMyWebViewClienListener }

//procedure TMyJOnMyWebViewClienListener.doUpdateVisitedHistory(P1: JWebView;
//  P2: JString; P3: Boolean);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onDetectedBlankScreen(P1: JString;
//  P2: Integer);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onFormResubmission(P1: JWebView; P2,
//  P3: JMessage);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onLoadResource(P1: JWebView; P2: JString);
//begin
//
//end;

constructor TMyJOnMyWebViewClienListener.Create(AWBService: TAndroidX5WebBrowserService);
begin
  Inherited Create;
  FWBService:=AWBService;
end;

procedure TMyJOnMyWebViewClienListener.onPageFinished(P1: JWebView; P2: JString);
begin
  FMX.Types.Log.d('OrangeUI TJView_OnLongClickListener.onPageFinished ');//+JStringToString(P2));

  if FWBService<>nil then FWBService.FURL := JStringToString(P2);
  if FWBService<>nil then FWBService.FinishLoading;

end;

//procedure TMyJOnMyWebViewClienListener.onPageStarted(P1: JWebView; P2: JString;
//  P3: JBitmap);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onReceivedClientCertRequest(P1: JWebView;
//  P2: JClientCertRequest);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onReceivedError(P1: JWebView;
//  P2: JWebResourceRequest; P3: JWebResourceError);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onReceivedError(P1: JWebView; P2: Integer;
//  P3, P4: JString);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onReceivedHttpAuthRequest(P1: JWebView;
//  P2: JHttpAuthHandler; P3, P4: JString);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onReceivedHttpError(P1: JWebView;
//  P2: JWebResourceRequest; P3: JWebResourceResponse);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onReceivedLoginRequest(P1: JWebView; P2,
//  P3, P4: JString);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onReceivedSslError(P1: JWebView;
//  P2: JSslErrorHandler; P3: JSslError);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onScaleChanged(P1: JWebView; P2,
//  P3: Single);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onTooManyRedirects(P1: JWebView; P2,
//  P3: JMessage);
//begin
//
//end;
//
//procedure TMyJOnMyWebViewClienListener.onUnhandledKeyEvent(P1: JWebView;
//  P2: JKeyEvent);
//begin
//
//end;
//
//function TMyJOnMyWebViewClienListener.shouldInterceptRequest(P1: JWebView;
//  P2: JWebResourceRequest; P3: JBundle): JWebResourceResponse;
//begin
//  Result:=nil;
//
//end;
//
//function TMyJOnMyWebViewClienListener.shouldInterceptRequest(P1: JWebView;
//  P2: JWebResourceRequest): JWebResourceResponse;
//begin
//  Result:=nil;
//
//end;
//
//function TMyJOnMyWebViewClienListener.shouldInterceptRequest(P1: JWebView;
//  P2: JString): JWebResourceResponse;
//begin
//  Result:=nil;
//
//end;
//
//function TMyJOnMyWebViewClienListener.shouldOverrideKeyEvent(P1: JWebView;
//  P2: JKeyEvent): Boolean;
//begin
//  Result:=False;
//
//end;

function TMyJOnMyWebViewClienListener.shouldOverrideUrlLoading(P1: JWebView;
  P2: JString): Boolean;
begin
  FMX.Types.Log.d('OrangeUI TJView_OnLongClickListener.shouldOverrideUrlLoading ');//+JStringToString(P2));


  if FWBService<>nil then FWBService.ShouldStartLoading(JStringToString(P2));


  P1.loadurl(P2);

  Result:=False;
end;

{ TMyJOnMyWebChromeClientListener }

constructor TMyJOnMyWebChromeClientListener.Create(AWBService: TAndroidX5WebBrowserService);
begin
  Inherited Create;
  FWBService:=AWBService;
end;

procedure TMyJOnMyWebChromeClientListener.onHideCustomView;
begin

end;

function TMyJOnMyWebChromeClientListener.onJsAlert(P1: JWebView; P2, P3: JString;
  P4: JJsResult): Boolean;
begin

end;

function TMyJOnMyWebChromeClientListener.onJsConfirm(P1: JWebView; P2,
  P3: JString; P4: JJsResult): Boolean;
begin

end;

procedure TMyJOnMyWebChromeClientListener.onShowCustomView(P1: JView;
  P2: JIX5WebChromeClient_CustomViewCallback);
begin

end;

procedure TMyJOnMyWebChromeClientListener.onProgressChanged(P1: JWebView; P2: Integer);
begin
  if Assigned(OnX5WebBrowserProgressChanged) then
  begin
    OnX5WebBrowserProgressChanged(Self.FWBService.FWebControl,P2);
  end;
end;


{ TMyJDownloadListener }

constructor TMyJDownloadListener.Create(AWBService: TAndroidX5WebBrowserService);
begin
  Inherited Create;
  FWBService:=AWBService;
end;

procedure TMyJDownloadListener.onDownloadStart(P1, P2, P3, P4: JString;
  P5: Int64);
var
  AStr:String;
////  AJIntent:JIntent;
////  AJUri:Jnet_Uri;
//var
//  DownloadService: JObject;
//  DownloadManager: JDownloadManager;
//  request:JDownloadManager_Request;
//  url:Jnet_Uri;
begin
  FMX.Types.Log.d('OrangeUI TJView_OnLongClickListener.onDownloadStart begin');

  AStr:='';

  if P1<>nil then
  begin
    AStr:=AStr+'P1='+JStringToString(P1)+' ';
  end;

  if P2<>nil then
  begin
    AStr:=AStr+'P2='+JStringToString(P2)+' ';
  end;

  if P3<>nil then
  begin
    AStr:=AStr+'P3='+JStringToString(P3)+' ';
  end;

  if P4<>nil then
  begin
    AStr:=AStr+'P4='+JStringToString(P4)+' ';
  end;


//  P1=http://dldir1.qq.com/weixin/android/weixin660android1200.apk
//  P2=Mozilla/5.0 (Linux; Android 5.1.1; T1-821w Build/HuaweiMediaPad; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.49 M
  FMX.Types.Log.d('OrangeUI TJView_OnLongClickListener.onDownloadStart end '+AStr);

  //下载P1
  //启动下载
  if Assigned(OnX5WebBrowserDownloadStart) then
  begin
    OnX5WebBrowserDownloadStart(Self.FWBService.FWebControl,
                      JStringToString(P1));
  end;

//
/////**
////* setAction方法设置指定那个浏览器启动：如
////* 1. 系统默认浏览器 android.intent.action.VIEW
////**/
////  AJIntent := TJIntent.JavaClass.init;
////  AJIntent.setAction(StringToJString('android.intent.action.VIEW'));
////  AJUri := TJnet_Uri.JavaClass.parse(P1);
////  AJIntent.setData(AJUri);
////  AJIntent.setClassName(StringToJString('com.android.browser'),
////                          StringToJString('com.android.browser.BrowserActivity'));
////  TAndroidHelper.Context.startActivity(AJIntent);
//
//  DownloadService := TAndroidHelper.Activity.getSystemService(TJContext.JavaClass.DOWNLOAD_SERVICE);
//  if DownloadService <> nil then
//    DownloadManager := TJDownloadManager.Wrap((DownloadService as ILocalObject).GetObjectID);
//  if DownloadManager<>nil then
//  begin
//    url:=TJnet_Uri.JavaClass.parse(
//          P1
////          StringToJString('http://gdown.baidu.com/data/wisegame/7690d8b89debd961/weixin_1200.apk')
//          );
//    request:=TJDownloadManager_Request.JavaClass.init(url);
//    request.setDestinationInExternalPublicDir(
//          TJEnvironment.JavaClass.DIRECTORY_DOWNLOADS,
////          StringToJString('aaa.apk')
//          StringToJString(ExtractFileName(JStringToString(P1)))
//          );
//    request.allowScanningByMediaScanner;
//    request.setNotificationVisibility(
//          TJDownloadManager_Request.JavaClass.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
//    DownloadManager.enqueue(request);
//
//
//    //Android平台直接使用Toast来实现
//    CallInUIThread(
//    procedure
//    var
//      LStr: JString;
//    begin
//      LStr := TAndroidHelper.StringToJString('下载中...');
//      TJToast.JavaClass.makeText(TAndroidHelper.Context, LStr.subSequence(0, LStr.length),
//            TJToast.JavaClass.LENGTH_SHORT)
//            .show;
//    end);
//
//  end;


end;


{ TJMyTbsReaderView_ReaderCallback }

procedure TJMyTbsReaderView_ReaderCallback.onCallBackAction(P1: JInteger; P2,
  P3: JObject);
begin
  FMX.Types.Log.d('OrangeUI TJMyTbsReaderView_ReaderCallback.onCallBackAction');

end;


{$ENDIF ANDROID}


end.

