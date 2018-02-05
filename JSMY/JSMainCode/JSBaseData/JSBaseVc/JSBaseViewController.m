//
//  JSBaseViewController.m
//  JSMY
//
//  Created by wuwu on 2017/6/29.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSBaseViewController.h"

@interface JSBaseViewController ()

@end

@implementation JSBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*! 1、基本设置 */
    [self setupBase];
    
    /*! 2、navi设置 */
    [self js_setupNavi];
    
    /*! 3、创建UI */
    [self js_setupUI];
}

#pragma mark - ***** 基本设置
#pragma mark 创建UI
- (void)js_setupUI
{
    
}

- (void)setupBase
{
    self.view.backgroundColor = JSKit_Color_White;
}

/*!
 *  设置VC的背景颜色
 *
 *  @param vcBgColor vcBgColor
 */
- (void)setVcBgColor:(UIColor *)vcBgColor
{
    _vcBgColor = vcBgColor;
    self.view.backgroundColor = vcBgColor;
}

#pragma mark - ***** navi设置
- (void)js_setupNavi
{
    
}

#pragma mark - ***** 网络类型判断
/*!
 *  网络判断
 *
 *  @param viewController viewController
 */
- (void)js_networkChangeWith:(UIViewController *)viewController
{
    // 1.获得网络监控的管理者
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    
    // 2.设置网络状态改变后的处理
    JS_WEAKSELF;
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        
        // 当网络状态改变了, 就会调用这个block
        switch (status) {
                
            case AFNetworkReachabilityStatusUnknown: // 未知网络
            {
                NSLog(@"当前网络未知！");
                [weakSelf JS_showAlertWithTitle:@"当前网络未知！"];
                break;
            }
            case AFNetworkReachabilityStatusNotReachable: // 没有网络(断网)
            {
                NSLog(@"当前无网络！");
                [weakSelf JSAlertWithTitle:@"温馨提示：" message:@"亲！当前无网络！去设置网络" andOthers:@[@"取消", @"确认"] animated:YES action:^(NSInteger index) {
                    
                    if (index == 0)
                    {
                    }
                    if (index == 1)
                    {
                        [[JSSystermSetting js_systermSettingManage]js_gotoSystermSettings];
                    }
                }];
                break;
            }
            case AFNetworkReachabilityStatusReachableViaWWAN: // 手机自带网络
            {
                [self JSAlertWithTitle:@"温馨提示：" message:@"亲！正在使用手机3G/4G网络" andOthers:@[@"取消", @"确认"] animated:YES action:^(NSInteger index) {
                    
                    if (index == 0)
                    {
                    }
                    if (index == 1)
                    {
//                        [weakSelf ba_netUse4Gnet];
                    }
                }];
                
                break;
            }
            case AFNetworkReachabilityStatusReachableViaWiFi: // WIFI
            {
                [weakSelf JS_showAlertWithTitle:@"当前是WiFi环境！"];
                break;
            }
        }
    }];
    
    // 3.开始监控
    [manager startMonitoring];
}

/*!
 *  使用4G网络时的方法回调
 */
- (void)js_netUse4Gnet
{
    NSLog(@"使用3G/4G网络情况处理方法调用！");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
