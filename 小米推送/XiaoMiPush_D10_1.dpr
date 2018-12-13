program XiaoMiPush_D10_1;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  Androidapi.JNI.MiPush_SDK_Client_3_4_0 in 'XiaoMiPushSDK\Androidapi.JNI.MiPush_SDK_Client_3_4_0.pas',
  Androidapi.JNI.mipushreceiver in 'XiaoMiPushSDK\Androidapi.JNI.mipushreceiver.pas',
  Androidapi.JNI.RunningServiceInfo in '..\..\OrangeProjectCommon\Android\Androidapi.JNI.RunningServiceInfo.pas',
  uXiaoMiPush in 'XiaoMiPushSDK\uXiaoMiPush.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
