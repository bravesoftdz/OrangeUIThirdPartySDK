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
  //����VPN
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
  //�����¼
  FSangForSDK.VpnLogin(SSL_AUTH_TYPE_PASSWORD,
                       Self.edtUserName.Text,
                       Self.edtPassword.Text//,
//                       '','',
//                       ''
                        );
end;

procedure TForm1.btnSMSLoginClick(Sender: TObject);
begin
  //���ŵ�¼

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
  //��ʼVPNʧ��
  FLogs.Add('����VPNʧ��!'+Self.FSangForSDK.GetVpnError);

end;

procedure TForm1.DoInitVPNSucc(Sender: TObject);
begin
  //��ʼVPN�ɹ�
  FLogs.Add('����VPN�ɹ�!');

end;

procedure TForm1.DoVPNAuthFail(Sender: TObject);
begin
  //��¼VPNʧ��
  FLogs.Add('��¼VPNʧ��!'+Self.FSangForSDK.GetVpnError);

end;

procedure TForm1.DoVPNAuthSucc(Sender: TObject; AAuthType: Integer);
begin
  //��¼VPN�ɹ�
  FLogs.Add('��¼VPN�ɹ�!');

  //SSL_AUTH_TYPE_NONE=17
  if AAuthType=SSL_AUTH_TYPE_NONE then
  begin
    FLogs.Add('���Է�����Դ��!');

  end
  else
  begin
    //��Ҫ������֤��¼
    FLogs.Add('��Ҫ������֤��¼!');
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
  //��ע����½
  FLogs.Add('��ע����½!');

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
  //�˳�
  FSangForSDK.VpnLogout;
end;





end.

