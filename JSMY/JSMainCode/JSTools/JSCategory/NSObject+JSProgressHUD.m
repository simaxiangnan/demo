//
//  NSObject+JSProgressHUD.m
//  JSMY
//
//  Created by Stave on 2017/7/1.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "NSObject+JSProgressHUD.h"

@implementation NSObject (JSProgressHUD)

/** 获取当前屏幕的最上方正在显示的那个view */
- (UIView *)getCurrentView
{
    UIViewController *vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    // vc: 导航控制器, 标签控制器, 普通控制器
    if ([vc isKindOfClass:[UITabBarController class]])
    {
        vc = [(UITabBarController *)vc selectedViewController];
    }
    if ([vc isKindOfClass:[UINavigationController class]])
    {
        vc = [(UINavigationController *)vc visibleViewController];
    }
    
    return vc.view;
}


/** 弹出文字提示 */
- (void)JS_showAlert:(NSString *)text
{
    JS_WEAKSELF;
    // 防止在非主线程中调用此方法,会报错
    dispatch_async(dispatch_get_main_queue(), ^{
        
        // 弹出新的提示之前,先把旧的隐藏掉
        //        [self hideProgress]; // 主线程中会先调用这个，所以速度很快
        [MBProgressHUD hideAllHUDsForView:[weakSelf getCurrentView] animated:YES];
        MBProgressHUD *progressHUD = [MBProgressHUD showHUDAddedTo:[weakSelf getCurrentView] animated:YES];
        
        progressHUD.mode = MBProgressHUDModeIndeterminate;
        progressHUD.labelText = text;
//        progressHUD.color = [UIColor orangeColor];
        
    });
}

/** 弹出文字提示，自定义显示时间 */
- (void)JS_showAlertWithTitle:(NSString *)text
{
    JS_WEAKSELF;
    // 防止在非主线程中调用此方法,会报错
    dispatch_async(dispatch_get_main_queue(), ^{
        
        // 弹出新的提示之前,先把旧的隐藏掉
        //        [self hideProgress]; // 主线程中会先调用这个，所以速度很快
        [MBProgressHUD hideAllHUDsForView:[weakSelf getCurrentView] animated:YES];
        MBProgressHUD *progressHUD = [MBProgressHUD showHUDAddedTo:[weakSelf getCurrentView] animated:YES];
        
        progressHUD.mode = MBProgressHUDModeText;
        progressHUD.labelText = text;
        //        progressHUD.color = BA_Orange_Color;
        //        if (!time || time == 0)
        //        {
        //            [progressHUD hide:YES afterDelay:1.5];
        //            return ;
        //        }
        [progressHUD hide:YES afterDelay:1.5];
    });
}

/** 显示忙 */
- (void)JS_showBusy
{
    JS_WEAKSELF;
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [MBProgressHUD hideAllHUDsForView:[self getCurrentView] animated:YES];
        MBProgressHUD *progressHUD = [MBProgressHUD showHUDAddedTo:[weakSelf getCurrentView] animated:YES];
        progressHUD.color = [UIColor orangeColor];
        // 最长显示30秒
        [progressHUD hide:YES afterDelay:30];
    }];
}

/** 隐藏提示 */
- (void)JS_hideProgress
{
    JS_WEAKSELF;
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [MBProgressHUD hideAllHUDsForView:[weakSelf getCurrentView] animated:YES];
    }];
}

@end
