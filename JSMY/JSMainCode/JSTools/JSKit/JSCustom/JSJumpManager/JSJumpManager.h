//
//  JSJumpManager.h
//  JSMY
//
//  Created by Stave on 2017/7/1.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import <Foundation/Foundation.h>

#define JSJUMPMANAGERShare [JSJumpManager sharedJSJumpManager]

@interface JSJumpManager : NSObject

+ (JSJumpManager *)sharedJSJumpManager;
/*!
 注意：跳转的格式，需要与后台一起定义
 {
 "className" : "MessageViewController",
 "method" : "refresh",
 "properties" : {
 "msgId": 1223030330,
 "msgType": 3
 }
 };
 
 className：跳转目标界面的类名，
 method：类的实例方法，
 properties：实例方法调用所需的参数。
 */
+ (void)js_jumpVCWtihDict:(NSDictionary *)dict navi:(UINavigationController *)navi;

/*!
 *  全局中转类
 *
 *  @param dict 跳转需要的参数
 */
+ (void)js_jumpToVCWtihDict:(NSDictionary *)dict;

/*!
 *  跳转到登陆界面
 *
 *  @param viewController 当前VC
 */
+ (void)js_gotoLoginVCWithViewController:(UIViewController *)viewController;


@end
