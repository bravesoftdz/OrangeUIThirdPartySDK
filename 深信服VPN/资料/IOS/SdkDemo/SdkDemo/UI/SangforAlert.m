//
//  SangforAlert.m
//  SdkDemo
//
//  Created by sangfor on 2016/11/16.
//  Copyright © 2016年 sangfor. All rights reserved.
//

#import "SangforAlert.h"

@implementation SangforAlert

// 画出圆角矩形背景

- (id)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)dealloc{
    [super dealloc];
}


#pragma mark - View Hierrarchy


// 从上层视图移除并释放
- (void)remove{
    [self removeFromSuperview];
}

// 渐变消失
- (void)fadeAway{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.5f];
    self.alpha = .0;
    [UIView commitAnimations];
    [self performSelector:@selector(remove) withObject:nil afterDelay:1.5f];
}

+ (void)showInfo:(NSString *)info
         bgColor:(UIColor *)color
          inView:(UIView *)view
        vertical:(float)height{
    
    height = height < 0 ? 0 : height > 1 ? 1 : height;
    
    SangforAlert *alert = [[SangforAlert alloc] init];
    alert.text = info;
    [alert sizeToFit];
    alert.center = CGPointMake(view.frame.size.width/2, view.frame.size.height*height);
    alert.alpha = 0;
    alert.textAlignment = NSTextAlignmentCenter;
    alert.layer.cornerRadius = 6;
    alert.backgroundColor = color;
    alert.font = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    alert.textColor = [UIColor whiteColor];
    [view addSubview:alert];
    [alert release];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:.3f];
    alert.alpha = 1.0;
    [UIView commitAnimations];
    [alert performSelector:@selector(fadeAway) withObject:nil afterDelay:1.5];
}


@end
