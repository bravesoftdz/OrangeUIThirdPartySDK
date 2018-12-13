unit X5WebBrowserForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,

  System.IOUtils,

  WaitingFrame,

  {$IFDEF ANDROID}
  FMX.WebBrowser.Android,
  FMX.WebBrowser.Android.X5,

  //下载需要使用
  Androidapi.JNI.android.app.DownloadManager,
  Androidapi.JNI.android.app.DownloadManager_Request,
  Androidapi.JNI.android.app.DownloadManager_Query,

  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNIBridge,
  Androidapi.JNI.Widget,
  Androidapi.Helpers,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Net,

  FMX.Helpers.Android,
  FMX.Platform.Android,
  {$ENDIF}

  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.WebBrowser;

type
  TfrmX5WebBrowser = class(TForm)
    pnlToolBar: TPanel;
    btnGo: TButton;
    edtUrl: TEdit;
    Button3: TButton;
    Button2: TButton;
    ProgressBar1: TProgressBar;
    btnGoBack: TButton;
    btnGoForward: TButton;
    procedure btnGoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure WebBrowser1DidFinishLoad(ASender: TObject);
    procedure WebBrowser1DidStartLoad(ASender: TObject);
    procedure btnGoBackClick(Sender: TObject);
    procedure btnGoForwardClick(Sender: TObject);
  private
    FProgress:Integer;
    FWebBrowser:TWebBrowser;
    procedure CreateWebBrowser;
    procedure DoX5WebBrowserDownloadStart(Sender:TCustomWebBrowser;AFileUrl:String);
    procedure DoX5WebBrowserProgressChanged(Sender:TCustomWebBrowser;AProgress:Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmX5WebBrowser: TfrmX5WebBrowser;

implementation

{$R *.fmx}

procedure TfrmX5WebBrowser.btnGoClick(Sender: TObject);
begin
  CreateWebBrowser;
  FWebBrowser.URL:=Self.edtUrl.Text;
end;

procedure TfrmX5WebBrowser.btnGoForwardClick(Sender: TObject);
begin
  if Self.FWebBrowser.CanGoForward then
  begin
    FWebBrowser.GoForward;
  end;
end;

procedure TfrmX5WebBrowser.btnGoBackClick(Sender: TObject);
begin
  if Self.FWebBrowser.CanGoBack then
  begin
    FWebBrowser.GoBack;
  end
  else
  begin
    Close;
  end;
end;

procedure TfrmX5WebBrowser.CreateWebBrowser;
begin
  if FWebBrowser=nil then
  begin
    FWebBrowser:=TWebBrowser.Create(Self);
    FWebBrowser.Parent:=Self;
    FWebBrowser.Align:=TAlignLayout.Client;

    FWebBrowser.OnDidStartLoad:=WebBrowser1DidStartLoad;
    FWebBrowser.OnDidFinishLoad:=WebBrowser1DidFinishLoad;
  end;
end;

procedure TfrmX5WebBrowser.DoX5WebBrowserDownloadStart(Sender: TCustomWebBrowser; AFileUrl: String);
{$IFDEF ANDROID}
//  AJIntent:JIntent;
//  AJUri:Jnet_Uri;
var
  DownloadService: JObject;
  DownloadManager: JDownloadManager;
  request:JDownloadManager_Request;
  url:Jnet_Uri;
{$ENDIF}
begin

{$IFDEF ANDROID}
///**
//* setAction方法设置指定那个浏览器启动：如
//* 1. 系统默认浏览器 android.intent.action.VIEW
//**/
//  AJIntent := TJIntent.JavaClass.init;
//  AJIntent.setAction(StringToJString('android.intent.action.VIEW'));
//  AJUri := TJnet_Uri.JavaClass.parse(P1);
//  AJIntent.setData(AJUri);
//  AJIntent.setClassName(StringToJString('com.android.browser'),
//                          StringToJString('com.android.browser.BrowserActivity'));
//  TAndroidHelper.Context.startActivity(AJIntent);

  DownloadService := TAndroidHelper.Activity.getSystemService(TJContext.JavaClass.DOWNLOAD_SERVICE);
  if DownloadService <> nil then
    DownloadManager := TJDownloadManager.Wrap((DownloadService as ILocalObject).GetObjectID);
  if DownloadManager<>nil then
  begin
    url:=TJnet_Uri.JavaClass.parse(
          StringToJString(AFileUrl)
//          P1
//          StringToJString('http://gdown.baidu.com/data/wisegame/7690d8b89debd961/weixin_1200.apk')
          );
    request:=TJDownloadManager_Request.JavaClass.init(url);
    request.setDestinationInExternalPublicDir(
          TJEnvironment.JavaClass.DIRECTORY_DOWNLOADS,
//          StringToJString('aaa.apk')
          StringToJString(ExtractFileName(AFileUrl))
          );
    request.allowScanningByMediaScanner;
    request.setNotificationVisibility(
          TJDownloadManager_Request.JavaClass.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
    DownloadManager.enqueue(request);


    //Android平台直接使用Toast来实现
    CallInUIThread(
    procedure
    var
      LStr: JString;
    begin
      LStr := TAndroidHelper.StringToJString('下载中...');
      TJToast.JavaClass.makeText(TAndroidHelper.Context, LStr.subSequence(0, LStr.length),
            TJToast.JavaClass.LENGTH_SHORT)
            .show;
    end);

  end;
{$ENDIF}

end;

procedure TfrmX5WebBrowser.FormCreate(Sender: TObject);
begin
  {$IFDEF ANDROID}
  OnX5WebBrowserDownloadStart:=DoX5WebBrowserDownloadStart;
  OnX5WebBrowserProgressChanged:=DoX5WebBrowserProgressChanged;
  {$ENDIF}
end;

procedure TfrmX5WebBrowser.WebBrowser1DidFinishLoad(ASender: TObject);
begin
  //网页加载成功
  TThread.Synchronize(nil,
      procedure
      begin
        Self.edtUrl.Text:=Self.FWebBrowser.URL;
      end);
end;

procedure TfrmX5WebBrowser.WebBrowser1DidStartLoad(ASender: TObject);
begin
  //网页开始加载
  TThread.Synchronize(nil,
      procedure
      begin
        Self.edtUrl.Text:=Self.FWebBrowser.URL;
      end);
end;

procedure TfrmX5WebBrowser.DoX5WebBrowserProgressChanged(Sender: TCustomWebBrowser;AProgress: Integer);
begin
  FProgress:=AProgress;
  TThread.Synchronize(nil,
      procedure
      begin
        FMX.Types.Log.d('TfrmMain.DoX5WebBrowserProgressChanged FProgress '+IntToStr(FProgress));
        Self.ProgressBar1.Value:=FProgress;
      end
      );
end;

end.
