//
//  SangforAlert.h
//  SdkDemo
//
//  Created by sangfor on 2016/11/16.
//  Copyright © 2016年 sangfor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SangforAlert : UILabel


+ (void)showInfo:(NSString *)info
         bgColor:(UIColor *)color
          inView:(UIView *)view
        vertical:(float)height;
@end
