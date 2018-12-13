//
//  FirstViewController.m
//  SdkDemo
//
//  Created by sangfor on 2016/11/16.
//  Copyright © 2016年 sangfor. All rights reserved.
//

#import "FirstViewController.h"
#import "SangforAlert.h"
#import "MBProgressHUD.h"

@interface FirstViewController ()

@end

typedef enum
{
    PSWLOGIN = 1,
    CERTLOGIN = 2,
    SMSLOGIN = 3,
    RADIUSLOGIN = 4,
    TOKENLOGIN = 5,
}loginType;

@implementation FirstViewController

@synthesize helper=_helper;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UITapGestureRecognizer *tapAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    tapAction.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapAction];
    
    [self getUserConf];
 
}

/**
 *  收起键盘
 *
 *  @param tapRecognizer <#tapRecognizer description#>
 */
-(void)viewTapped:(UITapGestureRecognizer*)tapRecognizer
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  主认证
 *
 *  @param sender <#sender description#>
 */
-(IBAction)loginAction:(id)sender
{
    NSString *vpnIp = vpnIpTF.text;
    NSString *port = vpnPortTF.text;
    
    if (vpnIp.length == 0 || port.length == 0) {
        return;
    }
    
    self.helper = [AuthHelper getInstance];
    [self.helper setHost:vpnIp port:port.intValue delegate:self];
    
    int tag = (int)[(UIButton *)sender tag];
    switch (tag) {
        case PSWLOGIN:
        {
            firstLoginType = SSL_AUTH_TYPE_PASSWORD;
            break;
        }
        case CERTLOGIN:
        {
            firstLoginType = SSL_AUTH_TYPE_CERTIFICATE;
            break;
        }

        default:
            firstLoginType = SSL_AUTH_TYPE_PASSWORD;
            break;
    }
}

/**
 *  辅助认证
 *
 *  @param sender 按钮
 */
- (IBAction)otherLoginAction:(id)sender {
    int tag = (int)[(UIButton *)sender tag];
    
    NSString *codeStr = codeTF.text;
    if (codeStr == nil || codeStr.length == 0) {
        statusTF.text = @"code is null！！！";
        
        return;
    }
    int authType = 0;
    
    switch (tag) {
        case SMSLOGIN:
            authType = SSL_AUTH_TYPE_SMS;
            [self.helper setAuthParam:@SMS_AUTH_CODE param:codeStr];
            break;
        case RADIUSLOGIN:
            authType = SSL_AUTH_TYPE_RADIUS;
            [self.helper setAuthParam:@CHALLENGE_AUTH_REPLY param:codeStr];
            break;
        case TOKENLOGIN:
            authType = SSL_AUTH_TYPE_TOKEN;
            [self.helper setAuthParam:@"Token.Auth.Code" param:codeStr];
            break;
        default:
            return;
    }
    
    [self.helper loginVpn:authType];
}

#pragma mark -
#pragma mark SangforSDKDelegate
- (void) onCallBack:(const VPN_RESULT_NO)vpnErrno authType:(const int)authType
{
    switch (vpnErrno)
    {
        case RESULT_VPN_INIT_FAIL:
            
            statusTF.text = @"Vpn Init failed!！！！";
            NSLog(@"Vpn Init failed!");
            say_err("Vpn Init failed");
            break;
            
        case RESULT_VPN_AUTH_FAIL:
        {
            [MBProgressHUD hideHUDForView:self.view animated:YES];
            [self.helper clearAuthParam:@SET_RND_CODE_STR];
            [self.helper queryVpnStatus];
            NSString *strUFT8 = [[NSString alloc] initWithUTF8String:get_err()];
            statusTF.text = [[NSString alloc] initWithFormat:@"%@,%@", @"vpn auth failed ",strUFT8];
            say_err("vpn auth failed");
            break;
        }
        case RESULT_VPN_INIT_SUCCESS:
        {
            statusTF.text = @"vpn init success";
            //显示当前sdk版本号
            NSString *version = [self.helper getSdkVersion];
            NSLog(@"sdk version is %@",version);
           
            switch (firstLoginType) {
                case SSL_AUTH_TYPE_PASSWORD:
                {
                    if (![self initPswAuthParam]) {
                        statusTF.text = @"vpn init password param failed!!";
                        return;
                    }
                    break;
                }

                case SSL_AUTH_TYPE_CERTIFICATE:
                {
                    if (![self initCertAuthParam]) {
                        statusTF.text = @"vpn init cert param failed!!";
                        return;
                    }
                    break;
                }
                default:
                    break;
            }
            
            [MBProgressHUD showHUDAddedTo:self.view animated:YES];
            
            [self.helper loginVpn:firstLoginType];
            
            break;
        }

        case RESULT_VPN_AUTH_SUCCESS:
            statusTF.text = [NSString stringWithFormat:@"start other auth:%d.",authType];
            [self startOtherAuth:authType];
            break;
        case RESULT_VPN_AUTH_LOGOUT:
            NSLog(@"Vpn logout success!");
            break;
        case RESULT_VPN_OTHER:
            if (VPN_OTHER_RELOGIN_FAIL == (VPN_RESULT_OTHER_NO)authType) {
                NSLog(@"Vpn relogin failed, maybe network error");
            }
            break;
            
        case RESULT_VPN_NONE:
            break;
            
        default:
            break;
    }
}

- (void) onReloginCallback:(const int)status result:(const int)result
{
    switch (status) {
        case START_RECONNECT:
            NSLog(@"vpn relogin start reconnect ...");
            break;
        case END_RECONNECT:
            NSLog(@"vpn relogin end ...");
            if (result == SUCCESS) {
                NSLog(@"Vpn relogin success!");
            } else {
                NSLog(@"Vpn relogin failed");
            }
            break;
        default:
            break;
    }
}

- (void) startOtherAuth:(const int)authType
{
    switch (authType)
    {
        case SSL_AUTH_TYPE_CERTIFICATE:
        {
            say_log("Start certificate Auth!!!");
            [self initCertAuthParam];
            break;
        }
        case SSL_AUTH_TYPE_PASSWORD:
        {
            say_log("Start Password Name Auth!!!");
            [self initPswAuthParam];
            
             break;
        }
        case SSL_AUTH_TYPE_NONE:
        {
            [MBProgressHUD hideHUDForView:self.view animated:YES];
            say_log("Vpn Auth success!");
            statusTF.text = @"vpn Auth success";
            

            
            [self performSelectorOnMainThread:@selector(loginSuccessAction) withObject:nil waitUntilDone:NO];
            [self saveUserConf];
            
            return;
        }
        case SSL_AUTH_TYPE_SMS:
        case SSL_AUTH_TYPE_RADIUS:
        case SSL_AUTH_TYPE_TOKEN:
        {
            [MBProgressHUD hideHUDForView:self.view animated:YES];
            return;
        }
        default:
            say_log("Other failed!!!");
            return;
    }
    [self.helper loginVpn:authType];
}

#pragma mark
#pragma mark -------init param

/**
 *  初始化密码认证参数
 *
 *  @return yes：成功
 */
-(BOOL)initPswAuthParam
{
    NSString *userName = userNameTF.text;
    NSString *passWord = passwordTF.text;
    
    if (!userName || userName.length == 0) {
        return NO;
    }
    
    [self.helper setAuthParam:@PORPERTY_NamePasswordAuth_NAME param:userName];
    [self.helper setAuthParam:@PORPERTY_NamePasswordAuth_PASSWORD param:passWord];
    
    return YES;
}

/**
 *  初始化证书认证参数
 *
 *  @return yes：成功
 */
-(BOOL)initCertAuthParam
{
    NSString *certName = cerNameTF.text;
    NSString *certPwd = cerPswTF.text;
    
    if (!certName || certName.length == 0) {
        return NO;
    }
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                NSUserDomainMask, YES);
    
    if (nil != paths && [paths count] > 0)
    {
        NSString *dirPaths = [paths objectAtIndex:0];
        NSString *authPaths = [dirPaths stringByAppendingPathComponent:certName];
        NSLog(@"PATH = %@",authPaths);
        
        if (![[NSFileManager defaultManager] fileExistsAtPath:authPaths]) {
            return NO;
        }
        
        [self.helper setAuthParam:@CERT_P12_FILE_NAME param:authPaths];
        [self.helper setAuthParam:@CERT_PASSWORD param:certPwd];
    }
    
    return YES;
}

/**
 *  登录成功
 */
-(void)loginSuccessAction
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self.secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController_iPhone" bundle:nil];
    } else {
        self.secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController_iPad" bundle:nil];
    }
    
    [self presentViewController:self.secondView animated:YES completion:nil];
}

#pragma mark
#pragma mark ----user configuration


#define kVpnIp   @"vpnIp"
#define kPort    @"vpnport"
#define kUserName  @"username"
#define kCerName   @"cerName"

/**
 *  保存用户设置
 */
-(void)saveUserConf
{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    
    if (vpnIpTF.text.length > 0) {
        [userDefault setValue:vpnIpTF.text forKey:kVpnIp];
    }
    
    if (vpnPortTF.text.length > 0) {
        [userDefault setValue:vpnPortTF.text forKey:kPort];
    }
    
    if (userNameTF.text.length > 0) {
        [userDefault setValue:userNameTF.text forKey:kUserName];
    }
    
    if (cerNameTF.text.length > 0) {
        [userDefault setValue:cerNameTF.text forKey:kCerName];
    }
}

/**
 *  读取用户配置
 */
-(void)getUserConf
{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    
    if ([userDefault valueForKey:kVpnIp]) {
        [vpnIpTF setText:[userDefault valueForKey:kVpnIp]];
    }
    if ([userDefault valueForKey:kPort]) {
        [vpnPortTF setText:[userDefault valueForKey:kPort]];
    }
    if ([userDefault valueForKey:kUserName]) {
        [userNameTF setText:[userDefault valueForKey:kUserName]];
    }
    if ([userDefault valueForKey:kCerName]) {
        [cerNameTF setText:[userDefault valueForKey:kCerName]];
    }
}
@end
