unit uXunFeiSDK;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,

  Math,
  XSuperObject,
  FMX.Platform,
  FMX.Dialogs,
  FMX.Forms,

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
  Androidapi.JNI.Java.Net,

  Androidapi.JNI.Embarcadero,
  Androidapi.JNI.GraphicsContentViewText,

  Androidapi.JNI.Msc,
  Androidapi.JNI.Sunflower,

  {$ENDIF}


  {$IFDEF IOS}
  Macapi.ObjectiveC,
  Macapi.ObjCRuntime,
  iOSapi.CocoaTypes,
  Macapi.Helpers,

  iOSapi.AVFoundation,
  iOSapi.UIKit,
  iOSapi.Foundation,
  iOSapi.CoreGraphics,

  System.ZLib,

  FMX.Platform.iOS,
  IFlySpeechError_iOSApi,
  IFlySpeechUtility_iOSApi,
  IFlySetting_iOSApi,
  IFlySpeechConstant_iOSApi,
  IFlySpeechSynthesizer_iOSApi,
  IFlySpeechSynthesizerDelegate_iOSApi,
  IFlySpeechRecognizer_iOSApi,
  IFlySpeechRecognizerDelegate_iOSApi,
  IFlyRecognizerView_iOSApi,
  IFlyRecognizerViewDelegate_iOSApi,
  {$ENDIF}

  FMX.Types;

type
  TXunFeiSDK=class;

  {$IFDEF ANDROID}
  TOnonInitEvent=procedure(P1: Integer) of object;
  //初始回调
  TJInitListener = class(TJavaLocal, JInitListener)
    { Property Methods }
    OnonInit:TOnonInitEvent;
    { methods }
    procedure onInit(P1: Integer); cdecl;
    constructor Create(AOnonInit:TOnonInitEvent);
    { Property }
  end;


  //语音合成回调
  TJSynthesizerListener = class(TJavaLocal,JSynthesizerListener)
    { Property Methods }
    { methods }
    procedure onSpeakBegin; cdecl;
    procedure onBufferProgress(P1: Integer; P2: Integer; P3: Integer; P4: JString); cdecl;
    procedure onSpeakPaused; cdecl;
    procedure onSpeakResumed; cdecl;
    procedure onSpeakProgress(P1: Integer; P2: Integer; P3: Integer); cdecl;
    procedure onCompleted(P1: JSpeechError); cdecl;
    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
    { Property }
  end;


  //语音识别-无对话框-回调
  TJRecognizerListener = class(TJavaLocal,JRecognizerListener)
    { Property Methods }
    FXunFeiSDK:TXunFeiSDK;
    { methods }
    procedure onVolumeChanged(P1: Integer; P2: TJavaArray<Byte>); cdecl;
    procedure onBeginOfSpeech; cdecl;
    procedure onEndOfSpeech; cdecl;
    procedure onResult(P1: JRecognizerResult; P2: Boolean); cdecl;
    procedure onError(P1: JSpeechError); cdecl;
    procedure onEvent(P1: Integer; P2: Integer; P3: Integer; P4: JBundle); cdecl;
  public
    constructor Create(AXunFeiSDK:TXunFeiSDK);
    { Property }
  end;

  //语音识别-对话框-回调
  TJRecognizerDialogListener = class(TJavaLocal,JRecognizerDialogListener)
    { Property Methods }
    FXunFeiSDK:TXunFeiSDK;
    { methods }
    procedure onResult(P1: JRecognizerResult; P2: Boolean); cdecl;
    procedure onError(P1: JSpeechError); cdecl;
  public
    constructor Create(AXunFeiSDK:TXunFeiSDK);
    { Property }
  end;
  {$ENDIF}





  TXunFeiSDKInitResultEvent=procedure(Sender:TObject;AResult:Boolean) of object;
  TXunFeiSDKListeningResultEvent=procedure(Sender:TObject;AResultJson:String) of object;


  TXunFeiSDK = class
  {$IFDEF ANDROID}
  private
    //语音合成
    mTts:JSpeechSynthesizer;
    mTtsInitListener:JInitListener;
    mTtsListener:JSynthesizerListener;
  private
    //语音听写
    mIat:JSpeechRecognizer;
    mIatInitListener:JInitListener;

    //语音听写,无对话框
    mRecognizerListener:JRecognizerListener;

  	//语音听写对话框
    mIatDialog:JRecognizerDialog;
    mRecognizerDialogListener:JRecognizerDialogListener;
  private
    procedure Do_Tts_onInit(P1: Integer);
    procedure Do_Iat_onInit(P1: Integer);
  {$ENDIF}

  {$IFDEF IOS}
  private
    _iFlySpeechUtility:IFlySpeechUtility;

  private
    //语音合成
    _iFlySpeechSynthesizer:IFlySpeechSynthesizer;
    _iFlySpeechSynthesizerDelegate:TIFlySpeechSynthesizerDelegate;
    procedure Do_Synthesizer_OnonCompleted(error:IFlySpeechError{*});
    procedure Do_Synthesizer_OnonSpeakBegin();
    procedure Do_Synthesizer_OnonBufferProgressmessage(progress:Integer;msg:NSString{*});
    procedure Do_Synthesizer_OnonSpeakProgressbeginPosendPos(progress:Integer;beginPos:Integer;endPos:Integer);
    procedure Do_Synthesizer_OnonSpeakPaused();
    procedure Do_Synthesizer_OnonSpeakResumed();
    procedure Do_Synthesizer_OnonSpeakCancel();
    procedure Do_Synthesizer_OnonEventarg0arg1data(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*});
  private
    //语音听写对话框
    _iflyRecognizerView:IFlyRecognizerView;
    _iflyRecognizerViewDelegate:TIFlyRecognizerViewDelegate;
    procedure Do_RecognizerView_OnonResultisLast(resultArray:NSArray{*};isLast:Boolean);
    procedure Do_RecognizerView_OnonError(error:IFlySpeechError{*});

  private
    //语音听写,无对话框
    _iFlySpeechRecognizer:IFlySpeechRecognizer;
    _iFlySpeechRecognizerDelegate:TIFlySpeechRecognizerDelegate;
    procedure Do_Recognizer_OnonError(errorCode:IFlySpeechError{*});
    procedure Do_Recognizer_OnonResultsisLast(results:NSArray{*};isLast:Boolean);
    procedure Do_Recognizer_OnonVolumeChanged(volume:Integer);
    procedure Do_Recognizer_OnonBeginOfSpeech();
    procedure Do_Recognizer_OnonEndOfSpeech();
    procedure Do_Recognizer_OnonCancel();
    procedure Do_Recognizer_OngetAudioKey(key:NSString{*});
    procedure Do_Recognizer_OnonEventarg0arg1data(eventType:Integer;arg0:Integer;arg1:Integer;eventData:NSData{*});
  {$ENDIF}
    { Private declarations }
  private
    //语音识别返回
    procedure DoListeningResult(AResultString:String);
  public
    //语音合成初始事件
    OnInitTtsResult:TXunFeiSDKInitResultEvent;
    //语音识别初始事件
    OnInitIatResult:TXunFeiSDKInitResultEvent;
    //语音听写识别结束事件
    OnListeningResult:TXunFeiSDKListeningResultEvent;
    //识别结果
    RecognizerResult:String;
    //是否正在语音识别,避免识别没结束再次启动识别立即结束的问题
    IsListening:Boolean;


    //初始
    procedure Init(AAndroidAPPID:String;AIOSAPPID:String);
    //语音合成
    procedure StartSpeaking(AVoiceName:String;AText:String);
    procedure PauseSpeaking;
    procedure StopSpeaking;
    procedure ResumeSpeaking;
    //语音听写
    procedure StartListening(isShowDialog:Boolean=True);
    procedure StopListening;
    procedure CancelListening;

    //设置语音识别的参数
    procedure SetListeningParam(AParamName:String;AParamValue:String);
  public
    function OnApplicationEventHandler(AAppEvent: TApplicationEvent; AContext: TObject):Boolean;
  public
    constructor Create;
    destructor Destroy;override;
    { Public declarations }
  end;





//解析语音听写返回的结果
function ParseIatResult(AResultJson:String):String;

implementation


function ParseIatResult(AResultJson:String):String;
var
  I,J:Integer;
  ASuperObject:ISuperObject;
  wso:ISuperObject;
  cwo:ISuperObject;
begin
  Result:='';
  if Trim(AResultJson)<>'' then
  begin

      try
        ASuperObject:=TSuperObject.Create(AResultJson);

        FMX.Types.Log.d('OrangeUI ParseIatResult ws len '+IntToStr(ASuperObject.A['ws'].Length));


        for I := 0 to ASuperObject.A['ws'].Length-1 do
        begin
            wso:=ASuperObject.A['ws'].O[I];//.A['cw'].O[0].S['w'];

            cwo:=wso.A['cw'].O[0];
            Result:=Result+cwo.S['W'];

        end;

      except
        on E:Exception do
        begin
          FMX.Types.Log.d('OrangeUI ParseIatResult Exception '+AResultJson);
        end;
      end;
  end
  else
  begin
      FMX.Types.Log.d('OrangeUI ParseIatResult NULL');
  end;

end;


{TXunFeiSDK}

procedure TXunFeiSDK.CancelListening;
begin
  //取消语音听写
  {$IFDEF IOS}
  if _iFlySpeechRecognizer<>nil then
  begin
    _iFlySpeechRecognizer.cancel;
  end;
  if _iflyRecognizerView<>nil then
  begin
    _iflyRecognizerView.cancel;
  end;
  {$ENDIF}


  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  begin
      if mIat<>nil then
      begin
        mIat.cancel;
      end;
  end);
  {$ENDIF}

end;

constructor TXunFeiSDK.Create;
begin
  IsListening:=False;
end;

destructor TXunFeiSDK.Destroy;
begin

  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  begin
    if mTts<>nil then
    begin
      mTts.stopSpeaking;
      mTts.destroy;
      mTts:=nil;
    end;
  end);
  {$ENDIF}

  inherited;
end;

procedure TXunFeiSDK.DoListeningResult(AResultString: String);
begin
  IsListening:=False;
  if Assigned(OnListeningResult) then
  begin
    OnListeningResult(Self,AResultString);
  end;
end;

procedure TXunFeiSDK.Init(AAndroidAPPID:String;AIOSAPPID:String);
var
  AInitString:String;
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Init');


  {$IFDEF IOS}
  AInitString:='appid'+'='+AIOSAPPID;

  //所有服务启动前，需要确保执行createUtility
  _iFlySpeechUtility:=TIFlySpeechUtility.OCClass.createUtility(NSStr(AInitString));


  //初始语音播放
  if _iFlySpeechSynthesizer=nil then
  begin
    FMX.Types.Log.d('OrangeUI TIFlySpeechSynthesizerDelegate.Create');
    _iFlySpeechSynthesizerDelegate:=TIFlySpeechSynthesizerDelegate.Create;
    FMX.Types.Log.d('OrangeUI TIFlySpeechSynthesizerDelegate.Create End');

    _iFlySpeechSynthesizerDelegate.OnonCompleted:=Do_Synthesizer_OnonCompleted;
    _iFlySpeechSynthesizerDelegate.OnonSpeakBegin:=Do_Synthesizer_OnonSpeakBegin;
    _iFlySpeechSynthesizerDelegate.OnonBufferProgressmessage:=Do_Synthesizer_OnonBufferProgressmessage;
    _iFlySpeechSynthesizerDelegate.OnonSpeakProgressbeginPosendPos:=Do_Synthesizer_OnonSpeakProgressbeginPosendPos;
    _iFlySpeechSynthesizerDelegate.OnonSpeakPaused:=Do_Synthesizer_OnonSpeakPaused;
    _iFlySpeechSynthesizerDelegate.OnonSpeakResumed:=Do_Synthesizer_OnonSpeakResumed;
    _iFlySpeechSynthesizerDelegate.OnonSpeakCancel:=Do_Synthesizer_OnonSpeakCancel;
    _iFlySpeechSynthesizerDelegate.OnonEventarg0arg1data:=Do_Synthesizer_OnonEventarg0arg1data;


    FMX.Types.Log.d('OrangeUI TIFlySpeechSynthesizer.OCClass.sharedInstance');
    _iFlySpeechSynthesizer:=TIFlySpeechSynthesizer.OCClass.sharedInstance;
    //如果不设置Delegate,就会没有声音
    FMX.Types.Log.d('OrangeUI TIFlySpeechSynthesizer.setDelegate');
    _iFlySpeechSynthesizer.setDelegate(
              (_iFlySpeechSynthesizerDelegate as ILocalObject).GetObjectID
                );
    FMX.Types.Log.d('OrangeUI TIFlySpeechSynthesizer.setDelegate End');


  end;



  //初始语音听写
  if _iFlySpeechRecognizer=nil then
  begin
    FMX.Types.Log.d('OrangeUI TIFlySpeechRecognizerDelegate.Create');
    _iFlySpeechRecognizerDelegate:=TIFlySpeechRecognizerDelegate.Create;


    _iFlySpeechRecognizerDelegate.OnonError:=Self.Do_Recognizer_OnonError;
    _iFlySpeechRecognizerDelegate.OnonResultsisLast:=Self.Do_Recognizer_OnonResultsisLast;
    _iFlySpeechRecognizerDelegate.OnonVolumeChanged:=Self.Do_Recognizer_OnonVolumeChanged;
    _iFlySpeechRecognizerDelegate.OnonBeginOfSpeech:=Self.Do_Recognizer_OnonBeginOfSpeech;
    _iFlySpeechRecognizerDelegate.OnonEndOfSpeech:=Self.Do_Recognizer_OnonEndOfSpeech;
    _iFlySpeechRecognizerDelegate.OnonCancel:=Self.Do_Recognizer_OnonCancel;
    _iFlySpeechRecognizerDelegate.OngetAudioKey:=Self.Do_Recognizer_OngetAudioKey;
    _iFlySpeechRecognizerDelegate.OnonEventarg0arg1data:=Self.Do_Recognizer_OnonEventarg0arg1data;

    FMX.Types.Log.d('OrangeUI TIFlySpeechRecognizer.OCClass.sharedInstance');
    _iFlySpeechRecognizer:=TIFlySpeechRecognizer.OCClass.sharedInstance;
    FMX.Types.Log.d('OrangeUI TIFlySpeechRecognizer.setDelegate');
    _iFlySpeechRecognizer.setDelegate(
              (_iFlySpeechRecognizerDelegate as ILocalObject).GetObjectID
              );
    FMX.Types.Log.d('OrangeUI TIFlySpeechRecognizer.setDelegate End');

  end;


  //语音识别的对话框
  if _iflyRecognizerView=nil then
  begin
    FMX.Types.Log.d('OrangeUI TIFlySpeechRecognizerDelegate.Create');
    _iflyRecognizerView:=TIFlyRecognizerView.Create;
    _iflyRecognizerView.initWithCenter(
                  NSPoint.Create(PointF(0,0))
            );

    _iflyRecognizerViewDelegate:=TIFlyRecognizerViewDelegate.Create;
    _iflyRecognizerViewDelegate.OnonResultisLast:=Self.Do_RecognizerView_OnonResultisLast;
    _iflyRecognizerViewDelegate.OnonError:=Self.Do_RecognizerView_OnonError;

    _iflyRecognizerView.setDelegate(
                  (_iflyRecognizerViewDelegate as ILocalObject).GetObjectID
                  );

  end;
  {$ENDIF}



  {$IFDEF ANDROID}
  AInitString:='appid'+'='+AAndroidAPPID;

  TJSpeechUtility.JavaClass.createUtility(
      SharedActivity.getApplicationContext,
      StringToJString(AInitString)
      );


  //初始语音播放
  if mTts=nil then
  begin
    FMX.Types.Log.d('OrangeUI TJInitListener.Create');
    mTtsInitListener:=TJInitListener.Create(Do_Tts_onInit);
    FMX.Types.Log.d('OrangeUI TJSpeechSynthesizer.JavaClass.createSynthesizer');
    mTts:=TJSpeechSynthesizer.JavaClass.createSynthesizer(
                      SharedActivityContext,
                      mTtsInitListener);
    FMX.Types.Log.d('OrangeUI TJSynthesizerListener.Create');
    mTtsListener:=TJSynthesizerListener.Create;
  end;


  //初始语音听写
  if mIat=nil then
  begin
    FMX.Types.Log.d('OrangeUI TJInitListener.Create');
    mIatInitListener:=TJInitListener.Create(Do_Iat_onInit);
    FMX.Types.Log.d('OrangeUI TJSpeechRecognizer.JavaClass.createRecognizer');
    mIat:=TJSpeechRecognizer.JavaClass.createRecognizer(
                        SharedActivityContext,
                        mIatInitListener);
    FMX.Types.Log.d('OrangeUI TJRecognizerListener.Create');
    mRecognizerListener:=TJRecognizerListener.Create(Self);

  end;


  //语音识别的对话框
  if mIatDialog=nil then
  begin
    CallInUIThread(
    procedure
    begin
      //		// 初始化听写Dialog，如果只使用有UI听写功能，无需创建SpeechRecognizer
      //		// 使用UI听写功能，请根据sdk文件目录下的notice.txt,放置布局文件和图片资源
      //		mIatDialog = new RecognizerDialog(IatDemo.this, mInitListener);
        mRecognizerDialogListener:=TJRecognizerDialogListener.Create(Self);
        mIatDialog:=TJRecognizerDialog.JavaClass.init(TAndroidHelper.Activity,mIatInitListener);
    end);
  end;


  {$ENDIF}
end;

procedure TXunFeiSDK.PauseSpeaking;
begin
  //暂停语音合成
  {$IFDEF IOS}
  if _iFlySpeechSynthesizer<>nil then
  begin
    _iFlySpeechSynthesizer.pauseSpeaking;
  end;
  {$ENDIF}

  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  begin
      if mTts<>nil then
      begin
        mTts.pauseSpeaking;
      end;
  end);
  {$ENDIF}
end;

procedure TXunFeiSDK.ResumeSpeaking;
begin
  //继续语音合成
  {$IFDEF IOS}
  if _iFlySpeechSynthesizer<>nil then
  begin
    _iFlySpeechSynthesizer.resumeSpeaking;
  end;
  {$ENDIF}

  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  begin
      if mTts<>nil then
      begin
        mTts.resumeSpeaking;
      end;
  end);
  {$ENDIF}
end;

procedure TXunFeiSDK.SetListeningParam(AParamName, AParamValue: String);
begin
  //设置语音识别参数
  {$IFDEF IOS}
  if _iFlySpeechRecognizer<>nil then
  begin
    _iFlySpeechRecognizer.setParameterforKey(
                                             StrToNSStr(AParamValue),
                                             StrToNSStr(AParamName));

  end;
  if _iflyRecognizerView<>nil then
  begin
    _iflyRecognizerView.setParameterforKey(
                                             StrToNSStr(AParamValue),
                                             StrToNSStr(AParamName));

  end;
  {$ENDIF}



  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  begin
      //设置听写参数
      if mIat<>nil then
      begin
        FMX.Types.Log.d('OrangeUI mIat.setParameter');
        mIat.setParameter(StringToJString(AParamName),StringToJString(AParamValue));
      end;
  end);
  {$ENDIF}

end;

procedure TXunFeiSDK.StartListening(isShowDialog:Boolean);
var
  ret:Integer;
  bret:Boolean;
begin


  //语音听写
  {$IFDEF IOS}

  if IsListening then
  begin
    //如果IOS正在识别,还没有结束,就跳过
    FMX.Types.Log.d('OrangeUI TXunFeiSDK.StartListening IsListening');
    Exit;
  end;

  if isShowDialog then
  begin
      //显示听写对话框
      if _iflyRecognizerView<>nil then
      begin
        _iflyRecognizerView.setCenter(
              WindowHandleToPlatform(Application.MainForm.Handle).View.center
              );
//        _iflyRecognizerView.setParameterforKey(NSStr('iat'),
//                                              TIFlySpeechConstant.OCClass.IFLY_DOMAIN);
//
//        FMX.Types.Log.d('OrangeUI TIFlySpeechConstant.OCClass.IFLY_DOMAIN '
//          +NSStrToStr(TIFlySpeechConstant.OCClass.IFLY_DOMAIN));
//        FMX.Types.Log.d('OrangeUI TIFlySpeechConstant.OCClass.ASR_PTT '
//          +NSStrToStr(TIFlySpeechConstant.OCClass.ASR_PTT));

        FMX.Types.Log.d('OrangeUI _iflyRecognizerView.start');

        bret:=_iflyRecognizerView.start;
        FMX.Types.Log.d('OrangeUI _iflyRecognizerView.start End');

        if Not bret then
        begin
          ShowMessage('启动识别服务失败，请稍后重试');
        end
        else
        begin
          IsListening:=True;
        end;

      end;
  end
  else
  begin
      //不显示听写对话框
      if _iFlySpeechRecognizer<>nil then
      begin
        _iFlySpeechRecognizer.cancel;

//        _iFlySpeechRecognizer.setParameterforKey(NSStr('iat'),
//                                              TIFlySpeechConstant.OCClass.IFLY_DOMAIN);

        FMX.Types.Log.d('OrangeUI TIFlySpeechRecognizer.startListening');
        bret:=_iFlySpeechRecognizer.startListening;
        FMX.Types.Log.d('OrangeUI TIFlySpeechRecognizer.startListening End');

        if Not bret then
        begin
          ShowMessage('启动识别服务失败，请稍后重试');
        end
        else
        begin
          IsListening:=True;
        end;
      end;
  end;
  {$ENDIF}



  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  begin

      if isShowDialog then
      begin
          // 显示听写对话框
          mIatDialog.setListener(mRecognizerDialogListener);
          mIatDialog.show();
          IsListening:=True;
      end
      else
      begin
          //不显示听写对话框
          if mIat<>nil then
          begin
            FMX.Types.Log.d('OrangeUI mIat.startListening');
            ret:=mIat.startListening(mRecognizerListener);
            FMX.Types.Log.d('OrangeUI mIat.startListening End');

            if ret<>TJErrorCode.JavaClass.SUCCESS then
            begin
              ShowMessage('听写失败,错误码：'+IntToStr(ret));
            end
            else
            begin
              IsListening:=True;
            end;
          end;
      end;
  end);
  {$ENDIF}

end;

procedure TXunFeiSDK.StartSpeaking(AVoiceName:String;AText:String);
var
  code:Integer;
begin
  {$IFDEF IOS}

  if _iFlySpeechSynthesizer<>nil then
  begin
    //设置参数

    //声音类型
    _iFlySpeechSynthesizer.setParameterforKey(
          NSStr(AVoiceName),
          TIFlySpeechConstant.OCClass.VOICE_NAME);


    FMX.Types.Log.d('OrangeUI TIFlySpeechSynthesizer.startSpeaking');
    _iFlySpeechSynthesizer.startSpeaking(NSStr(AText));
    FMX.Types.Log.d('OrangeUI TIFlySpeechSynthesizer.startSpeaking End');

  end;
  {$ENDIF}





  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  begin
      if mTts<>nil then
      begin

        //设置参数

        //声音类型
        mTts.setParameter(TJSpeechConstant.JavaClass.VOICE_NAME,
              StringToJString(AVoiceName));



        FMX.Types.Log.d('OrangeUI mTts.startSpeaking');
        code:=mTts.startSpeaking(StringToJString(AText),mTtsListener);
        FMX.Types.Log.d('OrangeUI mTts.startSpeaking End');

        if code<>TJErrorCode.JavaClass.SUCCESS then
        begin
          ShowMessage('语音合成失败,错误码: '+IntToStr(code));
        end;
      end;
  end);
  {$ENDIF}

end;

procedure TXunFeiSDK.StopListening;
begin
  //停止语音听写
  {$IFDEF IOS}
  if _iFlySpeechRecognizer<>nil then
  begin
    _iFlySpeechRecognizer.stopListening;
  end;
  if _iflyRecognizerView<>nil then
  begin
    //_iflyRecognizerView没有停止的方法
  end;
  {$ENDIF}

  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  begin
      if mIat<>nil then
      begin
        mIat.stopListening;
      end;
  end);
  {$ENDIF}
end;

procedure TXunFeiSDK.StopSpeaking;
begin
  //停止语音合成
  {$IFDEF IOS}
  if _iFlySpeechSynthesizer<>nil then
  begin
    _iFlySpeechSynthesizer.stopSpeaking;
  end;
  {$ENDIF}

  {$IFDEF ANDROID}
  CallInUIThread(
  procedure
  begin
      if mTts<>nil then
      begin
        mTts.stopSpeaking;
      end;
  end);
  {$ENDIF}
end;



  {$IFDEF IOS}

procedure TXunFeiSDK.Do_Recognizer_OngetAudioKey(key: NSString);
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Recognizer_OngetAudioKey');

end;

procedure TXunFeiSDK.Do_Recognizer_OnonBeginOfSpeech;
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Recognizer_OnonBeginOfSpeech');

end;

procedure TXunFeiSDK.Do_Recognizer_OnonCancel;
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Recognizer_OnonCancel');

end;

procedure TXunFeiSDK.Do_Recognizer_OnonEndOfSpeech;
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Recognizer_OnonEndOfSpeech');

end;

procedure TXunFeiSDK.Do_Recognizer_OnonError(errorCode: IFlySpeechError);
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Recognizer_OnonError '+NSStrToStr(errorCode.errorDesc));
  IsListening:=False;
end;

procedure TXunFeiSDK.Do_Recognizer_OnonEventarg0arg1data(eventType, arg0,
  arg1: Integer; eventData: NSData);
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Recognizer_OnonEventarg0arg1data');

end;

procedure TXunFeiSDK.Do_Recognizer_OnonResultsisLast(results: NSArray;
  isLast: Boolean);
var
  dic:NSDictionary;
  I: Integer;
  values:NSArray;
  AResultString:String;
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Recognizer_OnonResultsisLast');

  AResultString:='';

  try
    if (results<>nil) and (results.count>0) then
    begin

        dic:=TNSDictionary.Wrap(results.objectAtIndex(0));
        values:=dic.allKeys;
        for I := 0 to dic.count-1 do
        begin
          AResultString:=AResultString+NSStrToStr(TNSString.Wrap(values.objectAtIndex(I)));

          FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Recognizer_OnonResultsisLast '
                +AResultString);
        end;

    end
    else
    begin
        FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Recognizer_OnonResultsisLast null');
    end;


    DoListeningResult(AResultString);

  except
    on E:Exception do
    begin
      FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Recognizer_OnonResultsisLast Exception '+E.Message);
    end;
  end;

end;

procedure TXunFeiSDK.Do_Recognizer_OnonVolumeChanged(volume: Integer);
begin
//  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Recognizer_OnonVolumeChanged');

end;

procedure TXunFeiSDK.Do_Synthesizer_OnonBufferProgressmessage(progress: Integer; msg: NSString);
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Synthesizer_OnonBufferProgressmessage');

end;

procedure TXunFeiSDK.Do_Synthesizer_OnonCompleted(error: IFlySpeechError);
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Synthesizer_OnonCompleted');

end;

procedure TXunFeiSDK.Do_Synthesizer_OnonEventarg0arg1data(eventType, arg0, arg1: Integer;
  eventData: NSData);
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Synthesizer_OnonEventarg0arg1data');

end;

procedure TXunFeiSDK.Do_Synthesizer_OnonSpeakBegin;
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Synthesizer_OnonSpeakBegin');

end;

procedure TXunFeiSDK.Do_Synthesizer_OnonSpeakCancel;
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Synthesizer_OnonSpeakCancel');

end;

procedure TXunFeiSDK.Do_Synthesizer_OnonSpeakPaused;
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Synthesizer_OnonSpeakPaused');

end;

procedure TXunFeiSDK.Do_Synthesizer_OnonSpeakProgressbeginPosendPos(progress, beginPos,
  endPos: Integer);
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Synthesizer_OnonSpeakProgressbeginPosendPos');

end;

procedure TXunFeiSDK.Do_Synthesizer_OnonSpeakResumed;
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Synthesizer_OnonSpeakResumed');

end;
  {$ENDIF}


  {$IFDEF IOS}

procedure TXunFeiSDK.Do_RecognizerView_OnonResultisLast(resultArray:NSArray{*};isLast:Boolean);
var
  dic:NSDictionary;
  I: Integer;
  values:NSArray;
  AResultString:String;
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_RecognizerView_OnonResultisLast');

  AResultString:='';

  try
    if (resultArray<>nil) and (resultArray.count>0) then
    begin

        dic:=TNSDictionary.Wrap(resultArray.objectAtIndex(0));
        values:=dic.allKeys;
        for I := 0 to dic.count-1 do
        begin
          AResultString:=AResultString+NSStrToStr(TNSString.Wrap(values.objectAtIndex(I)));

          FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_RecognizerView_OnonResultisLast '
                +AResultString);
        end;
    end
    else
    begin
        FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_RecognizerView_OnonResultisLast null');
    end;


    DoListeningResult(AResultString);

  except
    on E:Exception do
    begin
      FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_RecognizerView_OnonResultisLast Exception '+E.Message);
    end;
  end;

end;

procedure TXunFeiSDK.Do_RecognizerView_OnonError(error:IFlySpeechError{*});
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_RecognizerView_OnonError '+NSStrToStr(error.errorDesc));
  IsListening:=False;
end;

  {$ENDIF}


function TXunFeiSDK.OnApplicationEventHandler(AAppEvent: TApplicationEvent;
  AContext: TObject): Boolean;
begin

  case AAppEvent of
    TApplicationEvent.FinishedLaunching:
    begin
      //程序第一次启动结束
      FMX.Types.Log.d('FinishedLaunching');
    end;
    TApplicationEvent.BecameActive:
    begin
      //转到前台
      FMX.Types.Log.d('BecameActive');


      {$IFDEF IOS}
      if _iFlySpeechRecognizer<>nil then
      begin
        //恢复
        _iFlySpeechRecognizer.setDelegate(
              (_iFlySpeechRecognizerDelegate as ILocalObject).GetObjectID
                                          );

      end;
      if _iflyRecognizerView<>nil then
      begin
        //恢复
        _iflyRecognizerView.setDelegate(
              (_iflyRecognizerViewDelegate as ILocalObject).GetObjectID
                                          );

      end;
      {$ENDIF}

    end;
    TApplicationEvent.WillBecomeInactive:
    begin
      FMX.Types.Log.d('WillBecomeInactive');

      {$IFDEF IOS}
      if _iFlySpeechRecognizer<>nil then
      begin
        //取消
        _iFlySpeechRecognizer.cancel;
        _iFlySpeechRecognizer.setDelegate(nil);
      end;
      if _iflyRecognizerView<>nil then
      begin
        //取消
        _iflyRecognizerView.cancel;
        _iflyRecognizerView.setDelegate(nil);
      end;
      {$ENDIF}

    end;
    TApplicationEvent.EnteredBackground:
    begin
      //转到后台
      FMX.Types.Log.d('EnteredBackground');

    end;
    TApplicationEvent.WillBecomeForeground:
    begin
      FMX.Types.Log.d('WillBecomeForeground');
    end;
    TApplicationEvent.WillTerminate:
    begin
      FMX.Types.Log.d('WillTerminate');
    end;
    TApplicationEvent.LowMemory:
    begin
      FMX.Types.Log.d('LowMemory');
    end;
    TApplicationEvent.TimeChange:
    begin

    end;
    TApplicationEvent.OpenURL:
    begin

    end;
  end;



end;




{$IFDEF ANDROID}

procedure TXunFeiSDK.Do_Tts_onInit(P1: Integer);
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Tts_onInit');

  CallInUIThread(
  procedure
  begin
      if Assigned(OnInitTtsResult) then
      begin
        OnInitTtsResult(Self,(P1=TJErrorCode.JavaClass.SUCCESS));
      end;
  end);

end;

procedure TXunFeiSDK.Do_Iat_onInit(P1: Integer);
begin
  FMX.Types.Log.d('OrangeUI TXunFeiSDK.Do_Iat_onInit');


  CallInUIThread(
  procedure
  begin
      if Assigned(OnInitIatResult) then
      begin
        OnInitIatResult(Self,(P1=TJErrorCode.JavaClass.SUCCESS));
      end;
  end);

end;


{ TJInitListener }

constructor TJInitListener.Create(AOnonInit: TOnonInitEvent);
begin
  Inherited Create;
  OnonInit:=AOnonInit;
end;

procedure TJInitListener.onInit(P1: Integer);
begin
  FMX.Types.Log.d('OrangeUI TJInitListener.onInit '+IntToStr(P1));
  if Assigned(OnonInit) then
  begin
    OnonInit(P1);
  end;
end;

{ TJSynthesizerListener }

procedure TJSynthesizerListener.onBufferProgress(P1, P2, P3: Integer;
  P4: JString);
begin
  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onBufferProgress');

end;

procedure TJSynthesizerListener.onCompleted(P1: JSpeechError);
begin
  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onCompleted');

end;

procedure TJSynthesizerListener.onEvent(P1, P2, P3: Integer; P4: JBundle);
begin
  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onEvent');

end;

procedure TJSynthesizerListener.onSpeakBegin;
begin
  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onSpeakBegin');

end;

procedure TJSynthesizerListener.onSpeakPaused;
begin
  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onSpeakPaused');

end;

procedure TJSynthesizerListener.onSpeakProgress(P1, P2, P3: Integer);
begin
  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onSpeakProgress');

end;

procedure TJSynthesizerListener.onSpeakResumed;
begin
  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onSpeakResumed');

end;

{ TJRecognizerDialogListener }

constructor TJRecognizerDialogListener.Create(AXunFeiSDK:TXunFeiSDK);
begin
  Inherited Create;
  FXunFeiSDK:=AXunFeiSDK;
end;

procedure TJRecognizerDialogListener.onResult(P1: JRecognizerResult; P2: Boolean);
begin
  FMX.Types.Log.d('OrangeUI TJRecognizerDialogListener.onResult');

  FXunFeiSDK.RecognizerResult:=JStringToString(P1.getResultString);

  CallInUIThread(
  procedure
  begin

    FXunFeiSDK.DoListeningResult(FXunFeiSDK.RecognizerResult);


  end);

end;

procedure TJRecognizerDialogListener.onError(P1: JSpeechError);
begin
  FMX.Types.Log.d('OrangeUI TJRecognizerDialogListener.onError');
  FXunFeiSDK.IsListening:=False;

end;


{ TJRecognizerListener }

constructor TJRecognizerListener.Create(AXunFeiSDK:TXunFeiSDK);
begin
  Inherited Create;
  FXunFeiSDK:=AXunFeiSDK;
end;

procedure TJRecognizerListener.onBeginOfSpeech;
begin
  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onBeginOfSpeech');

end;

procedure TJRecognizerListener.onEndOfSpeech;
begin
  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onEndOfSpeech');

end;

procedure TJRecognizerListener.onError(P1: JSpeechError);
begin
  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onError');

  FXunFeiSDK.IsListening:=False;

//  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onError'+JStringToString(P1.getPlainDescription(True)));
//
//  CallInUIThread(
//  procedure
//  var
//    LStr:JString;
//  begin
//    LStr:=P1.getPlainDescription(True);
//    TJToast.JavaClass.makeText(TAndroidHelper.Context,
//          LStr.subSequence(0, LStr.length),
//          TJToast.JavaClass.LENGTH_SHORT)
//          .show;
//  end);

end;

procedure TJRecognizerListener.onEvent(P1, P2, P3: Integer; P4: JBundle);
begin
  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onEvent');

end;

procedure TJRecognizerListener.onResult(P1: JRecognizerResult; P2: Boolean);
begin
  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onResult');

  FXunFeiSDK.RecognizerResult:=JStringToString(P1.getResultString);

  CallInUIThread(
  procedure
  begin

    FXunFeiSDK.DoListeningResult(FXunFeiSDK.RecognizerResult);


  end);

end;

procedure TJRecognizerListener.onVolumeChanged(P1: Integer;
  P2: TJavaArray<Byte>);
begin
//  FMX.Types.Log.d('OrangeUI TJSynthesizerListener.onVolumeChanged');

end;
  {$ENDIF}



end.
