program TBSBrowser;

uses
  System.StartUpCopy,
  FMX.Forms,
  Androidapi.JNI.tbs_sdk_thirdapp in 'TBSSDK\Androidapi.JNI.tbs_sdk_thirdapp.pas',
  Androidapi.JNI.x5web_assistant in 'TBSSDK\Androidapi.JNI.x5web_assistant.pas',
  FMX.WebBrowser.Android.X5 in 'TBSSDK\FMX.WebBrowser.Android.X5.pas',
  X5WebBrowserForm in 'X5WebBrowserForm.pas' {frmX5WebBrowser},
  Androidapi.JNI.android.app.DownloadManager in 'TBSSDK\Androidapi.JNI.android.app.DownloadManager.pas',
  Androidapi.JNI.android.app.DownloadManager_Query in 'TBSSDK\Androidapi.JNI.android.app.DownloadManager_Query.pas',
  Androidapi.JNI.android.app.DownloadManager_Request in 'TBSSDK\Androidapi.JNI.android.app.DownloadManager_Request.pas',
  WaitingFrame in '..\..\..\OrangeProjectCommon\CommonFrames\WaitingFrame.pas' {FrameWaiting: TFrame},
  MainForm in 'MainForm.pas' {frmMain},
  Androidapi.JNI.ActivityManager in '..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.ActivityManager.pas',
  Androidapi.JNI.android.os.storage.StorageManager in '..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.android.os.storage.StorageManager.pas',
  Androidapi.JNI.Environment in '..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.Environment.pas',
  Androidapi.JNI.java.lang.FlyUtils in '..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.java.lang.FlyUtils.pas',
  Androidapi.JNI.StatFs in '..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.StatFs.pas',
  Androidapi.JNI.Stream2 in '..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.Stream2.pas',
  Androidapi.JNI.ToastForService in '..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.ToastForService.pas',
  FlyFilesUtils in '..\..\..\OrangeProjectCommon\FlyFilesUtils\FlyFilesUtils.pas',
  FlyUtils.Android.PostRunnableAndTimer in '..\..\..\OrangeProjectCommon\FlyFilesUtils\FlyUtils.Android.PostRunnableAndTimer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait, TFormOrientation.InvertedPortrait, TFormOrientation.Landscape, TFormOrientation.InvertedLandscape];
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
