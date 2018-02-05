//
//  AlertHelper.h
//  Artgogo
//
//  Created by 王文辉 on 13-11-27.
//  Copyright (c) 2013年 王文辉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlertHelper : NSObject

+ (void) showAlert:(NSString *)alert;
+ (void) showAlert:(NSString *)alert title:(NSString *)title;
+ (void) showAlert:(NSString *)alert title:(NSString *)title delegate:(id<UIAlertViewDelegate>)delegate;
+ (void) showAlert:(NSString *)alert title:(NSString *)title delegate:(id<UIAlertViewDelegate>)delegate cancelButton:(NSString *)cancelButton confirmButton:(NSString *)confirmButton;
//+ (void) showAlert:(NSString *)alert title:(NSString *)title delegate:(id<UIAlertViewDelegate>)delegate cancelButton:(NSString *)cancelButton otherTitles:(NSString *)buttons, ... NS_REQUIRES_NIL_TERMINATION;

@end
