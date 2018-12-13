program TencentSDK_XE10;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit3 in 'Unit3.pas' {Form3},
  iOSApi.SCNetworkReachability in '..\..\OrangeProjectCommon\IOS\iOSApi.SCNetworkReachability.pas',
  QQApiInterface_iOSApi in 'TencentSDK\QQApiInterface_iOSApi.pas',
  QQApiInterfaceObject_iOSApi in 'TencentSDK\QQApiInterfaceObject_iOSApi.pas',
  sdkdef_iOSApi in 'TencentSDK\sdkdef_iOSApi.pas',
  TencentApiInterface_iOSApi in 'TencentSDK\TencentApiInterface_iOSApi.pas',
  TencentMessageObject_iOSApi in 'TencentSDK\TencentMessageObject_iOSApi.pas',
  TencentOAuth_iOSApi in 'TencentSDK\TencentOAuth_iOSApi.pas',
  TencentOAuthObject_iOSApi in 'TencentSDK\TencentOAuthObject_iOSApi.pas',
  uTencentQQAPI in 'TencentSDK\uTencentQQAPI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
