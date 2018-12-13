unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Actions, FMX.ActnList, FMX.StdActns, FMX.MediaLibrary.Actions,
  FMX.StdCtrls, FMX.ListBox, FMX.Objects, FMX.ScrollBox, FMX.Memo,
  FMX.Controls.Presentation, FMX.Layouts,
  uManager,
  uBaseList,
  System.Messaging, FMX.Media
  {$IFDEF ANDROID}
  ,zkcsdk,Androidapi.JNI.assistant,FMX.Surfaces,System.IOUtils,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Os,
  Androidapi.JNIBridge,
  Androidapi.Helpers,
  FMX.Helpers.Android,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Util,
  Androidapi.JNI.Embarcadero,
  Androidapi.JNI.Widget,
  XSuperObject,
  XSuperJson,DateUtils,
  Androidapi.JNI.App,
  Androidapi.JNI.Net
  {$ENDIF}
  ;

type
  {$IFDEF ANDROID}
  //�󶨷��񼰼���ӡ��
  TJRTLHandlerListener = class(TJavaLocal, JRTLHandler_Listener)
    procedure handleMessage(paramMessage: JMessage); cdecl;
  end;

  //����ɨ��
  TJMyCallBackStubListener = class(TJavaLocal,JMyCallBackStubListener)
    procedure onReturnValue(P1: TJavaArray<Byte>; P2: Integer); cdecl;
  end;

  {$ENDIF}

  TFormMain = class(TForm)
    btnOutputText: TButton;
    btnScanner: TButton;
    btnOutputImage: TButton;
    btnInit: TButton;
    MemoText: TMemo;
    btnLeft: TButton;
    btnCenter: TButton;
    btnRight: TButton;
    btnPrintUnicode: TButton;
    rbText1: TRadioButton;
    rbText2: TRadioButton;
    btnNormal: TButton;
    btnAllBig: TButton;
    btnHBig: TButton;
    btnVBig: TButton;
    btnPurcaseOne: TButton;
    btnPurcaseTwo: TButton;
    btnPurcaseThree: TButton;
    sbClient: TVertScrollBox;
    btnChoicePic: TButton;
    ActionList1: TActionList;
    TakePhotoFromLibraryAction1: TTakePhotoFromLibraryAction;
    Image1: TImage;
    cmbChoiceImageType: TComboBox;
    SkinFMXLabel1: TLabel;
    btnECode: TButton;
    btnTCode: TButton;
    SkinFMXLabel2: TLabel;
    cbLanguage: TComboBox;
    memScanResult: TMemo;
    MediaPlayer: TMediaPlayer;
    procedure FormDestroy(Sender: TObject);
    procedure btnOutputTextClick(Sender: TObject);
    procedure btnInitClick(Sender: TObject);
    procedure btnTextAliginClick(Sender: TObject);
    procedure btnPrintUnicodeClick(Sender: TObject);
    procedure rbTextChange(Sender: TObject);
    procedure btnTextFontClick(Sender: TObject);
    procedure btnPurcaseOneClick(Sender: TObject);
    procedure btnOutputImageClick(Sender: TObject);
    procedure TakePhotoFromLibraryAction1DidFinishTaking(Image: TBitmap);
    procedure cmbChoiceImageTypeChange(Sender: TObject);
    procedure btnECodeClick(Sender: TObject);
    procedure btnTCodeClick(Sender: TObject);
    procedure btnScannerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbLanguageChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    {$IFDEF ANDROID}
    //��ʼ�����й����嵥
    procedure InitSupermarkerABill(ABill:TSupermakerBill;
      AZKCService: JIZKCService; IsShowHeaderImg, IsShowEndImg: Boolean);
    //��ӡ�����嵥
    procedure PrintOutABill(AZKCService:JIZKCService;ABill:TSupermakerBill;ImageType:Integer);
    //����JBitmap���ļ�
    procedure SvaeJBitmapToFile(AJBitmap:JBitmap;AFilePath:String);
    { Private declarations }

    //TBitmapתJBitmap
    function TBitmapToJBitmap(const ABitmap: TBitmap): JBitmap;
    //JBitmapתTBitmap
    function JBitmapToTBitmap(const ABitmap: JBitmap): TBitmap;
    //JBitmap�޸ĳߴ�
    function ResizeBitmap(const bitmap:JBitmap;imgWith:Integer;imgHeight:Integer):JBitmap;
    {$ENDIF}
  public
    { Public declarations }
    {$IFDEF ANDROID}
    //����
    FZKCService:JIZKCService;
    FHandler:JRTLHandler;
    FJRTLHandlerListener:JRTLHandler_Listener;
    //����
    FLanguageList:TLanguageList;
    //��������Algin
    FTextAlgin:Integer;
    //������������
    FTextFont:Integer;
    //��ӡͼƬ����ʽ
    FImageType:Integer;
    //��ȡ��ͼƬ
    FImage:TBitmap;
    //����ɨ��ص�
    //��
    FPlayer:TMediaPlayer;
    FCallBack:JMyCallBackStub;
    FJMyCallBackStubListener:JMyCallBackStubListener;
    {$ENDIF}
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

procedure TFormMain.btnECodeClick(Sender: TObject);
begin
  {$IFDEF ANDROID}
  try
    Self.Image1.Bitmap.Assign(JBitmapToTBitmap(FZKCService.createQRCode(StringToJString(Self.MemoText.Text),384,384)));
  except on e:Exception do
    FMX.Types.Log.d('OrangeUI  btnECodeClick�쳣'+e.Message);
  end;
  {$ENDIF}
end;

procedure TFormMain.btnInitClick(Sender: TObject);
begin
  {$IFDEF ANDROID}
  //���� AHandler��������
  CallInUIThread(
  procedure
  begin
    try
      FJRTLHandlerListener:=TJRTLHandlerListener.Create;

      FHandler:=TJRTLHandler.JavaClass.init(FJRTLHandlerListener);

      TJZkcManager.JavaClass.getInstance.onCreate(
                  TAndroidHelper.Context,
                  FHandler);
      //����Ĭ��ͼƬ����
      FImageType:=0;

    except on e:Exception do
      FMX.Types.Log.d('OrangeUI  init�쳣'+e.Message);
    end;
  end);

  {$ENDIF}
end;

procedure TFormMain.btnTCodeClick(Sender: TObject);
begin
  {$IFDEF ANDROID}
  try
    //������Ϊ���Ļᱨ��
    //JBitmapToTBitmap������������ת�������뷽��
    //�ڶ�������  0-8��������ʽ   True/False ��ʾ����������
    FZKCService.printBitmap(FZKCService.createBarCode(StringToJString(Self.MemoText.Text),1,384,120,True));

    //���ܱ���
    // Self.SvaeJBitmapToFile(FZKCService.createBarCode(StringToJString(Self.MemoText.Text),1,384,120,True),System.IOUtils.TPath.GetHomePath+'/ss.png');

  except on e:Exception do
    FMX.Types.Log.d('OrangeUI  btnTCodeClick�쳣'+e.Message);
  end;
  {$ENDIF}
end;

procedure TFormMain.btnTextAliginClick(Sender: TObject);
begin
  {$IFDEF ANDROID}
  //������ʽ  0����  1����   2����
  FTextAlgin:=(Sender as TButton).Tag;
  {$ENDIF}
end;

procedure TFormMain.btnTextFontClick(Sender: TObject);
begin
  {$IFDEF ANDROID}
  try
    //�ı�����   ������ʽ   �����ʽ
    FZKCService.printTextWithFont(StringToJString(Self.MemoText.Text+#13#10),FTextFont,(Sender as TButton).Tag);
  except on e:Exception do
    FMX.Types.Log.d('OrangeUI  btnTextFontClick�쳣'+e.Message);
  end;
  {$ENDIF}
end;

procedure TFormMain.cbLanguageChange(Sender: TObject);
{$IFDEF ANDROID}
var
  AJavaArray:TJavaArray<Byte>;
  ACode:Integer;
{$ENDIF}
begin
  {$IFDEF ANDROID}
  AJavaArray:=TJavaArray<Byte>.Create(3);
  AJavaArray.Items[0]:=Byte(27);
  AJavaArray.Items[1]:=Byte(116);
  AJavaArray.Items[2]:=Byte(0);
  ACode:=StrToInt(FLanguageList.Items[(Sender as TComboBox).ItemIndex].code);
  AJavaArray.Items[2]:=Byte(ACode);

  if FZKCService<>nil then
  begin
    FZKCService.sendRAWData(StringToJString('print'),AJavaArray);
  end;
  {$ENDIF}
end;

procedure TFormMain.cmbChoiceImageTypeChange(Sender: TObject);
begin
  {$IFDEF ANDROID}
  // 0 POINT   1  GRAY   2 RASTER
  FImageType:=(Sender as TComboBox).ItemIndex;
  {$ENDIF}
end;

procedure TFormMain.btnOutputImageClick(Sender: TObject);
begin
  {$IFDEF ANDROID}
  try
    //�������ֲ���ӡ
    if FImageType=0 then
    begin
      FZKCService.printBitmap(ResizeBitmap(TBitmapToJBitmap(Self.Image1.Bitmap),384,384));
    end
    else if FImageType=1 then
    begin
      FZKCService.printImageGray(ResizeBitmap(TBitmapToJBitmap(Self.Image1.Bitmap),384,384));
    end
    else if FImageType=2 then
    begin
      FZKCService.printRasterImage(ResizeBitmap(TBitmapToJBitmap(Self.Image1.Bitmap),384,384));
    end;
  except on e:Exception do
    FMX.Types.Log.d('OrangeUI  btnOutputImageClick�쳣'+e.Message);
  end;
  {$ENDIF}
end;

{$IFDEF ANDROID}
function TFormMain.ResizeBitmap(const bitmap:JBitmap;imgWith:Integer;imgHeight:Integer):JBitmap;
var
  AWith,AHeight:Integer;
  AScaleWidth:Double;
  ALeftSingle:Single;
  AMatrix:JMatrix;
  AResizedBitmap,ANewBitmap:JBitmap;
  ACanvas:JCanvas;
begin
  AWith := bitmap.getWidth;
  AHeight := bitmap.getHeight;

  if AWith >= imgWith then
  begin
    AScaleWidth:=imgWith/AWith;
    AMatrix:=TJMatrix.JavaClass.init;
    AMatrix.postScale(AScaleWidth,AScaleWidth);
    AResizedBitmap:=TJBitmap.JavaClass.createBitmap(bitmap,0,0,AWith,AHeight,AMatrix,True);
    Result:=AResizedBitmap;
  end
  else
  begin
    ANewBitmap:=TJBitmap.JavaClass.createBitmap(imgWith, AHeight,bitmap.getConfig());
    ACanvas:=TJCanvas.JavaClass.init;
    ACanvas.setBitmap(ANewBitmap);
    ACanvas.drawColor(TJColor.JavaClass.WHITE);
    //���ô�ӡ��ʼ��߾�
    ALeftSingle:=(imgWith-AWith)/2;
    ACanvas.drawBitmap(bitmap,ALeftSingle,0,nil);

    Result:=ANewBitmap;
  end;
end;

function TFormMain.TBitmapToJBitmap(const ABitmap: TBitmap): JBitmap;
var
  ABitmapSurface: TBitmapSurface;
begin
  Result := TJBitmap.JavaClass.createBitmap(ABitmap.Width, ABitmap.Height, TJBitmap_Config.JavaClass.ARGB_8888);
  ABitmapSurface := TBitmapSurface.Create;
  try
    ABitmapSurface.Assign(ABitmap);
    if not SurfaceToJBitmap(ABitmapSurface, Result) then
      Result := nil;
  finally
    ABitmapSurface.Free;
  end;
end;

function TFormMain.JBitmapToTBitmap(const ABitmap: JBitmap): TBitmap;
var
  ABitmapSurface:TBitmapSurface;
  ATBitmap:TBitmap;
begin
  ABitmapSurface:=TBitmapSurface.Create;
  ATBitmap:=TBitmap.Create(ABitmap.getWidth,ABitmap.getHeight);
  if JBitmapToSurface(ABitmap,ABitmapSurface) then
  begin
    ATBitmap.Assign(ABitmapSurface);
    Result:=ATBitmap;
  end
  else
  begin
    Result:=nil;
  end;
  ABitmapSurface.Free;

end;
{$ENDIF}

procedure TFormMain.btnOutputTextClick(Sender: TObject);
begin
  {$IFDEF ANDROID}
  try
    if FZKCService<>nil then
    begin
      //���Ӵ�ӡ��
      TJZkcManager.JavaClass.getInstance.beginLinkToPrinter;

      //�жϴ�ӡ��״̬
      if JStringToString(FZKCService.getPrinterStatus)='����' then
      begin
        //�жϴ�ӡ���Ƿ����
        if FZKCService.checkPrinterAvailable then
        begin
          //��ʼ��ӡ
          //Ĭ�ϴ�ӡ  ����
          //FZKCService.printGBKText(StringToJString(Self.MemoText.Text+#13#10));
          //�Զ����ӡ   ������Խϴ�
          FZKCService.printTextAlgin(StringToJString(Self.MemoText.Text+#13#10),0,1,FTextAlgin);
        end;
      end;
    end;
  except on e:Exception do
    FMX.Types.Log.d('OrangeUI  btnOutputTextClick�쳣'+e.Message);
  end;
  {$ENDIF}

end;

procedure TFormMain.btnPrintUnicodeClick(Sender: TObject);
begin
  {$IFDEF ANDROID}
  try
    FZKCService.printUnicodeText(StringToJString(Self.MemoText.Text+#13#10));
  except on e:Exception do
    FMX.Types.Log.d('OrangeUI  btnPrintUnicodeClick�쳣'+e.Message);
  end;
  {$ENDIF}
end;

procedure TFormMain.btnPurcaseOneClick(Sender: TObject);
{$IFDEF ANDROID}
var
  AHasStartPic,AHasEndPic:Boolean;
  ABill:TSupermakerBill;
{$ENDIF}
begin
  {$IFDEF ANDROID}
  //0ģ��һ  1ģ���  2ģ����
  if (Sender as TButton).Tag=0 then
  begin
    AHasStartPic:=False;
    AHasEndPic:=False;
  end;

  if (Sender as TButton).Tag=1 then
  begin
    AHasStartPic:=True;
    AHasEndPic:=False;
  end;

  if (Sender as TButton).Tag=2 then
  begin
    AHasStartPic:=True;
    AHasEndPic:=True;
  end;

  ABill:=TSupermakerBill.Create;
  //��������
  Self.InitSupermarkerABill(ABill,FZKCService,AHasStartPic,AHasEndPic);
  //��ӡ
  Self.PrintOutABill(FZKCService,ABill,FImageType);

  {$ENDIF}
end;

{$IFDEF ANDROID}
//��ʼ�����й����嵥
procedure TFormMain.InitSupermarkerABill(ABill:TSupermakerBill;AZKCService:JIZKCService;IsShowHeaderImg:Boolean;IsShowEndImg:Boolean);
var
  AGoodsInfo0,AGoodsInfo1,AGoodsInfo2:TGoodsInfo;
begin
  ABill.supermaker_name:='XXX����';
  ABill.serial_number:=IntToStr(MilliSecondsBetween(Now,0));
  ABill.purchase_time:=FormatDateTime('YYYY-MM-DD HH:MM:SS',Now);
  ABill.total_amount:='3';
  ABill.total_cash:='168.86';
  ABill.favorable_cash:='8.86';
  ABill.receipt_cash:='160';
  ABill.recived_cash:='160';
  ABill.odd_change:='0.0';
  ABill.vip_number:='666666666';
  ABill.add_integral:='160';
  ABill.current_integral:='360';
  ABill.supermaker_address:='�����б���������xxxxxxxx';
  ABill.supermaker_call:='0755-99991668';
  //��ʾͷ��ͼƬ
  if IsShowHeaderImg then
  begin
    ABill.start_bitmap:=AZKCService.createBarCode(StringToJString(ABill.serial_number),1,384,120,False);
  end;
  //��ʾβ��ͼƬ
  if IsShowEndImg then
  begin
    ABill.end_bitmap:=AZKCService.createQRCode(StringToJString('ɨ���ע���꣬�о�ϲ�'),384,384);
  end;

  AGoodsInfo1:=TGoodsInfo.Create;
  AGoodsInfo1.goods_name:='�����Ʒ���ֺܳ�����������������������';
  AGoodsInfo1.goods_unit_price:='50';
  AGoodsInfo1.goods_amount:='2';
  AGoodsInfo1.goods_price:='100';
  ABill.GoodsInfolList.Add(AGoodsInfo1);

  AGoodsInfo0:=TGoodsInfo.Create;
  AGoodsInfo0.goods_name:='��������';
  AGoodsInfo0.goods_unit_price:='10';
  AGoodsInfo0.goods_amount:='6';
  AGoodsInfo0.goods_price:='60';
  ABill.GoodsInfolList.Add(AGoodsInfo0);

  AGoodsInfo2:=TGoodsInfo.Create;
  AGoodsInfo2.goods_name:='̩��������';
  AGoodsInfo2.goods_unit_price:='8.86';
  AGoodsInfo2.goods_amount:='1';
  AGoodsInfo2.goods_price:='8.86';
  ABill.GoodsInfolList.Add(AGoodsInfo2);

end;

procedure TFormMain.PrintOutABill(AZKCService: JIZKCService;
  ABill: TSupermakerBill; ImageType: Integer);
var
  ASpace0,ASpace1,ASpace2,ASpace3:String;
  AName,AUnitPrice,AAmount,APrice:String;
  ANameLength,AUnitPriceLength,AAmountLength,APriceLength:Integer;
  ASpaceLength0,ASpaceLength1,ASpaceLength2,ASpaceLength3:Integer;
  AName1,AName2:String;

  I,J:Integer;
begin
  if (AZKCService<>nil) AND (AZKCService.checkPrinterAvailable) then
  begin
    AZKCService.printGBKText(StringToJString(' '+#13#10));
    if ABill.start_bitmap<>nil then
    begin
      if ImageType=0 then
      begin
        AZKCService.printBitmap(ABill.start_bitmap);
      end
      else if ImageType=1 then
      begin
        AZKCService.printImageGray(ABill.start_bitmap);
      end
      else if ImageType=2 then
      begin
        AZKCService.printRasterImage(ABill.start_bitmap);
      end;
    end;

    AZKCService.printGBKText(StringToJString(ABill.supermaker_name+#13#10));
    AZKCService.printGBKText(StringToJString('��ˮ��:'+ABill.serial_number+#13#10
                  +ABill.purchase_time+#13#10));
    AZKCService.printGBKText(StringToJString('--------------------------------'+#13#10));
    AZKCService.printGBKText(StringToJString('Ʒ��'+'          '+'����'
						+'  '+'����'+'  '+'�۸�'+'  '+#13#10));
    AZKCService.printGBKText(StringToJString('--------------------------------'+#13#10));

    //��Ʒ�嵥
    for I := 0 to ABill.GoodsInfolList.Count-1 do
    begin
      ASpace0:='';
      ASpace1:='';
      ASpace2:='';
      ASpace3:='';

      AName:=ABill.GoodsInfolList.Items[I].goods_name;
      AUnitPrice:=ABill.GoodsInfolList.Items[I].goods_unit_price;
      AAmount:=ABill.GoodsInfolList.Items[I].goods_amount;
      APrice:=ABill.GoodsInfolList.Items[I].goods_price;

      ANameLength:=AName.Length;
      AUnitPriceLength:=AUnitPrice.Length;
      AAmountLength:=AAmount.Length;
      APriceLength:=APrice.Length;

      ASpaceLength0:=6-ANameLength;
      ASpaceLength1:=6-AUnitPriceLength;
      ASpaceLength2:=6-AAmountLength;
      ASpaceLength3:=6-APriceLength;

      AName1:='';
      AName2:='';

      if ANameLength>6 then
      begin
        AName1:=AName.Substring(0,6);
        AName2:=AName.Substring(6,AName.Length);

        for J := 0 to ASpaceLength1-1 do
        begin
          ASpace1:=ASpace1+' ';
        end;

        for J := 0 to ASpaceLength2-2 do
        begin
          ASpace2:=ASpace2+' ';
        end;

        AZKCService.printGBKText(StringToJString(AName1+'  '+AUnitPrice+ASpace1
                                  +' '+AAmount+ASpace2+APrice+#13#10));
        AZKCService.printGBKText(StringToJString(AName2+#13#10));
      end
      else
      begin
        for J := 0 to ASpaceLength0 do
        begin
          ASpace0:=ASpace0+'  ';
        end;

        for J := 0 to ASpaceLength1-1 do
        begin
          ASpace1:=ASpace1+' ';
        end;

        for J := 0 to ASpaceLength2-2 do
        begin
          ASpace2:=ASpace2+' ';
        end;

        AZKCService.printGBKText(StringToJString(AName+ASpace0+AUnitPrice+ASpace1
                                  +' '+AAmount+ASpace2+APrice+#13#10));
      end;
    end;

    AZKCService.printGBKText(StringToJString('--------------------------------'+#13#10));
    AZKCService.printGBKText(StringToJString('�Żݽ��:'+ABill.favorable_cash+'    '
          +'ʵ�ս��:'+ABill.receipt_cash+#13#10));
    AZKCService.printGBKText(StringToJString('�տ���:'+ABill.recived_cash+'     '
          +'������:'+ABill.odd_change+#13#10));
    AZKCService.printGBKText(StringToJString('--------------------------------'+#13#10));
    AZKCService.printGBKText(StringToJString('��Ա����:'+ABill.vip_number+#13#10));
    AZKCService.printGBKText(StringToJString('���λ���:'+ABill.add_integral+#13#10));
    AZKCService.printGBKText(StringToJString('���û���:'+ABill.current_integral+#13#10));
    AZKCService.printGBKText(StringToJString('--------------------------------'+#13#10));
    AZKCService.printGBKText(StringToJString('��ַ:'+ABill.supermaker_address+#13#10));
    AZKCService.printGBKText(StringToJString('�绰:'+ABill.supermaker_call+#13#10));
    AZKCService.printGBKText(StringToJString('��ӭ���٣�лл�ݹˣ�'+#13#10));

    if ABill.end_bitmap<>nil then
    begin
      if ImageType=0 then
      begin
        AZKCService.printBitmap(ABill.end_bitmap);
      end
      else if ImageType=1 then
      begin
        AZKCService.printImageGray(ABill.end_bitmap);
      end
      else if ImageType=2 then
      begin
        AZKCService.printRasterImage(ABill.end_bitmap);
      end;
    end;
  end;
end;
{$ENDIF}

procedure TFormMain.btnScannerClick(Sender: TObject);
begin
  {$IFDEF ANDROID}
  MediaPlayer.FileName:=System.IOUtils.TPath.GetHomePath+PathDelim+'scan.ogg';

  FJMyCallBackStubListener:=TJMyCallBackStubListener.Create;

  FCallBack:=TJMyCallBackStub.JavaClass.init;
  FCallBack.setMyCallBackStubListener(FJMyCallBackStubListener);

  FZKCService.setModuleFlag(4);

  FZKCService.registerCallBack(StringToJString('Scanner'),TJICallBack.Wrap((FCallBack as ILocalObject).GetObjectID));
  //True ��  False �ر�
  FZKCService.openScan(True);
  //��ʼɨ��
  FZKCService.scan;
  {$ENDIF}
end;

procedure TFormMain.FormActivate(Sender: TObject);
begin
  //
end;

procedure TFormMain.FormCreate(Sender: TObject);
{$IFDEF ANDROID}
var
  AJsonObject:ISuperObject;
  I: Integer;
{$ENDIF}
begin

  {$IFDEF ANDROID}
  AJsonObject:=TSuperObject.Create('{"Language":{"LanguageList":['+
      '{"language":"CP936","code":"15","description":"[��������]"},'+
      '{"language":"CP950","code":"14","description":"[��������]"},'+
      '{"language":"PC437","code":"0","description":"[������ŷ�ޱ�׼]"},'+
      '{"language":"PC850","code":"2","description":"[�����ԣ���ŷ��]"},'+
      '{"language":"PC860","code":"3","description":"[��������]"},'+
      '{"language":"PC863","code":"4","description":"[���ô�-����]"},'+
      '{"language":"PC865","code":"5","description":"[��ŷ - ����ն�������]"},'+
      '{"language":"PC1252","code":"6","description":"[West Europe]"},'+
      '{"language":"PC737","code":"7","description":"[Greek]"},'+
      '{"language":"PC862","code":"8","description":"[Hebrew]"},'+
      '{"language":"CP755","code":"9","description":"[East Europe]"},'+
      '{"language":"Iran","code":"10","description":"[����]"},'+
      '{"language":"CP775","code":"11","description":"[���޵ĺ���]"},'+
      '{"language":"CP932","code":"12","description":"[����]"},'+
      '{"language":"CP949","code":"13","description":"[����]"},'+
      '{"language":"PC866","code":"17","description":"[Cyrillice*2]"},'+
      '{"language":"PC852","code":"18","description":"[Latin2]"},'+
      '{"language":"PC858","code":"19","description":"[��ŷ��]"},'+
      '{"language":"CP861","code":"20","description":"[������]"},'+
      '{"language":"CP866","code":"21","description":"[˹������/���� ]"},'+
      '{"language":"CP855","code":"22","description":"[˹������ �������� ]"},'+
      '{"language":"CP857","code":"23","description":"[��������]"},'+
      '{"language":"CP864","code":"24","description":"[��������]"},'+
      '{"language":"CP869","code":"25","description":"[ϣ����(2)]"},'+
      '{"language":"CP874","code":"32","description":"[̩��]"},'+
      '{"language":"CP1250","code":"33","description":"[��ŷ Latin-2]"},'+
      '{"language":"CP1251","code":"34","description":"[������� ˹������ ����]"},'+
      '{"language":"CP1252","code":"35","description":"[��ŷ(������ I)]"},'+
      '{"language":"CP1253","code":"36","description":"[ϣ����]"},'+
      '{"language":"CP1254","code":"37","description":"[��������]"},'+
      '{"language":"CP1255","code":"38","description":"[ϣ������]"},'+
      '{"language":"CP1256","code":"39","description":"[��������]"},'+
      '{"language":"P1257","code":"40","description":"[���޵ĺ���]"},'+
      '{"language":"CP1258","code":"41","description":"[Խ��]"}]}}');

  FLanguageList:=TLanguageList.Create(ooOwned);
  FLanguageList.ParseFromJsonArray(TLanguage,AJsonObject.O['Language'].A['LanguageList']);

  for I := 0 to FLanguageList.Count-1 do
  begin
    Self.cbLanguage.Items.Add(FLanguageList[I].language
                        +FLanguageList[I].description
                        +'('+FLanguageList[I].language+')');
  end;
  {$ENDIF}
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  {$IFDEF ANDROID}
  if FCallBack<>nil then
  begin
    FZKCService.unregisterCallBack(StringToJString('Scanner'),TJICallBack.Wrap((FCallBack as ILocalObject).GetObjectID));
  end;

  TJZkcManager.JavaClass.getInstance.onDestroy;

  if FLanguageList<>nil then
  begin
    FLanguageList.Free;
  end;
  {$ENDIF}
end;

procedure TFormMain.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (Key=116)
    or (Key=117) then
  begin
    Self.btnScannerClick(Sender);
  end;
end;

procedure TFormMain.rbTextChange(Sender: TObject);
begin
  {$IFDEF ANDROID}
  Self.rbText1.IsChecked:=Not Self.rbText2.IsChecked;
  if Self.rbText1.IsChecked then
  begin
    FTextFont:=0;
  end;

  if Self.rbText2.IsChecked then
  begin
    FTextFont:=1;
  end;
  {$ENDIF}
end;

{$IFDEF ANDROID}
procedure TFormMain.SvaeJBitmapToFile(AJBitmap: JBitmap; AFilePath: String);
var
  AFile:JFile;
  AFileOutputStream:JFileOutputStream;
begin
  AFile:=TJFile.JavaClass.init(StringToJString(AFilePath));
  try
    try
      if AFile.createNewFile then
      begin
        AFileOutputStream:=TJFileOutputStream.JavaClass.init(AFile);
        AJBitmap.compress(TJBitmap_CompressFormat.JavaClass.PNG,100,AFileOutputStream);
        AFileOutputStream.flush;
      end;
    except on e:Exception do
      FMX.Types.Log.d('OrangeUI '+e.Message);
    end;
  finally
    try
      if AFileOutputStream<>nil then
      begin
        AFileOutputStream.close;
      end;
    except on e:Exception do
      FMX.Types.Log.d('OrangeUI '+e.Message);
    end;
  end;
end;
{$ENDIF}

procedure TFormMain.TakePhotoFromLibraryAction1DidFinishTaking(Image: TBitmap);
begin
  Self.Image1.Bitmap.Assign(Image);
end;

{ TJRTLHandlerListener }
{$IFDEF ANDROID}
procedure TJRTLHandlerListener.handleMessage(paramMessage: JMessage);
begin
  try
    if paramMessage.what=TJMessageType_BaiscMessage.JavaClass.SEVICE_BIND_SUCCESS then
    begin
      FormMain.FZKCService:=TJIZKCService.Wrap((paramMessage.obj as ILocalObject).GetObjectID);
      FMX.Types.Log.d('OrangeUI  SEVICE_BIND_SUCCESS');
    end
    else
    if paramMessage.what=TJMessageType_BaiscMessage.JavaClass.SEVICE_BIND_FAIL then
    begin
      FMX.Types.Log.d('OrangeUI  SEVICE_BIND_FAIL');
    end
    else
    if paramMessage.what=TJMessageType_BaiscMessage.JavaClass.DETECT_PRINTER_SUCCESS then
    begin
      FMX.Types.Log.d('OrangeUI  DETECT_PRINTER_SUCCESS');
    end
    else
    if paramMessage.what=TJMessageType_BaiscMessage.JavaClass.PRINTER_LINK_TIMEOUT then
    begin
      FMX.Types.Log.d('OrangeUI  PRINTER_LINK_TIMEOUT');
    end
    else
    begin
      FMX.Types.Log.d('OrangeUI  Error Do Not Know');
    end;

  except on e:Exception do
    FMX.Types.Log.d('OrangeUI  Handler��'+e.Message);
  end;
end;

{ TJCallBack }

procedure TJMyCallBackStubListener.onReturnValue(P1: TJavaArray<Byte>; P2: Integer); cdecl;
var
  AJString:JString;
begin
  AJString:=TJString.JavaClass.init(P1,0,P2);

  //����
  FormMain.MediaPlayer.Play;

  FormMain.memScanResult.Text:=JStringToString(AJString)+#13#10;
  FormMain.FZKCService.openScan(False);
end;
{$ENDIF}


end.
