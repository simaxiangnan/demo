//
//  JSKit_DefineFont.h
//  JSMY
//
//  Created by wuwu on 2017/6/29.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#ifndef JSKit_DefineFont_h
#define JSKit_DefineFont_h

#pragma mark - 自定义系统字体大小
CG_INLINE UIFont *
JSKit_Font_systemFontOfSize(CGFloat fontSize){
    return [UIFont systemFontOfSize:fontSize];
}

#pragma mark - 粗体
CG_INLINE UIFont *
JSKit_Font_boldSystemFontOfSize(CGFloat fontSize){
    return [UIFont boldSystemFontOfSize:fontSize];
}

#pragma mark - 斜体
CG_INLINE UIFont *
JSKit_Font_italicSystemFontOfSize(CGFloat fontSize){
    return [UIFont italicSystemFontOfSize:fontSize];
}

#pragma mark - 自定义系统字体大小和粗细
CG_INLINE UIFont *
JSKit_Font_systemFontOfSizeAndWeight(CGFloat fontSize, CGFloat weight){
    return [UIFont systemFontOfSize:fontSize weight:weight];
}

#pragma mark - 自定义等宽字体大小和粗细
CG_INLINE UIFont *
JSKit_Font_monospacedDigitSystemFontOfSizeAndWeight(CGFloat fontSize, CGFloat weight){
    return [UIFont monospacedDigitSystemFontOfSize:fontSize weight:weight];
}


#pragma mark - 常用系统字体大小
#define JSKit_Font_systemFontOfSize_10      JSKit_Font_systemFontOfSize(10)
#define JSKit_Font_systemFontOfSize_11      JSKit_Font_systemFontOfSize(11)
#define JSKit_Font_systemFontOfSize_12      JSKit_Font_systemFontOfSize(12)
#define JSKit_Font_systemFontOfSize_13      JSKit_Font_systemFontOfSize(13)
#define JSKit_Font_systemFontOfSize_14      JSKit_Font_systemFontOfSize(14)
#define JSKit_Font_systemFontOfSize_15      JSKit_Font_systemFontOfSize(15)
#define JSKit_Font_systemFontOfSize_16      JSKit_Font_systemFontOfSize(16)
#define JSKit_Font_systemFontOfSize_17      JSKit_Font_systemFontOfSize(17)
#define JSKit_Font_systemFontOfSize_18      JSKit_Font_systemFontOfSize(18)
#define JSKit_Font_systemFontOfSize_19      JSKit_Font_systemFontOfSize(19)
#define JSKit_Font_systemFontOfSize_20      JSKit_Font_systemFontOfSize(20)
#define JSKit_Font_systemFontOfSize_25      JSKit_Font_systemFontOfSize(25)
#define JSKit_Font_systemFontOfSize_30      JSKit_Font_systemFontOfSize(30)

#pragma mark - 常用粗体系统字体大小
#define JSKit_Font_boldSystemFontOfSize_10  JSKit_Font_boldSystemFontOfSize(10)
#define JSKit_Font_boldSystemFontOfSize_11  JSKit_Font_boldSystemFontOfSize(11)
#define JSKit_Font_boldSystemFontOfSize_12  JSKit_Font_boldSystemFontOfSize(12)
#define JSKit_Font_boldSystemFontOfSize_13  JSKit_Font_boldSystemFontOfSize(13)
#define JSKit_Font_boldSystemFontOfSize_14  JSKit_Font_boldSystemFontOfSize(14)
#define JSKit_Font_boldSystemFontOfSize_15  JSKit_Font_boldSystemFontOfSize(15)
#define JSKit_Font_boldSystemFontOfSize_16  JSKit_Font_boldSystemFontOfSize(16)
#define JSKit_Font_boldSystemFontOfSize_17  JSKit_Font_boldSystemFontOfSize(17)
#define JSKit_Font_boldSystemFontOfSize_18  JSKit_Font_boldSystemFontOfSize(18)
#define JSKit_Font_boldSystemFontOfSize_19  JSKit_Font_boldSystemFontOfSize(19)
#define JSKit_Font_boldSystemFontOfSize_20  JSKit_Font_boldSystemFontOfSize(20)
#define JSKit_Font_boldSystemFontOfSize_25  JSKit_Font_boldSystemFontOfSize(25)
#define JSKit_Font_boldSystemFontOfSize_30  JSKit_Font_boldSystemFontOfSize(30)


#endif /* JSKit_DefineFont_h */
