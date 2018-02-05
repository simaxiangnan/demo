//
//  AppDelegate+JSCategory.h
//  JSMY
//
//  Created by Stave on 2017/7/2.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (JSCategory)

/*!
 *  是否使用自定义TabVC
 *
 *  @param is YES:使用，NO:使用RDVTabVC
 */
- (void)isJSTabVC:(BOOL)is;

- (void)isJSTabVC2:(BOOL)is;


/*！
 *  设置默认缓存大小
 */
- (void)js_setNSURLCache;

/*! 键盘处理 */
- (void)JS_KeyboardSetting;

/*!
 *  获取当前屏幕的控制器
 *
 *  @return 获取当前屏幕的控制器
 */
- (UIViewController *)getCurrentTabViewController;

@end
