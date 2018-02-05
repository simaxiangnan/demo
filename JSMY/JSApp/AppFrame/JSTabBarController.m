//
//  JSTabBarController.m
//  JSMY
//
//  Created by wuwu on 2017/6/28.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSTabBarController.h"
#import "JSNavigationController.h"
#import "JSHomeViewController.h"
#import "JSMessageViewController.h"
#import "JSDiscoverViewController.h"
#import "JSProfileViewController.h"

@interface JSTabBarController ()<UITabBarControllerDelegate>

@end

@implementation JSTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupControllers];
}

-(void)setupControllers{
    
    // 添加导航控制器
    // 1.首页页面
    JSHomeViewController *VC1 = [[JSHomeViewController alloc] init];
    JSNavigationController * NC1 = [[JSNavigationController alloc]initWithRootViewController:VC1];
    NC1.tabBarItem.title = @"首页";
    NC1.tabBarItem.tag = 0;
    NC1.tabBarItem.image = [UIImage imageNamed:@"shouyeNormal"];
    NC1.tabBarItem.selectedImage = [UIImage imageNamed:@"shouye-"];
    [self addChildViewController:NC1];
   
    
    // 2.消息
    JSMessageViewController *VC2 = [[JSMessageViewController alloc] init];
    JSNavigationController * NC2 = [[JSNavigationController alloc]initWithRootViewController:VC2];
    NC2.tabBarItem.title = @"消息";
    NC2.tabBarItem.tag = 1;
    NC2.tabBarItem.image = [UIImage imageNamed:@"kecNormal"];
    NC2.tabBarItem.selectedImage = [UIImage imageNamed:@"kec"];
    [self addChildViewController:NC2];
    
    
    // 3.发现
    JSDiscoverViewController *VC3 = [[JSDiscoverViewController alloc] init];
    JSNavigationController * NC3 = [[JSNavigationController alloc]initWithRootViewController:VC3];
    NC3.tabBarItem.title = @"发现";
    NC3.tabBarItem.tag = 2;
    NC3.tabBarItem.image = [UIImage imageNamed:@"bangNormal"];
    NC3.tabBarItem.selectedImage = [UIImage imageNamed:@"bang-"];
    [self addChildViewController:NC3];
    
    
    // 4.我的
    JSProfileViewController *VC4 = [[JSProfileViewController alloc] init];
    JSNavigationController * NC4 = [[JSNavigationController alloc]initWithRootViewController:VC4];
    NC4.tabBarItem.title = @"我的";
    NC4.tabBarItem.tag = 3;
    NC4.tabBarItem.image = [UIImage imageNamed:@"removeNormal"];
    NC4.tabBarItem.selectedImage = [UIImage imageNamed:@"remove-"];
    [self addChildViewController:NC4];
    
    self.tabBar.tintColor = [UIColor colorWithRed:181.0/255.0 green:119.0/255.0 blue:54.0/255.0 alpha:1.0];
    
    // 设置程序打开时显示 homeVC
    self.selectedIndex = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
