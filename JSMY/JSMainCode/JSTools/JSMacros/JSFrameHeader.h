

//
//  JSFrameHeader.h
//  JSMY
//
//  Created by wuwu on 2017/6/29.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#ifndef JSFrameHeader_h
#define JSFrameHeader_h

#pragma mark - ***** frame设置

/*! 当前设备的屏幕宽度 */
#define JS_SCREEN_WIDTH    [[UIScreen mainScreen] bounds].size.width

/*! 当前设备的屏幕高度 */
#define JS_SCREEN_HEIGHT   [[UIScreen mainScreen] bounds].size.height

/*! 黄金比例的宽 */
#define JS_WIDTH_0_618           JS_SCREEN_WIDTH * 0.618

/*! 黄金比例的高 */
#define JS_HEIGHT_0_568          JS_SCREEN_HEIGHT * 0.568

/*! Status JSr height. */
#define  JS_StatusJSrHeight      20.f

/*! Navigation JSr height. */
#define  JS_NavigationJSrHeight  44.f

/*! TabJSr height. self.tabJSrController.tabJSr.height */
#define  JS_TabJSrHeight         49.f

/*! Status JSr & navigation JSr height. */
#define  JS_StatusJSrAndNavigationJSrHeight   (20.f + 44.f)

/*! iPhone4 or iPhone4s */
#define  JS_iPhone4_4s     (Width == 320.f && Height == 480.f)

/*! iPhone5 or iPhone5s */
#define  JS_iPhone5_5s     (Width == 320.f && Height == 568.f)

/*! iPhone6 or iPhone6s */
#define  JS_iPhone6_6s     (Width == 375.f && Height == 667.f)

/*! iPhone6Plus or iPhone6sPlus */
#define  JS_iPhone6_6sPlus (Width == 414.f && Height == 736.f)

/*! cell 的间距：10 */
#define JSStatusCellMargin 10

/*! 设置 view 圆角和边框 */
#define JS_ViewBorderRadius(View, Radius, Width, Color)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES];\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]]

/*! 由角度转换弧度 */
#define JS_DegreesToRadian(x) (M_PI * (x) / 180.0)

/*! 由弧度转换角度 */
#define JS_RadianToDegrees(radian) (radian*180.0)/(M_PI)

#endif /* JSFrameHeader_h */
