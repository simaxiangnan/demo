//
//  JSProfileViewController.m
//  JSMY
//
//  Created by wuwu on 2017/6/28.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSProfileViewController.h"
#import "JSUserModel.h"
#import "JSLoginViewController.h"
#import "JSJumpManager.h"

@interface JSProfileViewController ()

@end

@implementation JSProfileViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    [self loadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"我的";
}

-(void)loadData{
    
    JS_WEAKSELF;
    if (!JSUSERSHARE.isLogin) {
//        [JSJumpManager js_gotoLoginVCWithViewController:self];
//        [weakSelf JS_showAlertWithTitle:@"当前网络很好"];
//        [weakSelf JS_showAlert:@"当前网络很好"];
        [weakSelf JS_showBusy];
//        [weakSelf JS_hideProgress];

    }else {
        [AlertHelper showAlert:@"网络已链接"];
    }
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
