unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,

  WaitingFrame,
  System.IOUtils,
  FlyFilesUtils,

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

  Androidapi.JNI.tbs_sdk_thirdapp,
  {$ENDIF}

  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit,
  FMX.ComboEdit;

type
  TfrmMain = class(TForm)
    btnWebBrowser: TButton;
    Button4: TButton;
    Button5: TButton;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Label1: TLabel;
    btnPlayVideo: TButton;
    edtVideoUrl: TComboEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnWebBrowserClick(Sender: TObject);
    procedure btnPlayVideoClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure DoX5EnvironmentInited(Sender: TObject);
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  X5WebBrowserForm;

{$R *.fmx}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  {$IFDEF ANDROID}
  ShowWaitingFrame(Self,'正在下载X5内核...');
  //切换为X5内核
  GlobalSDCardPath:=FlyFilesUtils.GetSDCardPath();
  FMX.WebBrowser.Android.UnRegisterWebBrowserService;
  FMX.WebBrowser.Android.X5.RegisterWebBrowserService;
  OnX5EnvironmentInited:=DoX5EnvironmentInited;
  {$ENDIF ANDROID}
end;

procedure TfrmMain.btnPlayVideoClick(Sender: TObject);
begin
  {$IFDEF ANDROID}
  //播放视频
  PlayVideo(edtVideoUrl.Text);
  {$ENDIF}
end;

procedure TfrmMain.btnWebBrowserClick(Sender: TObject);
begin
  if frmX5WebBrowser=nil then
  begin
    frmX5WebBrowser:=TfrmX5WebBrowser.Create(Application);
  end;
  frmX5WebBrowser.Show;
end;

procedure TfrmMain.Button4Click(Sender: TObject);
var
  AFilePath:String;
begin
  //查看文档
  AFilePath:=System.IOUtils.TPath.GetHomePath+PathDelim+'test.doc';
  {$IFDEF ANDROID}
  OpenFileReader(AFilePath);
  {$ENDIF}
end;

procedure TfrmMain.Button5Click(Sender: TObject);
var
  AFilePath:String;
begin
  //查看文档
  AFilePath:=System.IOUtils.TPath.GetHomePath+PathDelim+'test.pdf';
  {$IFDEF ANDROID}
  OpenFileReader(AFilePath);
  {$ENDIF}
end;

procedure TfrmMain.DoX5EnvironmentInited(Sender: TObject);
begin
  //初始完成
  TThread.Synchronize(nil,
    procedure
    begin
      HideWaitingFrame;
    end);
end;


end.
