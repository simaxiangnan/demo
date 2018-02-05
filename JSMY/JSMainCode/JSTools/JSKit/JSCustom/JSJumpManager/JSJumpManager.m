//
//  JSJumpManager.m
//  JSMY
//
//  Created by Stave on 2017/7/1.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSJumpManager.h"
#import "AppDelegate.h"
#import "JSLoginViewController.h"
#import "JSUserModel.h"

@implementation JSJumpManager

+ (JSJumpManager *)sharedJSJumpManager
{
    //    NSAssert(0, @"这是一个单例对象，请使用+(NetAPIManager *)sharedInstance方法");
    /*! 为单例对象创建的静态实例，置为nil，因为对象的唯一性，必须是static类型 */
    static id sharedJSJumpManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedJSJumpManager = [[super allocWithZone:NULL] init];
    });
    return sharedJSJumpManager;
}

/*！
 *  重写allocWithZone方法，保证alloc或者init创建的实例不会产生新实例，因为该类覆盖了allocWithZone方法，所以只能通过其父类分配内存，即[super allocWithZone]
 *
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    return [self sharedJSJumpManager];
}

- (id)copy
{
    return self;
}

+ (id)copyWithZone:(struct _NSZone *)zone
{
    return [self sharedJSJumpManager];
}


/*!
 注意：跳转的格式，需要与后台一起定义
 {
 "className" : "MessageViewController",
 "method" : "refresh",
 "properties" : {
 "msgId": 1223030330,
 "msgType": 3
 }
 };
 
 className：跳转目标界面的类名，
 method：类的实例方法，
 properties：实例方法调用所需的参数。
 */
+ (void)js_jumpVCWtihDict:(NSDictionary *)dict navi:(UINavigationController *)navi
{
    Class class = NSClassFromString(dict[@"className"]);
    
    UIViewController *vc = [[class alloc] init];
    
    NSDictionary *properties = dict[@"properties"];
    [properties enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        /*! 如果没有这个字段或obj为nil，让它报错好了，这样就知道问题出在哪了 */
        [vc setValue:obj forKey:key];
    }];
    
    //    SEL selector = NSSelectorFromString(dict[@"method"]);
    //    [vc performSelector:selector];
    [navi pushViewController:vc animated:YES];
}

/*!
 *  全局中转类
 *
 *  @param dict 跳转需要的参数
 */
+ (void)js_jumpToVCWtihDict:(NSDictionary *)dict
{
    if (kDictIsEmpty(dict))
    {
        return;
    }
    
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIViewController *viewController = app.window.rootViewController;
    
    /*! 跳转 VC 的标识 */
    NSString *actionType    = [dict objectForKey:@"actionType"];
    NSString *actionParam   = [dict objectForKey:@"actionParam"];
    
}

+ (void)js_gotoLoginVCWithViewController:(UIViewController *)viewController
{
    if (!viewController)
    {
        AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
        viewController = app.window.rootViewController;
    }
    if (JSUSERSHARE.isLogin)
    {
//        [viewController.view ba_showAlertView:@"温馨提示：" message:@"当前用户已登录，请勿重复登录！"];
        [AlertHelper showAlert:@"当前用户已登录，请勿重复登录！" title:@"温馨提示："];
        return ;
    }
    //    [viewController BAAlertWithTitle:@"温馨提示：" message:@"当前用户未 登录 ，是否 登录 ？"  andOthers:@[@"取 消", @"登 录"] animated:YES action:^(NSInteger index) {
    //        if (index == 1)
    //        {
    //            [viewController.navigationController pushViewController:[BALoginViewController new] animated:YES];
    //        }
    //
    //    }];
    
    [JSJUMPMANAGERShare js_loginAlertWithViewController:viewController];
}

- (void)js_loginAlertWithViewController:(UIViewController *)viewController
{
    NSMutableAttributedString *title = [[NSMutableAttributedString alloc] initWithString:@"博爱温馨提示：" attributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]}];
    
    NSString *result = @"当前用户未 登录 ，是否 登录 ？";
    NSString *keyWord = @"登录";
    
    /*! 关键字添加效果 */
    NSMutableAttributedString *attributedMessage = [[NSMutableAttributedString alloc]initWithString:result];
    
    /*! 获取关键字位置 */
    NSRange range = [result rangeOfString:keyWord];
    
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:20],NSForegroundColorAttributeName:[UIColor blackColor],NSKernAttributeName:@2.0,NSStrikethroughStyleAttributeName:@(NSUnderlineStyleSingle),NSStrokeColorAttributeName:[UIColor blueColor],NSStrokeWidthAttributeName:@2.0,NSVerticalGlyphFormAttributeName:@(0)};
    
    JS_WEAKSELF;
    /*! 系统 alert */
    JSLoginViewController *loginVC = [[JSLoginViewController alloc] init];
    [viewController.navigationController pushViewController:loginVC animated:YES];
    
}

@end
