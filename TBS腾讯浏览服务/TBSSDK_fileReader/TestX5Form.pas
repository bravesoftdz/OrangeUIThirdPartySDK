unit TestX5Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.IOUtils,
  Math,
//  FlyFilesUtils,
  StrUtils,

  uAndroidViewController,
  Androidapi.JNI.tbs_sdk_thirdapp,
  Androidapi.JNI.x5web_assistant,
  Androidapi.JNI.os,
  Androidapi.Helpers,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
  FMX.Helpers.Android,
  Androidapi.JNI.Widget,
  FMX.WebBrowser.Android.X5,


  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.WebBrowser;

type


  TfrmTestX5 = class(TForm)
    Panel1: TPanel;
    btnInit: TButton;
    Panel2: TPanel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button2: TButton;
    Button6: TButton;
    procedure btnInitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    FJQbSdk_PreInitCallback:JQbSdk_PreInitCallback;


    //�����
    FJWebView:JWebView;
    FJWebSettings:JWebSettings;

    //ҳ�����
    FJOnMyWebViewClienListener:JOnMyWebViewClienListener;
    FJMyWebViewClient:JMyWebViewClient;

    //�ļ�����
    FJDownloadListener:JDownloadListener;

    //JS
    FJMyWebChromeClient:JMyWebChromeClient;

    FMyWebViewController:TAndroidViewController;
    { Public declarations }
  public
    //�Ķ���
    FJTbsReaderView_ReaderCallback:JTbsReaderView_ReaderCallback;
    FJTbsReaderView:JTbsReaderView;
    FMyTbsReaderViewController:TAndroidViewController;
  end;

var
  frmTestX5: TfrmTestX5;

implementation

{$R *.fmx}

procedure TfrmTestX5.btnInitClick(Sender: TObject);
begin

  FMX.Types.Log.d('OrangeUI TfrmTestX5.btnInitClick 1');

  CallInUIThread(
  procedure
  begin
    SharedActivity.getWindow().setFormat(TJPixelFormat.JavaClass.TRANSLUCENT);
    SharedActivity.getWindow().setFlags(
      TJWindowManager_LayoutParams.JavaClass.FLAG_HARDWARE_ACCELERATED,
      TJWindowManager_LayoutParams.JavaClass.FLAG_HARDWARE_ACCELERATED);
  end);

  FMX.Types.Log.d('OrangeUI TfrmTestX5.btnInitClick 2');

  FJQbSdk_PreInitCallback:=TMyJQbSdk_PreInitCallback.Create;
  FMX.Types.Log.d('OrangeUI TfrmTestX5.btnInitClick 3');
  //initX5Environment
  //x5�ں˳�ʼ���ӿ�
  TJQbSdk.JavaClass.initX5Environment(SharedActivity.getApplicationContext,
                                      FJQbSdk_PreInitCallback);

  FMX.Types.Log.d('OrangeUI TfrmTestX5.btnInitClick 4');
end;


procedure TfrmTestX5.Button1Click(Sender: TObject);
begin
  CallInUIThread(
  procedure
  begin



    FJWebView:=TJWebView.JavaClass.init(SharedActivityContext,nil);

    FJMyWebViewClient:=TJMyWebViewClient.Create;
    FJOnMyWebViewClienListener:=TMyJOnMyWebViewClienListener.Create(nil);
    FJMyWebViewClient.setListener(FJOnMyWebViewClienListener);

    FJWebView.setWebViewClient(TJWebViewClient.Wrap((FJMyWebViewClient as ILocalObject).GetObjectID));


    FJMyWebChromeClient:=TJMyWebChromeClient.Create;
    FJWebView.setWebChromeClient(TJWebChromeClient.Wrap((FJMyWebChromeClient as ILocalObject).GetObjectID));

    FJDownloadListener:=TMyJDownloadListener.Create(nil);
    FJWebView.setDownloadListener(FJDownloadListener);

	  FJWebSettings := FJWebView.getSettings();
		FJWebSettings.setJavaScriptEnabled(true);
		FJWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
		FJWebSettings.setAllowFileAccess(true);
		FJWebSettings.setLayoutAlgorithm(TJWebSettings_LayoutAlgorithm.JavaClass.NARROW_COLUMNS);
		FJWebSettings.setSupportZoom(true);
		FJWebSettings.setBuiltInZoomControls(true);
		FJWebSettings.setUseWideViewPort(true);
		FJWebSettings.setSupportMultipleWindows(true);
		// FJWebSettings.setLoadWithOverviewMode(true);
		FJWebSettings.setAppCacheEnabled(true);
		// FJWebSettings.setDatabaseEnabled(true);
		FJWebSettings.setDomStorageEnabled(true);
		FJWebSettings.setGeolocationEnabled(true);
//		FJWebSettings.setAppCacheMaxSize(Long.MAX_VALUE);
		// FJWebSettings.setPageCacheCapacity(IX5WebSettings.DEFAULT_CACHE_CAPACITY);
		FJWebSettings.setPluginState(TJWebSettings_PluginState.JavaClass.ON_DEMAND);
		// FJWebSettings.setRenderPriority(WebSettings.RenderPriority.HIGH);
		FJWebSettings.setCacheMode(TJWebSettings.JavaClass.LOAD_NO_CACHE);



    FMyWebViewController:=TAndroidViewController.Create(Self.Panel2,FJWebView);
    FMyWebViewController.Show;
    FMyWebViewController.UpdateContentFromControl;
  end);
end;

procedure TfrmTestX5.Button2Click(Sender: TObject);
begin
  CallInUIThread(
  procedure
  begin
    FJTbsReaderView_ReaderCallback:=TJMyTbsReaderView_ReaderCallback.Create;

    FJTbsReaderView:=TJTbsReaderView.JavaClass.init(SharedActivityContext,FJTbsReaderView_ReaderCallback);


    FMyTbsReaderViewController:=TAndroidViewController.Create(Self.Panel2,FJTbsReaderView);
    FMyTbsReaderViewController.Show;
    FMyTbsReaderViewController.UpdateContentFromControl;

  end);

end;

procedure TfrmTestX5.Button3Click(Sender: TObject);
begin
  CallInUIThread(
  procedure
  begin
    FJWebView.getView.setClickable(true);
    FJWebView.loadUrl(StringToJString('http://www.baidu.com'));
  end);

end;

procedure TfrmTestX5.Button4Click(Sender: TObject);
begin
  if FJWebView.getX5WebViewExtension<>nil then
  begin
    ShowMessage(
      'X5�ں�'
      +IntToStr(TJQbSdk.JavaClass.getTbsVersion(SharedActivity.getApplicationContext()))
      );
  end;
end;

procedure TfrmTestX5.Button6Click(Sender: TObject);
begin
  CallInUIThread(
  procedure
  var
    AJBundle:JBundle;
    AFilePath:String;
    AFileExt:String;
  begin
    AFilePath:=System.IOUtils.TPath.GetHomePath+PathDelim+'test.doc';
    AFileExt:=ReplaceStr(ExtractFileExt(AFilePath),'.','');
    
    if FileExists(AFilePath) then
    begin


      if FJTbsReaderView.preOpen(
            //�ļ���׺��������.����Ȼ������
            StringToJString(AFileExt),
            False) then
      begin

        AJBundle:=TJBundle.JavaClass.init;
        AJBundle.putString(StringToJString('filePath'),
            StringToJString(AFilePath));
        AJBundle.putString(StringToJString('tempPath'),
            StringToJString(GetSDCardPath));
          
        FJTbsReaderView.openFile(AJBundle);

      end
      else
      begin      
        ShowMessage('�ļ�Ԥ��ʧ��!');      
      end;

    end
    else
    begin
      ShowMessage('�ļ�������!');
    end;
  end);

end;

end.
