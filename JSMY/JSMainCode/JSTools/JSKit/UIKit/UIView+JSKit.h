//
//  UIView+JSKit.h
//  JSMY
//
//  Created by Stave on 2017/7/2.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSKitManager.h"

/**
 *  Direction of flip animation
 */
typedef NS_ENUM(NSInteger, UIViewAnimationFlipDirection)
{
    /**
     *  Flip animation from top
     */
    UIViewAnimationFlipDirectionFromTop = 0,
    /**
     *  Flip animation from left
     */
    UIViewAnimationFlipDirectionFromLeft,
    /**
     *  Flip animation from right
     */
    UIViewAnimationFlipDirectionFromRight,
    /**
     *  Flip animation from bottom
     */
    UIViewAnimationFlipDirectionFromBottom
};

/**
 *  Direction of the translation
 */
typedef NS_ENUM(NSInteger, UIViewAnimationTranslationDirection)
{
    /**
     *  Translation from left to right
     */
    UIViewAnimationTranslationDirectionFromLeftToRight = 0,
    /**
     *  Translation from right to left
     */
    UIViewAnimationTranslationDirectionFromRightToLeft
};

/**
 *  Direction of the linear gradient
 */
typedef NS_ENUM(NSInteger, UIViewLinearGradientDirection)
{
    /**
     *  Linear gradient vertical
     */
    UIViewLinearGradientDirectionVertical = 0,
    /**
     *  Linear gradient horizontal
     */
    UIViewLinearGradientDirectionHorizontal,
    /**
     *  Linear gradient from left to right and top to down
     */
    UIViewLinearGradientDirectionDiagonalFromLeftToRightAndTopToDown,
    /**
     *  Linear gradient from left to right and down to top
     */
    UIViewLinearGradientDirectionDiagonalFromLeftToRightAndDownToTop,
    /**
     *  Linear gradient from right to left and top to down
     */
    UIViewLinearGradientDirectionDiagonalFromRightToLeftAndTopToDown,
    /**
     *  Linear gradient from right to left and down to top
     */
    UIViewLinearGradientDirectionDiagonalFromRightToLeftAndDownToTop
};

@interface UIView (JSKit)

@property (nonatomic          ) CGPoint        viewOrigin;
@property (nonatomic          ) CGSize         viewSize;

@property (nonatomic          ) CGFloat        x;
@property (nonatomic          ) CGFloat        y;
@property (nonatomic          ) CGFloat        width;
@property (nonatomic          ) CGFloat        height;

@property (nonatomic          ) CGFloat        top;
@property (nonatomic          ) CGFloat        bottom;
@property (nonatomic          ) CGFloat        left;
@property (nonatomic          ) CGFloat        right;

@property (nonatomic          ) CGFloat        centerX;
@property (nonatomic          ) CGFloat        centerY;

/*----------------------
 * Relative coordinate *
 ----------------------*/

@property (nonatomic, readonly) CGFloat        middleX;
@property (nonatomic, readonly) CGFloat        middleY;
@property (nonatomic, readonly) CGPoint        middlePoint;

@property (nonatomic    ) JSKitManager  *jskit_manager;

//@property (nonatomic, assign) IBInspectable BOOL     masksToBounds;
@property (nonatomic, assign) IBInspectable CGFloat  cornerRadius;
@property (nonatomic, assign) IBInspectable CGFloat  borderWidth;
@property (nonatomic, assign) IBInspectable UIColor *borderColor;
@property (nonatomic, assign) IBInspectable CGFloat  defineValue;

/**
 *  1.设置颜色
 */
- (UIView *(^)(UIColor *color)) setColor;

/**
 *  2.设置框架
 */
- (UIView *(^)(CGRect frame)) setFrame;

/**
 *  3.设置尺寸
 */
- (UIView *(^)(CGSize size)) setSize;

/**
 *  4.设置中心点
 */
- (UIView *(^)(CGPoint point)) setCenter;

/**
 *  5.设置标签值
 */
- (UIView *(^)(NSInteger tag)) setTag;

/**
 *  1.给UIView添加点击事件
 */
- (void)addTarget:(id)target
           action:(SEL)action;

/**
 *  2.UIView的类初始化
 */
+ (UIView *)viewWithFrame:(CGRect)frame
          backgroundColor:(UIColor *)backgroundColor;

/**
 *  3.创建边框
 */
- (void)js_setBordersWithColor:(UIColor *)color
               andCornerRadius:(CGFloat)radius
                      andWidth:(CGFloat)width;

/**
 *  4.删除边框
 */
- (void)js_removeBorders;

/**
 *  5.创建阴影
 */
- (void)js_setRectShadowWithOffset:(CGSize)offset
                           opacity:(CGFloat)opacity
                            radius:(CGFloat)radius;

/**
 *  6.删除阴影
 */
- (void)js_removeShadow;

/**
 *  7.创建圆角半径阴影
 */
- (void)js_setCornerRadiusShadowWithCornerRadius:(CGFloat)cornerRadius
                                          offset:(CGSize)offset
                                         opacity:(CGFloat)opacity
                                          radius:(CGFloat)radius;


/**
 *  9.摇摆动画
 */
- (void)js_shakeView;

/**
 *  10.脉冲动画
 */
- (void)js_pulseViewWithTime:(CGFloat)seconds;

/*!
 *  渐变色
 *
 *  @param colors    颜色
 *  @param direction 方向，横向还是纵向
 */
- (void)js_createGradientWithColors:(NSArray *)colors direction:(UIViewLinearGradientDirection)direction;

/**
 *  添加子View
 *
 *  @param array 添加子的ViewArray
 */
- (void)js_AddSubViewsWithArray:(NSArray *)array;

/**
 *  获取当前View的VC
 *
 *  @return 获取当前View的VC
 */
- (UIViewController *)getCurrentViewController;

/*!
 *  显示警告框
 *
 *  @param title   title description
 *  @param message message description
 */
- (void)js_showAlertView:(NSString *)title message:(NSString *)message;

/*!
 *  自适应label的高度
 *
 *  @param text  内容
 *  @param font  字体大小
 *  @param width 宽度
 *
 *  @return label的高度
 */
+ (CGFloat)js_AutoSizeOfHeghtWithText:(NSString *)text font:(UIFont *)font width:(CGFloat)width;

/*!
 *  自适应label的宽度
 *
 *  @param text  内容
 *  @param font  字体大小
 *  @param width 高度
 *
 *  @return label的宽度
 */
+ (CGFloat)js_AutoSizeOfWidthWithText:(NSString *)text font:(UIFont *)font height:(CGFloat)height;


//- (void)js_showHudWitTitle:(NSString *)title atView:(UIView *)view;

@end
