//
//  JSKitManager.h
//  JSMY
//
//  Created by Stave on 2017/7/2.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class JSKitManager;

typedef JSKitManager *(^js_color)(UIColor *);
typedef JSKitManager *(^js_font)(UIFont *);

/*! string */
typedef JSKitManager *(^js_sting)(NSString *);
typedef JSKitManager *(^js_attributedString)(NSAttributedString *);

/*! text */
typedef JSKitManager *(^js_color)(UIColor *);
typedef JSKitManager *(^js_font)(UIFont *);
typedef JSKitManager *(^js_textAlignment)(NSTextAlignment);
typedef JSKitManager *(^js_lineBreakMode)(NSLineBreakMode);
typedef JSKitManager *(^js_jsselineAdjustment)(UIBaselineAdjustment );

/*! image */
typedef JSKitManager *(^js_image)(UIImage *);
typedef JSKitManager *(^js_image_state)(UIImage *, UIControlState);

/*! view */
typedef JSKitManager *(^js_view)(UIView *);
typedef JSKitManager *(^js_tintAdjustmentMode)(UIViewTintAdjustmentMode );

/*! 数据类型 */
typedef JSKitManager *(^js_void)(void);
typedef JSKitManager *(^js_float)(CGFloat);
typedef JSKitManager *(^js_bool)(BOOL);
typedef JSKitManager *(^js_bool_bool)(BOOL, BOOL);
typedef JSKitManager *(^js_float_bool)(CGFloat, BOOL);
typedef JSKitManager *(^js_point_bool)(CGPoint, BOOL);
typedef JSKitManager *(^js_integer)(NSInteger);
typedef JSKitManager *(^js_uinteger)(NSUInteger);

/*! size */
typedef JSKitManager *(^js_edgeInsets)(UIEdgeInsets);
typedef JSKitManager *(^js_rect)(CGRect);
typedef JSKitManager *(^js_point)(CGPoint);
typedef JSKitManager *(^js_size)(CGSize);
typedef JSKitManager *(^js_range)(NSRange);
typedef JSKitManager *(^js_transform)(CGAffineTransform transform);
typedef JSKitManager *(^js_contentMode)(UIViewContentMode);

@interface JSKitManager : NSObject

/* category use,overlook */
@property (nonatomic, weak) id main;           //clear is UIControl or UIView

@property (nonatomic, weak) __kindof UILabel *js_label;

@end
