//
//  JSKit_Const_Color.m
//  JSMY
//
//  Created by Stave on 2017/7/2.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSKit_Const_Color.h"

// 主题黄色
UIColor *JSKit_Color_ThemYellow;
UIColor *JSKit_Color_ThemBlue;

// 支付宝 蓝色
UIColor *JSKit_Color_AliPayBlue;

/*! 灰色 */
UIColor *JSKit_Color_Gray_1;
UIColor *JSKit_Color_Gray_2;
UIColor *JSKit_Color_Gray_3;
UIColor *JSKit_Color_Gray_4;
UIColor *JSKit_Color_Gray_5;
UIColor *JSKit_Color_Gray_6;
UIColor *JSKit_Color_Gray_7;
UIColor *JSKit_Color_Gray_8;
UIColor *JSKit_Color_Gray_9;
UIColor *JSKit_Color_Gray_10;
UIColor *JSKit_Color_Gray_11;

/*! 半透明遮罩色  */
UIColor *JSKit_Color_Translucent;
UIColor *JSKit_Color_Translucent_3;


/*! 白色 1.0 white */
UIColor *JSKit_Color_White;

/*! 红色 1.0, 0.0, 0.0 RGB */
UIColor *JSKit_Color_Red;

/*! 黄色 1.0, 1.0, 0.0 RGB */
UIColor *JSKit_Color_Yellow;

/*! 绿色 0.0, 1.0, 0.0 RGB */
UIColor *JSKit_Color_Green;

/*! 蓝色 0.0, 0.0, 1.0 RGB */
UIColor *JSKit_Color_Blue;

/*! 无色 0.0 white, 0.0 alpha */
UIColor *JSKit_Color_Clear;

/*! 橙色 1.0, 0.5, 0.0 RGB */
UIColor *JSKit_Color_Orange;

/*! 黑色 0.0 white */
UIColor *JSKit_Color_Black;

/*! 浅灰色 0.667 white */
UIColor *JSKit_Color_LightGray;

/*! 青色 0.0, 1.0, 1.0 RGB */
UIColor *JSKit_Color_Cyan;

/*! 红褐色 1.0, 0.0, 1.0 RGB */
UIColor *JSKit_Color_Magenta;

/*! 棕色 0.6, 0.4, 0.2 RGB */
UIColor *JSKit_Color_Brown;

/*! 紫色 0.5, 0.0, 0.5 RGB */
UIColor *JSKit_Color_Purple;




/** -------------------------- 基础设置颜色函数 -------------------------- */

UIColor *JSKit_Color_RandomRGB(){
    return JSKit_Color_RGBValue(arc4random_uniform(0xffffff));
}

UIColor *JSKit_Color_RandomRGBA(){
    return JSKit_Color_RGBAValue(arc4random_uniform(0xffffffff));
}

UIColor *JSKit_Color_RGBValue(UInt32 rgbValue){
    return [UIColor colorWithRed:((rgbValue & 0xff0000) >> 16) / 255.0f
                           green:((rgbValue & 0xff00) >> 8) / 255.0f
                            blue:(rgbValue  & 0xff) / 255.0f
                           alpha:1.0f];
}

UIColor *JSKit_Color_RGBAValue(UInt32 rgbaValue){
    return [UIColor colorWithRed:((rgbaValue & 0xff000000) >> 24) / 255.0f
                           green:((rgbaValue & 0xff0000) >> 16) / 255.0f
                            blue:((rgbaValue & 0xff00) >> 8) / 255.0f
                           alpha:(rgbaValue  & 0xff) / 255.0f];
}

UIColor *JSKit_Color_RGB(u_char r,u_char g, u_char b){
    return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f];
}

UIColor *JSKit_Color_RGBA(u_char r,u_char g, u_char b, u_char a){
    return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a/255.0f];
}


/**
 加载颜色
 */
@interface NSObject(JSKit_Const_Color)

@end

@implementation NSObject(JSKit_Const_Color)

+ (void)load
{
    JSKit_Color_ThemYellow = JSKit_Color_RGB(229, 205, 139);
    JSKit_Color_ThemBlue = JSKit_Color_RGB(92, 140, 193);
    
    // 支付宝 蓝色
    JSKit_Color_AliPayBlue = JSKit_Color_RGB(0, 152, 229);
    
    /*! 灰色 */
    JSKit_Color_Gray_1 = JSKit_Color_RGB(53, 60, 70);
    JSKit_Color_Gray_2 = JSKit_Color_RGB(73, 80, 90);
    JSKit_Color_Gray_3 = JSKit_Color_RGB(93, 100, 110);
    JSKit_Color_Gray_4 = JSKit_Color_RGB(113, 120, 130);
    JSKit_Color_Gray_5 = JSKit_Color_RGB(133, 140, 150);
    JSKit_Color_Gray_6 = JSKit_Color_RGB(153, 160, 170);
    JSKit_Color_Gray_7 = JSKit_Color_RGB(173, 180, 190);
    JSKit_Color_Gray_8 = JSKit_Color_RGB(196, 200, 208);
    JSKit_Color_Gray_9 = JSKit_Color_RGB(216, 220, 228);
    JSKit_Color_Gray_10 = JSKit_Color_RGB(240, 240, 240);
    JSKit_Color_Gray_11 = JSKit_Color_RGB(248, 248, 248);
    
    /*! 半透明遮罩色  */
    JSKit_Color_Translucent = JSKit_Color_RGBA(0, 0, 0, 255/2);
    JSKit_Color_Translucent_3 = [[UIColor blackColor] colorWithAlphaComponent:0.3f];
    
    /*! 白色 1.0 white */
    JSKit_Color_White = [UIColor whiteColor];
    
    /*! 红色 1.0, 0.0, 0.0 RGB */
    JSKit_Color_Red = [UIColor redColor];
    
    /*! 黄色 1.0, 1.0, 0.0 RGB */
    JSKit_Color_Yellow = [UIColor yellowColor];
    
    /*! 绿色 0.0, 1.0, 0.0 RGB */
    JSKit_Color_Green = [UIColor greenColor];
    
    /*! 蓝色 0.0, 0.0, 1.0 RGB */
    JSKit_Color_Blue = [UIColor blueColor];
    
    /*! 无色 0.0 white, 0.0 alpha */
    JSKit_Color_Clear = [UIColor clearColor];
    
    /*! 橙色 1.0, 0.5, 0.0 RGB */
    JSKit_Color_Orange = [UIColor orangeColor];
    
    /*! 黑色 0.0 white */
    JSKit_Color_Black = [UIColor blackColor];
    
    /*! 浅灰色 0.667 white */
    JSKit_Color_LightGray = [UIColor lightGrayColor];
    
    /*! 青色 0.0, 1.0, 1.0 RGB */
    JSKit_Color_Cyan = [UIColor cyanColor];
    
    /*! 红褐色 1.0, 0.0, 1.0 RGB */
    JSKit_Color_Magenta = [UIColor magentaColor];
    
    /*! 棕色 0.6, 0.4, 0.2 RGB */
    JSKit_Color_Brown = [UIColor brownColor];
    
    /*! 紫色 0.5, 0.0, 0.5 RGB */
    JSKit_Color_Purple = [UIColor purpleColor];
    
    
    
}
@end
