program QQSDK_D10_1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit4 in 'Unit4.pas' {Form4},
  Androidapi.JNI.open_sdk_r5886_lite in 'Androidapi.JNI.open_sdk_r5886_lite.pas',
  FlyFilesUtils in '..\..\..\..\OrangeProjectCommon\FlyFilesUtils\FlyFilesUtils.pas',
  Androidapi.JNI.Environment in '..\..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.Environment.pas',
  Androidapi.JNI.StatFs in '..\..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.StatFs.pas',
  Androidapi.JNI.Stream2 in '..\..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.Stream2.pas',
  Androidapi.JNI.ActivityManager in '..\..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.ActivityManager.pas',
  Androidapi.JNI.android.os.storage.StorageManager in '..\..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.android.os.storage.StorageManager.pas',
  Androidapi.JNI.java.lang.FlyUtils in '..\..\..\..\OrangeProjectCommon\FlyFilesUtils\Androidapi.JNI.java.lang.FlyUtils.pas',
  QQShare in 'QQShare.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
