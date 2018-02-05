//
//  JSUserModel.m
//  JSMY
//
//  Created by Stave on 2017/7/1.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSUserModel.h"

@implementation JSUserModel

/*！
 *  单例对象对外的唯一接口，用到dispatch_once在初始化时执行一次任务，且dispatch_once保证线程安全
 *
 */
+ (JSUserModel *)sharedJSUserModel
{
    /*! 为单例对象创建的静态实例，置为nil，因为对象的唯一性，必须是static类型 */
    static id sharedJSUserModel = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedJSUserModel = [[super allocWithZone:NULL] init];
    });
    return sharedJSUserModel;
}

/*！
 *  重写allocWithZone方法，保证alloc或者init创建的实例不会产生新实例，因为该类覆盖了allocWithZone方法，所以只能通过其父类分配内存，即[super allocWithZone]
 *
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    return [self sharedJSUserModel];
}

- (id)copy
{
    NSLog(@"这是一个单例对象，copy将不起任何作用");
    return self;
}

+ (id)copyWithZone:(struct _NSZone *)zone
{
    return [self sharedJSUserModel];
}

@end
