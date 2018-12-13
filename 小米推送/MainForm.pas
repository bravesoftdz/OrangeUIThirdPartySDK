unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,

  uXiaoMiPush,

  {$IFDEF ANDROID}
  Androidapi.Helpers,
  FMX.Platform.Android,
  FMX.Helpers.Android,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.App,
  Androidapi.JNI.Os,
  Androidapi.JNI.Widget,
  Androidapi.NativeActivity,
  Androidapi.JNI.Telephony,
  Androidapi.JNI.Provider,

  Androidapi.JNI.Embarcadero,
  Androidapi.JNI.GraphicsContentViewText,
  {$ENDIF}


  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TfrmMain = class(TForm)
    btnRegisterPush: TButton;
    edtRegID: TEdit;
    btnUnRegisterPush: TButton;
    Button1: TButton;
    procedure btnRegisterPushClick(Sender: TObject);
    procedure btnUnRegisterPushClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    FXiaoMiPush:TXiaoMiPush;
    procedure DoReceiveRegisterResult(Sender:TObject);
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.btnRegisterPushClick(Sender: TObject);
begin
  FXiaoMiPush:=TXiaoMiPush.Create;
  FXiaoMiPush.OnReceiveRegisterResult:=Self.DoReceiveRegisterResult;
  FXiaoMiPush.RegisterPush('2882303761517586882','5541758665882');

end;

procedure TfrmMain.btnUnRegisterPushClick(Sender: TObject);
begin
  FXiaoMiPush.UnRegisterPush;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
var
  Intent: JIntent;
begin

    FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi 1');

    Intent := TJIntent.JavaClass.init;
    FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi 2');
    Intent.addCategory(TJIntent.JavaClass.CATEGORY_LAUNCHER);
    FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi 3');
    Intent.setAction(TJIntent.JavaClass.ACTION_MAIN);
    FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi 4');
    Intent.setClassName(StringToJString('com.embarcadero.XunFeiTest_D10_1'),
                        StringToJString('com.embarcadero.firemonkey.FMXNativeActivity'));
    FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi 5');
    intent.setFlags(
                    TJIntent.JavaClass.FLAG_ACTIVITY_NEW_TASK
                    or TJIntent.JavaClass.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED
                    or
                    TJIntent.JavaClass.FLAG_ACTIVITY_REORDER_TO_FRONT
                    );
    FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi 6');
    SharedActivityContext.startActivity(Intent);

end;

procedure TfrmMain.DoReceiveRegisterResult(Sender: TObject);
begin
  Self.edtRegID.Text:=FXiaoMiPush.RegId;
end;

end.
