//
//  NSObject+JSProgressHUD.h
//  JSMY
//
//  Created by Stave on 2017/7/1.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"

@interface NSObject (JSProgressHUD)

/*!
 *  弹出文字提示（菊花转动）
 *
 *  @param text 提示内容
 */
- (void)JS_showAlert:(NSString *)text;

/*!
 *  弹出文字提示，自定义显示时间(默认1.5秒)
 *
 *  @param text 提示内容
 */
- (void)JS_showAlertWithTitle:(NSString *)text;

/*!
 *  显示忙
 */
- (void)JS_showBusy;

/*!
 *  隐藏提示
 */
- (void)JS_hideProgress;

@end
