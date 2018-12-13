unit Unit7;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,

  iOSApi.AipOcrService,
  Macapi.ObjCRuntime,
  Macapi.ObjectiveC,
  iOSapi.Foundation,
  Macapi.Helpers,
  iOSapi.UIKit,
  iOSApi.AipCaptureCardVC,
  FMX.Helpers.iOS,

  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    vc:UIViewController;
    procedure DoDetectIdCardFrontUIImageHandler(AImage:UIImage);
    procedure DoDetectIdCardFrontSuccessHandler(result:Pointer);
    procedure DoDetectIdCardFrontFailHandler(err:NSError);
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.fmx}

procedure TForm7.Button1Click(Sender: TObject);
begin
  //授权
  TAipOcrService.OCClass.shardService.authWithAKandSK(
        StrToNSStr('guSiGoWBXWtog50gTP5ZGaHv'),
        StrToNSStr('Lima7CugnPNFQNMdlHIndGGf4ol6OE2I')
        );
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  vc:=TAipCaptureCardVC.OCClass.ViewControllerWithCardTypeandImageHandler(
      Ord(CardTypeIdCardFont),
      DoDetectIdCardFrontUIImageHandler
      );
// UIViewController * vc =
//    [AipCaptureCardVC ViewControllerWithCardType:CardTypeLocalIdCardFont andImageHandler:^(UIImage *image) {
//	// 成功扫描出身份证
//     [[AipOcrService shardService] detectIdCardFrontFromImage:image
//                                                  withOptions:nil
//                                               successHandler:^(id result){
//    // 在成功回调中，保存图片到系统相册
//     UIImageWriteToSavedPhotosAlbum(image, nil, nil, (__bridge void *)self);
//     // 打印出识别结果
//     NSLog(@"%@", result);
//    }
//                                                  failHandler:_failHandler];
//    }];
//    // 展示ViewController
//    [self presentViewController:vc animated:YES completion:nil];

  SharedApplication.keyWindow.rootViewController.presentViewController(
    vc,True,nil);
end;

procedure TForm7.DoDetectIdCardFrontFailHandler(err: NSError);
begin
  //扫描身份证正面失败
  FMX.Types.Log.d('OrangeUI DoDetectIdCardFrontFailHandler Error ');

  FMX.Types.Log.d('OrangeUI DoDetectIdCardFrontFailHandler Error '+IntToStr(err.code)+' '
    +err.localizedDescription.UTF8String);

  //api qps request limit reached
  TThread.Synchronize(nil,procedure
  begin
    ShowMessage(err.localizedDescription.UTF8String);
  end);
end;

procedure TForm7.DoDetectIdCardFrontSuccessHandler(result: Pointer);
begin
  //成功
  //扫描身份证正面成功
  FMX.Types.Log.d('OrangeUI DoDetectIdCardFrontSuccessHandler');


end;

procedure TForm7.DoDetectIdCardFrontUIImageHandler(AImage: UIImage);
begin
  FMX.Types.Log.d('OrangeUI DoDetectIdCardFrontUIImageHandler');
//  ShowMessage('DoUIImageHandler');

//	// 成功扫描出身份证
//     [[AipOcrService shardService] detectIdCardFrontFromImage:image
//                                                  withOptions:nil
//                                               successHandler:^(id result){
//    // 在成功回调中，保存图片到系统相册
//     UIImageWriteToSavedPhotosAlbum(image, nil, nil, (__bridge void *)self);
//     // 打印出识别结果
//     NSLog(@"%@", result);
//    }
//                                                  failHandler:_failHandler];
//    }];

  TAipOcrService.OCClass.shardService
    .detectIdCardFrontFromImagewithOptionssuccessHandlerfailHandler(
        AImage,
        nil,
        DoDetectIdCardFrontSuccessHandler,
        DoDetectIdCardFrontFailHandler
        );

end;

end.
