program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {FormMain},
  zkcsdk in 'zkcsdk.pas',
  XSuperJSON in 'XSuperJsonObject\XSuperJSON.pas',
  XSuperObject in 'XSuperJsonObject\XSuperObject.pas',
  Androidapi.JNI.assistant in 'Androidapi.JNI.assistant.pas',
  uManager in 'uManager.pas',
  uBaseList in 'uBaseList.pas',
  uBaseLog in 'uBaseLog.pas',
  uFileCommon in 'uFileCommon.pas',
  uFuncCommon in 'uFuncCommon.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
