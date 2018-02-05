//
//  JSKitManager.m
//  JSMY
//
//  Created by Stave on 2017/7/2.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSKitManager.h"

@interface JSKitManager ()

@property (nonatomic, weak) __kindof UIView *tempView;   //temp View,use to set view

@property (nonatomic, weak) __kindof UIControl *tempControl;   //temp control,use to set control sub class

@end

@implementation JSKitManager

- (__kindof UIView *)tempView
{
    if (!_tempView)
    {
        if ([self.main isKindOfClass:[UIView class]])
        {
            _tempView = self.main;
        }
    }
    return _tempView;
}

- (__kindof UIControl *)tempControl
{
    if (!_tempControl)
    {
        if ([self.main isKindOfClass:[UIControl class]])
        {
            _tempControl = self.main;
        }
    }
    return _tempControl;
}

@end
