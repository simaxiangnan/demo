//
//  AppDelegate.m
//  JSMY
//
//  Created by wuwu on 2017/6/28.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+JSCategory.h"
#import "VddadadaaiewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /*! 是否使用自定义TabVC * YES:使用，NO:使用RDVTabVC , 这行注掉后还可以使用SB看看，具体使用：请前往工程中修改Main显示即可！*/
    [self isJSTabVC:YES];
  
    /*! 键盘处理 */
    [self JS_KeyboardSetting];
    
    /*! 设置默认缓存大小 */
    [self js_setNSURLCache];
    
    return YES;
    
//    jsmy@600.com.cn
}

@end
