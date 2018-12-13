unit uAndroidViewControl;

interface


  {$IFDEF ANDROID}

uses
  Classes,
  FMX.Forms,
  Types,
  FMX.Controls,
  FMX.Types,

//  uBaseViewController,

  Androidapi.Helpers,
  FMX.Platform.Android,
  FMX.Helpers.Android,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
//  Androidapi.JNI.BaiduLBS_Android_3,
  Androidapi.JNI.App,
  Androidapi.JNI.Widget,
  Androidapi.NativeActivity,
  Androidapi.JNI.Os,

  Androidapi.JNI.Embarcadero,
  Androidapi.JNI.GraphicsContentViewText,




  FMX.Platform;





type
  TAndroidViewController=class
  private
    FScale: Single;

    [Weak] FJView:JView;
    FJViewLayoutParams: JFrameLayout_LayoutParams;

    FJLinearLayout: JLinearLayout;
//    FJFrameLayoutParams: JFrameLayout_LayoutParams;

    [Weak] FControl: TControl;
    FNeedUpdateBounds: Boolean;
    FBounds: TRect;
    FRealBounds: TRect;

    procedure CalcRealBorder;
    procedure InitUIThread;

  public
    constructor Create(AControl:TControl;AJView:JView);
    destructor Destroy; override;
  public
    //œ‘ æ
    procedure Show;
    //œ‘ æ
    procedure Hide;
    //
    procedure UpdateContentFromControl;
  end;


{$ENDIF}

implementation


  {$IFDEF ANDROID}

{ TAndroidViewController }

procedure TAndroidViewController.CalcRealBorder;
var
  NativeWin: JWindow;
  ContentRect: JRect;
begin
  NativeWin := TAndroidHelper.Activity.getWindow;
  if NativeWin <> nil then
  begin
    ContentRect := TJRect.Create;
    NativeWin.getDecorView.getDrawingRect(ContentRect);
    FRealBounds := Rect(ContentRect.left, ContentRect.top, ContentRect.right, ContentRect.bottom);
  end
  else
    FRealBounds := TRect.Empty;
end;

constructor TAndroidViewController.Create(AControl:TControl;AJView:JView);
var
  ScreenSrv: IFMXScreenService;
begin
  CalcRealBorder;
  if TPlatformServices.Current.SupportsPlatformService(IFMXScreenService, ScreenSrv) then
    FScale := ScreenSrv.GetScreenScale
  else
    FScale := 1;

  FControl:=AControl;
  FJView:=AJView;

  CallInUIThreadAndWaitFinishing(InitUIThread);

end;

destructor TAndroidViewController.Destroy;
begin
  FMX.Types.Log.d('OrangeUI baidu TAndroidViewController.Destroy begin');
  FJLinearLayout:=nil;
  inherited;

  FMX.Types.Log.d('OrangeUI baidu TAndroidViewController.Destroy end');
end;

procedure TAndroidViewController.Hide;
begin
  CallInUIThread(
    procedure
    begin
      if FJView.getVisibility <> TJView.JavaClass.INVISIBLE then
      begin
        FJView.setVisibility(TJView.JavaClass.INVISIBLE);
//        FJLinearLayout.setPosition(FRealBounds.Right * 2 , FRealBounds.Height * 2);
      end;
    end);

end;

procedure TAndroidViewController.InitUIThread;
begin
  FJLinearLayout := TJLinearLayout.JavaClass.init(TAndroidHelper.Activity);


  FJViewLayoutParams:=TJFrameLayout_LayoutParams.JavaClass.init(
    TJViewGroup_LayoutParams.JavaClass.MATCH_PARENT,
    TJViewGroup_LayoutParams.JavaClass.MATCH_PARENT
    );
  FJLinearLayout.addView(FJView,FJViewLayoutParams);


//  FJFrameLayoutParams:=TJFrameLayout_LayoutParams.JavaClass.init(
//    300,
//    300
////    TJViewGroup_LayoutParams.JavaClass.FILL_PARENT,
////    TJViewGroup_LayoutParams.JavaClass.WRAP_CONTENT
//    );


  MainActivity.getViewStack.addView(FJLinearLayout);
end;

procedure TAndroidViewController.Show;
begin
  TUIThreadCaller.Call<TRect>(
      procedure (R: TRect)
      begin
        MainActivity.getViewStack.setPosition(TJViewGroup.Wrap((FJLinearLayout as ILocalObject).GetObjectID),
                    R.Left, R.Top);
        MainActivity.getViewStack.setSize(TJViewGroup.Wrap((FJLinearLayout as ILocalObject).GetObjectID),
                    R.Right, R.Bottom);
//        FJLinearLayout.setPosition(R.Left, R.Top);
//        FJLinearLayout.setSize(R.Right, R.Bottom);
      end,
      FBounds
    );


  CallInUIThread(
    procedure
    begin
      if FJView.getVisibility <> TJView.JavaClass.VISIBLE then
      begin
        FJView.setVisibility(TJView.JavaClass.VISIBLE);
      end;
    end);

end;

procedure TAndroidViewController.UpdateContentFromControl;
var
  Pos: TPointF;
begin
//  while FJLinearLayout = nil do
//    Application.ProcessMessages;

  if FJLinearLayout <> nil then
  begin
    if (FControl <> nil) and not (csDesigning in FControl.ComponentState) and (FControl.Root <> nil) and
      (FControl.Root.GetObject is TCommonCustomForm) then
    begin
      FNeedUpdateBounds := True;
      Pos := FControl.LocalToAbsolute(TPointF.Zero) * FScale;
      FBounds := Rect(Round(Pos.X), Round(Pos.Y), Round(FControl.Width * FScale), Round(FControl.Height *
        FScale));
      if FControl.Visible and FControl.ParentedVisible and
        (TCommonCustomForm(FControl.Root.GetObject)).Visible and
        (TCommonCustomForm(FControl.Root.GetObject)).Active then
        Show
      else
        Hide;
    end
    else
      Hide;
  end;

end;


{$ENDIF}

end.
