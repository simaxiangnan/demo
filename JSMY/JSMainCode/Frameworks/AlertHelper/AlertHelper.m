//
//  AlertHelper.m
//  Artgogo
//
//  Created by 王文辉 on 13-11-27.
//  Copyright (c) 2013年 王文辉. All rights reserved.
//

#import "AlertHelper.h"

@implementation AlertHelper

+ (void) showAlert:(NSString *)alert
{
    [AlertHelper showAlert:alert title:@"提示" delegate:nil];
}

+ (void) showAlert:(NSString *)alert title:(NSString *)title
{
    [AlertHelper showAlert:alert title:title delegate:nil];
}

+ (void) showAlert:(NSString *)alert title:(NSString *)title delegate:(id<UIAlertViewDelegate>)delegate
{
    [AlertHelper showAlert:alert title:title delegate:delegate cancelButton:@"确定" confirmButton:nil];
}

+ (void) showAlert:(NSString *)alert title:(NSString *)title delegate:(id<UIAlertViewDelegate>)delegate cancelButton:(NSString *)cancelButton confirmButton:(NSString *)confirmButton
{
    if ([UIAlertController class]) {
        UIAlertController * alertVC = [UIAlertController
                                       alertControllerWithTitle:title
                                       message:alert
                                       preferredStyle:UIAlertControllerStyleAlert];
        //
        if (confirmButton) {
            UIAlertAction* ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                if ([delegate respondsToSelector:@selector(alertView:clickedButtonAtIndex:)])
                {
                    [delegate alertView:nil clickedButtonAtIndex:1];
                }
                [alertVC dismissViewControllerAnimated:YES completion:nil];
                return;
            }];
            [alertVC addAction:ok];
        }
        
        //
        UIAlertAction* cancel = [UIAlertAction actionWithTitle:cancelButton style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            if ([delegate respondsToSelector:@selector(alertView:clickedButtonAtIndex:)]) {
                [delegate alertView:nil clickedButtonAtIndex:0];
            }
            [alertVC dismissViewControllerAnimated:YES completion:nil];
            return;
        }];
        [alertVC addAction:cancel];
        
        //
        UIViewController *rootController = [[UIApplication sharedApplication].delegate window].rootViewController;
        
        //
        if ([rootController isKindOfClass:[UITabBarController class]]) {
            rootController = [(UITabBarController *)rootController selectedViewController];
        }
        
        //
        if ([rootController isKindOfClass:[UINavigationController class]]) {
            rootController = [(UINavigationController *)rootController visibleViewController];
        }
        [rootController presentViewController:alertVC animated:YES completion:nil];
    } else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:alert delegate:delegate cancelButtonTitle:cancelButton otherButtonTitles:confirmButton, nil];
        [alertView show];
    }
}

//+ (void) showAlert:(NSString *)alert title:(NSString *)title delegate:(id<UIAlertViewDelegate>)delegate cancelButton:(NSString *)cancelButton otherTitles:(NSString *)buttons, ... NS_REQUIRES_NIL_TERMINATION
//{
//    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:alert delegate:delegate cancelButtonTitle:cancelButton otherButtonTitles:buttons,nil];
//    [alertView show];
//}

@end
