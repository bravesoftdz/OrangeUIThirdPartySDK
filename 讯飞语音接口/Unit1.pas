unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,

  Math,
  XSuperObject,
  FMX.Platform,
  CVCode,

  uXunFeiSDK,

  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ScrollBox, FMX.Memo, FMX.ListBox,
  FMX.Edit;



type
  TForm1 = class(TForm)
    btnStartSpeaking: TButton;
    Memo1: TMemo;
    btnPauseSpeaking: TButton;
    btnStopSpeaking: TButton;
    btnResumeSpeaking: TButton;
    cmbVoiceTypeName: TComboBox;
    cmbVoiceTypeValue: TComboBox;
    Label1: TLabel;
    btnStartListening: TButton;
    Memo2: TMemo;
    btnCancelListening: TButton;
    edtAndroidAPPID: TEdit;
    Label2: TLabel;
    edtIOSAPPID: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Memo3: TMemo;
    tmrListeningResult: TTimer;
    btnClear: TButton;
    switchLanguage: TSwitch;
    lblLanguage: TLabel;
    lblASR_PTT: TLabel;
    switchASR_PTT: TSwitch;
    lblShowDialog: TLabel;
    switchShowDialog: TSwitch;
    btnStopListening: TButton;
    procedure btnStartSpeakingClick(Sender: TObject);
    procedure btnPauseSpeakingClick(Sender: TObject);
    procedure btnStopSpeakingClick(Sender: TObject);
    procedure btnResumeSpeakingClick(Sender: TObject);
    procedure cmbVoiceTypeNameChange(Sender: TObject);
    procedure btnStartListeningClick(Sender: TObject);
    procedure btnCancelListeningClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tmrListeningResultTimer(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure switchLanguageSwitch(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure switchASR_PTTSwitch(Sender: TObject);
    procedure switchShowDialogSwitch(Sender: TObject);
    procedure btnStopListeningClick(Sender: TObject);
  private
    FXunFeiSDK:TXunFeiSDK;
    //����ʶ��ķ��ؽ��,Ĭ����json
    FIatResultJsons:TStringList;

    //��ʼ�������ŵĽ��
    procedure DoInitTtsResult(Sender:TObject;AResult:Boolean);
    //��ʼ������д�Ľ��
    procedure DoInitIatResult(Sender:TObject;AResult:Boolean);
    //��ȡ��������д�Ľ��
    procedure DoListeningResult(Sender:TObject;AResultJson:String);
  private
    FApplicationEventService:IFMXApplicationEventService;
    function OnApplicationEventHandler(AAppEvent: TApplicationEvent; AContext: TObject):Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;



var
  Form1: TForm1;



implementation

{$R *.fmx}


{TForm1}

procedure TForm1.btnCancelListeningClick(Sender: TObject);
begin
  //ȡ��������д
  FXunFeiSDK.CancelListening;
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  Self.Memo2.Lines.Clear;
end;

procedure TForm1.btnPauseSpeakingClick(Sender: TObject);
begin
  //��ͣ�����ϳ�
  FXunFeiSDK.PauseSpeaking;
end;

procedure TForm1.btnResumeSpeakingClick(Sender: TObject);
begin
  //���������ϳ�
  FXunFeiSDK.ResumeSpeaking;
end;

procedure TForm1.btnStartListeningClick(Sender: TObject);
begin
  //������д
  FXunFeiSDK.StartListening(Self.switchShowDialog.IsChecked);
end;

procedure TForm1.btnStartSpeakingClick(Sender: TObject);
begin
  FXunFeiSDK.StartSpeaking(
      Self.cmbVoiceTypeValue.Items[Self.cmbVoiceTypeValue.ItemIndex],
      Self.Memo1.Lines.Text
      );
end;

procedure TForm1.btnStopListeningClick(Sender: TObject);
begin
  //ֹͣ����ʶ��
  FXunFeiSDK.StopListening;
end;

procedure TForm1.btnStopSpeakingClick(Sender: TObject);
begin
  //ֹͣ�����ϳ�
  FXunFeiSDK.StopSpeaking;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  //����ת���ɷ���
  Self.Memo1.Text:=Chs2Cht(Self.Memo1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  //����ת���ɼ���
  Self.Memo1.Text:=Cht2Chs(Self.Memo1.Text);

end;

procedure TForm1.cmbVoiceTypeNameChange(Sender: TObject);
begin
  Self.cmbVoiceTypeValue.ItemIndex:=Self.cmbVoiceTypeName.ItemIndex;
end;

procedure TForm1.DoInitIatResult(Sender: TObject; AResult: Boolean);
begin
  if not AResult then
  begin
    ShowMessage('������д��ʼʧ��!');
  end
  else
  begin
    Self.Memo3.Lines.Add('������д��ʼ�ɹ�!');
  end;
end;

procedure TForm1.DoInitTtsResult(Sender: TObject; AResult: Boolean);
begin
  if not AResult then
  begin
    ShowMessage('�������ų�ʼʧ��!');
  end
  else
  begin
    Self.Memo3.Lines.Add('�������ų�ʼ�ɹ�!');
  end;
end;

procedure TForm1.DoListeningResult(Sender: TObject; AResultJson: String);
begin
  //Ҫ����Timer������
  FIatResultJsons.Add(AResultJson);

  Self.tmrListeningResult.Enabled:=True;

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FXunFeiSDK);
  FreeAndNil(FIatResultJsons);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  FXunFeiSDK:=TXunFeiSDK.Create;
  FXunFeiSDK.OnInitTtsResult:=DoInitTtsResult;
  FXunFeiSDK.OnInitIatResult:=DoInitIatResult;
  FXunFeiSDK.OnListeningResult:=DoListeningResult;
  FXunFeiSDK.Init(Self.edtAndroidAPPID.Text,Self.edtIOSAPPID.Text);

  FIatResultJsons:=TStringList.Create;

end;

function TForm1.OnApplicationEventHandler(AAppEvent: TApplicationEvent;
  AContext: TObject): Boolean;
begin
  if FXunFeiSDK<>nil then
  begin
    FXunFeiSDK.OnApplicationEventHandler(AAppEvent,AContext);
  end;


end;

procedure TForm1.switchLanguageSwitch(Sender: TObject);
begin
  //�л���Ӣ��
  if Self.switchLanguage.IsChecked then
  begin
    Self.lblLanguage.Text:='Ӣ��';
    Self.FXunFeiSDK.SetListeningParam('language','en_us');
  end
  else
  begin
    Self.lblLanguage.Text:='����';
    Self.FXunFeiSDK.SetListeningParam('language','zh_cn');
  end;
end;

procedure TForm1.switchShowDialogSwitch(Sender: TObject);
begin
  if Self.switchShowDialog.IsChecked then
  begin
    //��ʾ�Ի���
    lblShowDialog.Text:='��ʾ�Ի���';
  end
  else
  begin
    //����ʾ�Ի���
    lblShowDialog.Text:='����ʾ�Ի���';
  end;
end;

procedure TForm1.switchASR_PTTSwitch(Sender: TObject);
begin
  //�����Ƿ�������� 0��ʾ������㣬1���ʾ����㡣
  if switchASR_PTT.IsChecked then
  begin
    //�������
    lblASR_PTT.Text:='�������';
    Self.FXunFeiSDK.SetListeningParam('asr_ptt','0');
  end
  else
  begin
    //�����
    lblASR_PTT.Text:='�����';
    Self.FXunFeiSDK.SetListeningParam('asr_ptt','1');
  end;
end;

procedure TForm1.tmrListeningResultTimer(Sender: TObject);
var
  I: Integer;
  AResult:String;
begin
  Self.tmrListeningResult.Enabled:=False;

  if FIatResultJsons<>nil then
  begin
    AResult:='';
    for I := 0 to FIatResultJsons.Count-1 do
    begin
      AResult:=AResult+ParseIatResult(FIatResultJsons[I]);
//      AResult:=AResult+Chs2Cht(ParseIatResult(FIatResultJsons[I]));
    end;
    Self.Memo2.Text:=Self.Memo2.Text+AResult;

    FIatResultJsons.Clear;
  end;


end;

end.
