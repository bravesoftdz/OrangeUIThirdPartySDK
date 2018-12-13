//
//  FirstViewController.h
//  SdkDemo
//
//  Created by sangfor on 2016/11/16.
//  Copyright © 2016年 sangfor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "AuthHelper.h"
#import "sdkheader.h"
#import "sslvpnnb.h"

#define say_log(str) printf("[log]:%s,%s,%d:%s\n",__FILE__,__FUNCTION__,__LINE__,str)
#define say_err(err) printf("[log]:%s,%s,%d:%s,%s\n",__FILE__,__FUNCTION__,__LINE__,err,get_err())
#define get_err() ssl_vpn_get_err()


@interface FirstViewController : UIViewController<SangforSDKDelegate>
{
    __weak IBOutlet UITextField *vpnIpTF;
    __weak IBOutlet UITextField *vpnPortTF;
    __weak IBOutlet UITextField *userNameTF;
    __weak IBOutlet UITextField *passwordTF;
    __weak IBOutlet UITextField *cerNameTF;
    __weak IBOutlet UITextField *cerPswTF;
    __weak IBOutlet UITextField *codeTF;
    __weak IBOutlet UITextField *statusTF;
    int firstLoginType;
}

@property (nonatomic,retain) AuthHelper *helper;
@property (nonatomic,retain)SecondViewController *secondView;
@end
