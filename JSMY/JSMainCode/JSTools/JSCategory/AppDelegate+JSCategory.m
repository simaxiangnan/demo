//
//  AppDelegate+JSCategory.m
//  JSMY
//
//  Created by Stave on 2017/7/2.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "AppDelegate+JSCategory.h"
#import "JSNavigationController.h"
#import "JSTabBarController.h"
#import "JSLoginViewController.h"

@implementation AppDelegate (JSCategory)

#pragma mark - ***** TabVC 设置
/*!
 *  是否使用自定义TabVC
 *
 *  @param is YES:使用，NO:使用RDVTabVC
 */
- (void)isJSTabVC:(BOOL)is
{
    // 创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    if (is)
    {
        /*! 此处使用自定义TabBarController，此处暂时有问题，大家慎用！先使用第三方的tabbar */
        self.window.rootViewController = [JSTabBarController new];
        [self.window makeKeyAndVisible];
    }
    else
    {
        /*! 此处使用RDVTabBarController */
        //            [self setupViewControllers];
        //            self.window.rootViewController = self.viewController;
        self.window.rootViewController = [JSTabBarController new];
        [self.window makeKeyAndVisible];
    }
}

- (void)isJSTabVC2:(BOOL)is
{
    // 创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    /*! 此处使用自定义TabBarController */
    self.window.rootViewController = [[JSTabBarController alloc] init];
    [self.window makeKeyAndVisible];
}

#pragma mark - ***** 设置默认缓存大小
- (void)js_setNSURLCache
{
    /*!
     
     首先要知道，POST请求不能被缓存，只有 GET 请求能被缓存。因为从数学的角度来讲，GET 的结果是 幂等 的，就好像字典里的 key 与 value 就是幂等的，而 POST 不 幂等 。缓存的思路就是将查询的参数组成的值作为 key ，对应结果作为value。从这个意义上说，一个文件的资源链接，也叫 GET 请求，下文也会这样看待。
     80%的缓存需求：两行代码就可满足
     设置缓存只需要三个步骤：
     
     第一个步骤：请使用 GET 请求。
     
     第二个步骤：
     
     如果你已经使用 了 GET 请求，iOS 系统 SDK 已经帮你做好了缓存。你需要的仅仅是设置下内存缓存大小、磁盘缓存大小、以及缓存路径。甚至这两行代码不设置也是可以的，会有一个默认值。代码如下：
     
     要注意
     
     iOS 5.0开始，支持磁盘缓存，但仅支持 HTTP
     iOS 6.0开始，支持 HTTPS 缓存
     
     */
    NSURLCache *urlCache = [[NSURLCache alloc] initWithMemoryCapacity:4 * 1024 * 1024 diskCapacity:20 * 1024 * 1024 diskPath:nil];
    [NSURLCache setSharedURLCache:urlCache];
}

#pragma mark - ***** 键盘处理
- (void)JS_KeyboardSetting
{
    //IQKeyboard键盘事件管理
    IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    manager.enable  = YES;
    manager.shouldResignOnTouchOutside = YES;
    manager.enableAutoToolbar = NO;
    
    /*! 如果某个VC不想用IQkeyboard，就在这里用这两行代码把那个VC加进去就行，那个VC就可以用自己写的键盘代理 */
    //    [[IQKeyboardManager sharedManager] disableDistanceHandlingInViewControllerClass:[BALiveViewController class]];
    //    [[IQKeyboardManager sharedManager] disableToolbarInViewControllerClass:[BALiveViewController class]];
}

#pragma mark - *****
#pragma mark - 获取当前屏幕的控制器
- (UIViewController *)getCurrentTabViewController
{
    return self.window.rootViewController;
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"程序即将进入后台！");
    
    [application setApplicationIconBadgeNumber:0];
    [application cancelAllLocalNotifications];
}

/*！
 这里处理新浪微博SSO授权进入新浪微博客户端后进入后台，再返回原来应用
 */
- (void)applicationDidBecomeActive:(UIApplication *)application {

    NSLog(@"程序已经进入前台！");
    [application setApplicationIconBadgeNumber:0];
    return;
}

#pragma mark - ***** 其他

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"程序即将进入后台！");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"程序已进入后台！");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}

@end
