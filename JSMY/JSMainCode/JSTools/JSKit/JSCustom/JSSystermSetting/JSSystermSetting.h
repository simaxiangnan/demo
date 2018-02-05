//
//  JSSystermSetting.h
//  JSMY
//
//  Created by Stave on 2017/7/1.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSSystermSetting : NSObject

/*!
 *  创建单例 js_systermSettingManage
 *
 *  @return js_systermSettingManage
 */
+ (JSSystermSetting *)js_systermSettingManage;

#pragma mark - ***** app跳转到系统的各种基本设置选项
/*!
 *  跳转系统通知
 */
- (void)js_gotoSystermSettings;

/*!
 *  跳到WIFI界面
 */
- (void)js_gotoSystermWIFISettings;

/*!
 *  跳到About关于本机界面
 */
- (void)js_gotoSystermAboutSettings;

/*!
 *  跳到Accessibility辅助功能界面
 */
- (void)js_gotoSystermAccessibilitySettings;

/*!
 *  跳到AirplaneModeOn飞行模式界面
 */
- (void)js_gotoSystermAirplaneModeOnSettings;

/*!
 *  跳到Auto-Lock自动锁屏时间界面
 */
- (void)js_gotoSystermAutoLockSettings;

/*!
 *  跳到Brightness自动锁定界面
 */
- (void)js_gotoSystermBrightnessSettings;

/*!
 *  跳到MICROPHONE麦克风界面
 */
- (void)js_gotoSystermMICROPHONESettings;

/*!
 *  跳到CONTACTS通讯录界面
 */
- (void)js_gotoSystermCONTACTSSettings;

/*!
 *  跳到Bluetooth蓝牙界面
 */
- (void)js_gotoSystermBluetoothSettings;

/*!
 *  跳到DATE_AND_TIME日期和时间界面
 */
- (void)js_gotoSystermDATE_AND_TIMESettings;

/*!
 *  跳到FaceTime界面
 */
- (void)js_gotoSystermFaceTimeSettings;

/*!
 *  跳到General界面
 */
- (void)js_gotoSystermGeneralSettings;

/*!
 *  跳到Keyboard界面
 */
- (void)js_gotoSystermKeyboardSettings;

/*!
 *  跳到iCloud界面
 */
- (void)js_gotoSystermiCloudSettings;

/*!
 *  跳转Safari浏览器
 *
 *  @param url 需要用Safari打开的url
 */
- (void)js_gotoSafariBrowserWithURL:(NSString *)url;

@end
