unit uXiaoMiPush;

interface

uses
  SysUtils,
  Classes,

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
  Androidapi.JNI.RunningServiceInfo,

  Androidapi.JNI.MiPush_SDK_Client_3_4_0,
  Androidapi.JNI.mipushreceiver,
  {$ENDIF}

  FMX.Types;


type
  TXiaoMiPush=class;

  {$IFDEF ANDROID}
  JProcessClass=interface(JObjectClass)
    ['{5D9CA4E4-8F81-42CC-B540-D15C321D91D6}']
    {class} function myPid: Integer; cdecl;

  end;

  [JavaSignature('android/os/Process')]
  JProcess = interface(JObject)
    ['{7D4B0682-0B83-4612-BE08-10559952382A}']
  end;

  TJProcess = class(TJavaGenericImport<JProcessClass,JProcess>) end;


  TJOnMyPushMessageListener = class(TJavaLocal, JOnMyPushMessageListener)
    { Property Methods }
    FXiaoMiPush:TXiaoMiPush;
    { methods }
    procedure onReceivePassThroughMessage(P1: JContext; P2: JMiPushMessage); cdecl;
    procedure onNotificationMessageClicked(P1: JContext; P2: JMiPushMessage); cdecl;
    procedure onNotificationMessageArrived(P1: JContext; P2: JMiPushMessage); cdecl;
    procedure onCommandResult(P1: JContext; P2: JMiPushCommandMessage); cdecl;
    procedure onReceiveRegisterResult(P1: JContext; P2: JMiPushCommandMessage); cdecl;
    { Property }
    public
      constructor Create(AXiaoMiPush:TXiaoMiPush);
  end;
  {$ENDIF}


  TXiaoMiPush=class
  private
    {$IFDEF ANDROID}
    FOnMyPushMessageListener:JOnMyPushMessageListener;
    {$ENDIF}
  public
    RegId:String;
    OnReceiveRegisterResult:TNotifyEvent;
    //注册推送
    function RegisterPush(AAPPID:String;AAPPSecret:String):Boolean;
    function UnRegisterPush:Boolean;
  public
    destructor Destroy;override;
  end;


implementation

  {$IFDEF ANDROID}

function shouldInit:Boolean;
var
  ActivityServiceManager: JObject;
  AActivityManager : JActivityManager;
  List: JList;
  Iterator: JIterator;
  ri: JActivityManager_RunningAppProcessInfo;
  s: String;
  mainProcessName:String;
  myPid:Integer;
begin
    Result:=False;

    FMX.Types.Log.d('OrangeUI shouldInit');

    mainProcessName := JStringToString(TAndroidHelper.Context.getPackageName());
    FMX.Types.Log.d('OrangeUI mainProcessName '+mainProcessName);
    myPid:=TJProcess.JavaClass.myPid;
    FMX.Types.Log.d('OrangeUI myPid '+IntToStr(myPid));

    ActivityServiceManager := TAndroidHelper.Context.getSystemService(TJContext.JavaClass.ACTIVITY_SERVICE);
    AActivityManager := TJActivityManager.Wrap((ActivityServiceManager as ILocalObject).GetObjectID);
    List := AActivityManager.getRunningAppProcesses();

    Iterator := List.iterator;
    while Iterator.hasNext do
    begin
      ri := TJActivityManager_RunningAppProcessInfo.Wrap((Iterator.next as ILocalObject).GetObjectID);
      s := JStringToString(ri.processName);
      FMX.Types.Log.d('OrangeUI processName '+s);

      if (ri.pid = myPid) and (s = mainProcessName) then
      begin
        Result:=True;
      end;
    end;

//    ActivityManager am = ((ActivityManager) getSystemService(Context.ACTIVITY_SERVICE));
//    List<RunningAppProcessInfo> processInfos = am.getRunningAppProcesses();
//    String mainProcessName = getPackageName();
//    int myPid = Process.myPid();
//    for (RunningAppProcessInfo info : processInfos) {
//        if (info.pid == myPid && mainProcessName.equals(info.processName)) {
//            return true;
//        }
//    }
//    return false;

end;

  {$ENDIF}



  {$IFDEF ANDROID}

{ TJOnMyPushMessageListener }

constructor TJOnMyPushMessageListener.Create(AXiaoMiPush: TXiaoMiPush);
begin
  Inherited Create;
  FXiaoMiPush:=AXiaoMiPush;
end;

procedure TJOnMyPushMessageListener.onCommandResult(P1: JContext;
  P2: JMiPushCommandMessage);
begin
  FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onCommandResult In Delphi');

end;

procedure TJOnMyPushMessageListener.onNotificationMessageArrived(P1: JContext;
  P2: JMiPushMessage);
begin
  FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageArrived In Delphi');

end;

procedure TJOnMyPushMessageListener.onNotificationMessageClicked(P1: JContext;
  P2: JMiPushMessage);
begin
  FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi');
  //如果程序在后台,那么运行到前台来

//Intent intent = new Intent(this, MainActivity.class);
//intent.addCategory(Intent.CATEGORY_LAUNCHER);
//intent.setAction(Intent.ACTION_MAIN);
//intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);

//  CallInUIThread(
//  procedure
//  var
//    Intent: JIntent;
//  begin
//
//      FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi 1');
//
//      Intent := TJIntent.JavaClass.init;
//      FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi 2');
//      Intent.addCategory(TJIntent.JavaClass.CATEGORY_LAUNCHER);
//      FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi 3');
//      Intent.setAction(TJIntent.JavaClass.ACTION_MAIN);
//      FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi 4');
//      Intent.setClassName(SharedActivityContext,
//                          StringToJString('com.embarcadero.firemonkey.FMXNativeActivity'));
//      FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi 5');
//      intent.setFlags(
//                      TJIntent.JavaClass.FLAG_ACTIVITY_NEW_TASK
//                      or TJIntent.JavaClass.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED
//                      or
//                      TJIntent.JavaClass.FLAG_ACTIVITY_REORDER_TO_FRONT
//                      );
//      FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onNotificationMessageClicked In Delphi 6');
//      SharedActivityContext.startActivity(Intent);
//
//  end);

end;

procedure TJOnMyPushMessageListener.onReceivePassThroughMessage(P1: JContext;
  P2: JMiPushMessage);
begin
  FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onReceivePassThroughMessage In Delphi');

end;

procedure TJOnMyPushMessageListener.onReceiveRegisterResult(P1: JContext;
  P2: JMiPushCommandMessage);
var
  command:JString;
  arguments:JList;
  cmdArg1:JString;
begin
  FMX.Types.Log.d('OrangeUI TJOnMyPushMessageListener.onReceiveRegisterResult In Delphi');

  command:=P2.getCommand;
  arguments:=P2.getCommandArguments;
  if (arguments<>nil) and (arguments.size>0) then
  begin
    cmdArg1:=TJString.Wrap( (arguments.get(0) as ILocalObject).GetObjectID );

    if FXiaoMiPush<>nil then
    begin
      FXiaoMiPush.RegId:=JStringToString(cmdArg1);

      CallInUIThread(
      procedure
      begin
        if Assigned(FXiaoMiPush.OnReceiveRegisterResult) then
        begin
          FXiaoMiPush.OnReceiveRegisterResult(FXiaoMiPush);
        end;
      end);

    end;
  end;

end;
  {$ENDIF}



{ TXiaoMiPush }

destructor TXiaoMiPush.Destroy;
begin
  {$IFDEF ANDROID}

  if FOnMyPushMessageListener=nil then
  begin
    FOnMyPushMessageListener:=nil;
    TJMyPushMessageReceiver.JavaClass.setOnMyPushMessageListener(nil);
  end;
  {$ENDIF}

  inherited;
end;

function TXiaoMiPush.RegisterPush(AAPPID, AAPPSecret: String): Boolean;
begin
  {$IFDEF ANDROID}
  if FOnMyPushMessageListener=nil then
  begin
    FOnMyPushMessageListener:=TJOnMyPushMessageListener.Create(Self);
    TJMyPushMessageReceiver.JavaClass.setOnMyPushMessageListener(FOnMyPushMessageListener);
  end;

  if shouldInit then
  begin
    FMX.Types.Log.d('OrangeUI TJMiPushClient.JavaClass.registerPush');
    TJMiPushClient.JavaClass.registerPush(
            SharedActivity.getApplicationContext,
            StringToJString(AAPPID),
            StringToJString(AAPPSecret)
            );
  end;
  {$ENDIF}

end;

function TXiaoMiPush.UnRegisterPush: Boolean;
begin
  {$IFDEF ANDROID}
  FMX.Types.Log.d('OrangeUI TJMiPushClient.JavaClass.unregisterPush');
  TJMiPushClient.JavaClass.unregisterPush(SharedActivity.getApplicationContext);
  {$ENDIF}
end;

end.
