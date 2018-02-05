//
//  JSHomeViewController.m
//  JSMY
//
//  Created by wuwu on 2017/6/28.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSHomeViewController.h"
#import "JSLoginViewController.h"

@interface JSHomeViewController ()<UITextFieldDelegate,UITextViewDelegate>

@property(nonatomic,strong)UITextField *accountField;                 // 账号

@end

@implementation JSHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
    
    UIButton *shouBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [shouBtn setTitle:@"首页" forState:UIControlStateNormal];
    shouBtn.frame = CGRectMake(100, 100, 100, 100);
    shouBtn.backgroundColor = [UIColor redColor];
    [shouBtn addTarget:self action:@selector(jumpVc) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shouBtn];
    
    _accountField = [[UITextField alloc] init];
    _accountField.textAlignment = NSTextAlignmentLeft;
    _accountField.placeholder = @"请输入账号";
    _accountField.font = [UIFont systemFontOfSize:15];
    _accountField.delegate = self;
    [self.view addSubview:_accountField];
    
    [_accountField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(shouBtn.mas_bottom).with.offset(10);
        make.right.mas_equalTo(0);
        make.height.mas_equalTo(40);
    }];
}

-(void)jumpVc {
    JSLoginViewController *loginVc = [[JSLoginViewController alloc] init];
    [self.navigationController pushViewController:loginVc animated:YES];
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
