//
//  JSBaseViewController.h
//  JSMY
//
//  Created by wuwu on 2017/6/29.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSBaseViewController : UIViewController

@property (nonatomic, strong) UIColor *vcBgColor;

#pragma mark - ***** 网络类型判断
/*!
 *  网络判断
 *
 *  @param viewController viewController
 */
- (void)js_networkChangeWith:(UIViewController *)viewController;

/*!
 *  使用4G网络时的方法调用此方法
 */
- (void)js_netUse4Gnet;

#pragma mark - ***** VC的基本设置
/*!
 *  设置VC的背景颜色
 *
 *  @param vcBgColor vcBgColor
 */
//- (void)setVCBgColor:(UIColor *)vcBgColor;

/*!
 *  创建UI
 */
- (void)js_setupUI;

#pragma mark - ***** VC的navi设置
/*!
 *  设置navi
 */
- (void)js_setupNavi;
/*!
 *  是否隐藏naviBar
 *
 *  @param hidden YES：隐藏，NO：显示
 */
- (void)js_setNavbarBackgroundHidden:(BOOL)hidden;

@end
