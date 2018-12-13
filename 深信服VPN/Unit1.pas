unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,

  IOUtils,

  FlyFilesUtils,

  uSangForSDK,
  sdkheader_iOSApi,

  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.ScrollBox, FMX.Memo,
  FMX.WebBrowser, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP;




type
  TForm1 = class(TForm)
    btnInit: TButton;
    btnPasswordLogin: TButton;
    edtHost: TEdit;
    edtPort: TEdit;
    edtUserName: TEdit;
    edtPassword: TEdit;
    btnLogout: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnConnect: TButton;
    Memo1: TMemo;
    Timer1: TTimer;
    edtUrl: TEdit;
    Button1: TButton;
    IdHTTP1: TIdHTTP;
    WebBrowser1: TWebBrowser;
    procedure btnInitClick(Sender: TObject);
    procedure btnPasswordLoginClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnSMSLoginClick(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FSangForSDK:TSangForSDK;
    procedure DoInitVPNSucc(Sender:TObject);
    procedure DoInitVPNFail(Sender:TObject);
    procedure DoVPNAuthFail(Sender:TObject);
    procedure DoVPNAuthSucc(Sender:TObject;AAuthType:Integer);
    procedure DoVPNLogout(Sender:TObject);
    { Private declarations }
  public
    FLogs:TStringList;
    { Public declarations }
  end;




var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnConnectClick(Sender: TObject);
begin
  //连接VPN
  FSangForSDK.InitSSLVpn(Self.edtHost.Text,StrToInt(Self.edtPort.Text));
end;

procedure TForm1.btnInitClick(Sender: TObject);
begin
  FLogs:=TStringList.Create;

  FMX.Types.Log.d('OrangeUI TForm1.btnInitClick');

  FSangForSDK:=TSangForSDK.Create;
  FSangForSDK.OnInitVPNSucc:=Self.DoInitVPNSucc;
  FSangForSDK.OnInitVPNFail:=Self.DoInitVPNFail;
  FSangForSDK.OnVPNAuthSucc:=Self.DoVPNAuthSucc;
  FSangForSDK.OnVPNAuthFail:=Self.DoVPNAuthFail;
  FSangForSDK.OnVPNLogout:=Self.DoVPNLogout;

  FSangForSDK.InitSDK;
end;

procedure TForm1.btnPasswordLoginClick(Sender: TObject);
begin
  //密码登录
  FSangForSDK.VpnLogin(SSL_AUTH_TYPE_PASSWORD,
                       Self.edtUserName.Text,
                       Self.edtPassword.Text//,
//                       '','',
//                       ''
                        );
end;

procedure TForm1.btnSMSLoginClick(Sender: TObject);
begin
  //短信登录

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  AResponseStream:TMemoryStream;
begin
  AResponseStream:=TMemoryStream.Create;
  try
    Self.IdHTTP1.Get(Self.edtUrl.Text,AResponseStream);
    AResponseStream.Position:=0;
    AResponseStream.SaveToFile(GetSDCardPath+'bb.html');
//    Self.Memo2.Text:=AResponseStream.DataString;
  finally
    FreeAndNil(AResponseStream);
  end;
  ShowMessage(GetSDCardPath+'bb.html');

  Self.WebBrowser1.URL:='file:/'+GetSDCardPath+'bb.html';

end;

procedure TForm1.DoInitVPNFail(Sender: TObject);
begin
  //初始VPN失败
  FLogs.Add('连接VPN失败!'+Self.FSangForSDK.GetVpnError);

end;

procedure TForm1.DoInitVPNSucc(Sender: TObject);
begin
  //初始VPN成功
  FLogs.Add('连接VPN成功!');

end;

procedure TForm1.DoVPNAuthFail(Sender: TObject);
begin
  //登录VPN失败
  FLogs.Add('登录VPN失败!'+Self.FSangForSDK.GetVpnError);

end;

procedure TForm1.DoVPNAuthSucc(Sender: TObject; AAuthType: Integer);
begin
  //登录VPN成功
  FLogs.Add('登录VPN成功!');

  //SSL_AUTH_TYPE_NONE=17
  if AAuthType=SSL_AUTH_TYPE_NONE then
  begin
    FLogs.Add('可以访问资源了!');

  end
  else
  begin
    //需要二次验证登录
    FLogs.Add('需要二次验证登录!');
//    FSangForSDK.VpnLogin(AAuthType,
//                         Self.edtUserName.Text,
//                         Self.edtPassword.Text//,
//  //                       '','',
//  //                       ''
//                          );

  end;

end;

procedure TForm1.DoVPNLogout(Sender: TObject);
begin
  //已注销登陆
  FLogs.Add('已注销登陆!');

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if FLogs<>nil then
  begin
    Self.Memo1.Lines.AddStrings(FLogs);
    FLogs.Clear;
  end;
end;

procedure TForm1.btnLogoutClick(Sender: TObject);
begin
  //退出
  FSangForSDK.VpnLogout;
end;





end.

