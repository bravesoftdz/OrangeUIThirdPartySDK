program VPNTest_D10_1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  sdkheader_iOSApi in 'SangForSDK\sdkheader_iOSApi.pas',
  AuthHelper_iOSApi in 'SangForSDK\AuthHelper_iOSApi.pas',
  Androidapi.JNI.SangforSDK in 'SangForSDK\Androidapi.JNI.SangforSDK.pas',
  FMX.Context.GLES.iOS in '..\..\OrangeProjectCommon\FMX.Context.GLES.iOS.pas',
  FMX.FontGlyphs.iOS in '..\..\OrangeProjectCommon\FMX.FontGlyphs.iOS.pas',
  FMX.PhoneDialer in '..\..\OrangeProjectCommon\FMX.PhoneDialer.pas',
  FMX.Pickers.iOS in '..\..\OrangeProjectCommon\FMX.Pickers.iOS.pas',
  FMX.Platform.iOS in '..\..\OrangeProjectCommon\FMX.Platform.iOS.pas',
  uSangForSDK in 'SangForSDK\uSangForSDK.pas',
  Androidapi.JNI.ActivityManager in '..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.ActivityManager.pas',
  Androidapi.JNI.android.os.storage.StorageManager in '..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.android.os.storage.StorageManager.pas',
  Androidapi.JNI.Environment in '..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.Environment.pas',
  Androidapi.JNI.java.lang.FlyUtils in '..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.java.lang.FlyUtils.pas',
  Androidapi.JNI.StatFs in '..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.StatFs.pas',
  Androidapi.JNI.Stream2 in '..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.Stream2.pas',
  Androidapi.JNI.ToastForService in '..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.ToastForService.pas',
  FlyFilesUtils in '..\..\OrangeProjectCommon\FlyFilesUtils\FlyFilesUtils.pas',
  FlyFmxUtils in '..\..\OrangeProjectCommon\FlyFilesUtils\FlyFmxUtils.pas',
  FlyStrUtils in '..\..\OrangeProjectCommon\FlyFilesUtils\FlyStrUtils.pas',
  FlyUtils.Android.PostRunnableAndTimer in '..\..\OrangeProjectCommon\FlyFilesUtils\FlyUtils.Android.PostRunnableAndTimer.pas',
  FlyUtils.App.CrashHandler in '..\..\OrangeProjectCommon\FlyFilesUtils\FlyUtils.App.CrashHandler.pas',
  FlyUtils.ShowMessageWait in '..\..\OrangeProjectCommon\FlyFilesUtils\FlyUtils.ShowMessageWait.pas',
  FlyUtils.TBitmapHelper in '..\..\OrangeProjectCommon\FlyFilesUtils\FlyUtils.TBitmapHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
