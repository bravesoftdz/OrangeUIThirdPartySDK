program XunFeiTest_D10_1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Androidapi.JNI.Sunflower in 'XunFeiSDK\Androidapi.JNI.Sunflower.pas',
  Androidapi.JNI.Msc in 'XunFeiSDK\Androidapi.JNI.Msc.pas',
  XSuperJSON in '..\..\OrangeProjectCommon\XSuperObject\XSuperJSON.pas',
  XSuperObject in '..\..\OrangeProjectCommon\XSuperObject\XSuperObject.pas',
  uXunFeiSDK in 'XunFeiSDK\uXunFeiSDK.pas',
  FMX.Context.GLES.iOS in '..\..\OrangeProjectCommon\FMX.Context.GLES.iOS.pas',
  FMX.FontGlyphs.iOS in '..\..\OrangeProjectCommon\FMX.FontGlyphs.iOS.pas',
  FMX.PhoneDialer in '..\..\OrangeProjectCommon\FMX.PhoneDialer.pas',
  FMX.Pickers.iOS in '..\..\OrangeProjectCommon\FMX.Pickers.iOS.pas',
  FMX.Platform.iOS in '..\..\OrangeProjectCommon\FMX.Platform.iOS.pas',
  CVCode in '..\..\OrangeProjectCommon\CVCode.pas',
  IFlySpeechRecognizer_iOSApi in 'XunFeiSDK\libs\iflyMSC.framework\Headers\IFlySpeechRecognizer_iOSApi.pas',
  IFlySpeechRecognizerDelegate_iOSApi in 'XunFeiSDK\libs\iflyMSC.framework\Headers\IFlySpeechRecognizerDelegate_iOSApi.pas',
  IFlySpeechSynthesizer_iOSApi in 'XunFeiSDK\libs\iflyMSC.framework\Headers\IFlySpeechSynthesizer_iOSApi.pas',
  IFlySpeechSynthesizerDelegate_iOSApi in 'XunFeiSDK\libs\iflyMSC.framework\Headers\IFlySpeechSynthesizerDelegate_iOSApi.pas',
  IFlySpeechUtility_iOSApi in 'XunFeiSDK\libs\iflyMSC.framework\Headers\IFlySpeechUtility_iOSApi.pas',
  IFlySetting_iOSApi in 'XunFeiSDK\libs\iflyMSC.framework\Headers\IFlySetting_iOSApi.pas',
  IFlySpeechConstant_iOSApi in 'XunFeiSDK\libs\iflyMSC.framework\Headers\IFlySpeechConstant_iOSApi.pas',
  IFlyRecognizerView_iOSApi in 'XunFeiSDK\libs\iflyMSC.framework\Headers\IFlyRecognizerView_iOSApi.pas',
  IFlyRecognizerViewDelegate_iOSApi in 'XunFeiSDK\libs\iflyMSC.framework\Headers\IFlyRecognizerViewDelegate_iOSApi.pas',
  IFlySpeechError_iOSApi in 'XunFeiSDK\libs\iflyMSC.framework\Headers\IFlySpeechError_iOSApi.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
