program Project9;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit7 in 'Unit7.pas' {Form7},
  iOSApi.AipOcrSdk in 'BaiduOCRSDK\IOS_3_0_1\iOSApi.AipOcrSdk.pas',
  iOSApi.AipOcrService in 'BaiduOCRSDK\IOS_3_0_1\iOSApi.AipOcrService.pas',
  iOSApi.AipCaptureCardVC in 'BaiduOCRSDK\IOS_3_0_1\iOSApi.AipCaptureCardVC.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
