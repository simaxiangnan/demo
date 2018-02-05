//
//  JSKit_Const_Color.h
//  JSMY
//
//  Created by Stave on 2017/7/2.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef unsigned char u_char;

// 主题黄色
FOUNDATION_EXTERN UIColor *JSKit_Color_ThemYellow;
FOUNDATION_EXTERN UIColor *JSKit_Color_ThemBlue;

// 支付宝 蓝色
FOUNDATION_EXTERN UIColor *JSKit_Color_AliPayBlue;


/*! 灰色 */
FOUNDATION_EXTERN UIColor *JSKit_Color_Gray_1;
FOUNDATION_EXTERN UIColor *JSKit_Color_Gray_2;
FOUNDATION_EXTERN UIColor *JSKit_Color_Gray_3;
FOUNDATION_EXTERN UIColor *JSKit_Color_Gray_4;
FOUNDATION_EXTERN UIColor *JSKit_Color_Gray_5;
FOUNDATION_EXTERN UIColor *JSKit_Color_Gray_6;
/*! cell.detailTextLabel.textColor 颜色 */
FOUNDATION_EXTERN UIColor *JSKit_Color_Gray_7;
FOUNDATION_EXTERN UIColor *JSKit_Color_Gray_8;
FOUNDATION_EXTERN UIColor *JSKit_Color_Gray_9;
FOUNDATION_EXTERN UIColor *JSKit_Color_Gray_10;
/*! tableView 背景颜色 */
FOUNDATION_EXTERN UIColor *JSKit_Color_Gray_11;

#pragma mark - 常用颜色
/*! 半透明遮罩色  */
FOUNDATION_EXTERN UIColor *JSKit_Color_Translucent;
FOUNDATION_EXTERN UIColor *JSKit_Color_Translucent_3;

/*! 白色 1.0 white */
FOUNDATION_EXTERN UIColor *JSKit_Color_White;

/*! 红色 1.0, 0.0, 0.0 RGB */
FOUNDATION_EXTERN UIColor *JSKit_Color_Red;

/*! 黄色 1.0, 1.0, 0.0 RGB */
FOUNDATION_EXTERN UIColor *JSKit_Color_Yellow;

/*! 绿色 0.0, 1.0, 0.0 RGB */
FOUNDATION_EXTERN UIColor *JSKit_Color_Green;

/*! 蓝色 0.0, 0.0, 1.0 RGB */
FOUNDATION_EXTERN UIColor *JSKit_Color_Blue;

/*! 无色 0.0 white, 0.0 alpha */
FOUNDATION_EXTERN UIColor *JSKit_Color_Clear;

/*! 橙色 1.0, 0.5, 0.0 RGB */
FOUNDATION_EXTERN UIColor *JSKit_Color_Orange;

/*! 黑色 0.0 white */
FOUNDATION_EXTERN UIColor *JSKit_Color_Black;

/*! 浅灰色 0.667 white */
FOUNDATION_EXTERN UIColor *JSKit_Color_LightGray;

/*! 青色 0.0, 1.0, 1.0 RGB */
FOUNDATION_EXTERN UIColor *JSKit_Color_Cyan;

/*! 红褐色 1.0, 0.0, 1.0 RGB */
FOUNDATION_EXTERN UIColor *JSKit_Color_Magenta;

/*! 棕色 0.6, 0.4, 0.2 RGB */
FOUNDATION_EXTERN UIColor *JSKit_Color_Brown;

/*! 紫色 0.5, 0.0, 0.5 RGB */
FOUNDATION_EXTERN UIColor *JSKit_Color_Purple;



/** -------------------------- 基础设置颜色函数 -------------------------- */
// 随机rgb颜色
extern UIColor *JSKit_Color_RandomRGB();
// 随机rgba颜色
extern UIColor *JSKit_Color_RandomRGBA();
// 颜色 rgbaValue - 0x12345678
extern UIColor *JSKit_Color_RGBAValue(UInt32 rgbaValue);
// 颜色 rgbValue - 0x123456
extern UIColor *JSKit_Color_RGBValue(UInt32 rgbValue);

extern UIColor *JSKit_Color_RGB(u_char r, u_char g, u_char b);
extern UIColor *JSKit_Color_RGBA(u_char r, u_char g, u_char b, u_char a);


