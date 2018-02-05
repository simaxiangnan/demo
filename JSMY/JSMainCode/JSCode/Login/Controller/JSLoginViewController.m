//
//  JSLoginViewController.m
//  JSMY
//
//  Created by wuwu on 2017/6/29.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSLoginViewController.h"
#import "JSUserSqlite.h"
#import "JSUserModel.h"
#import "JSTabBarController.h"

@interface JSLoginViewController ()

@end

@implementation JSLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"登录";
    self.view.backgroundColor  = [UIColor whiteColor];
    [self loadData];
}

-(void)loadData{
    
    NSString *db_phone = [NSString stringWithFormat:@" WHERE phone = %@ ", @1231];
    
    JSUserSqlite *userSqlite = [JSUserSqlite findFirstByCriteria:db_phone];

    NSDictionary *paraments = @{@"yhid":@10576};
    
    [[NetWorkTool sharedNetworkTool] POST:[kBaseURL stringByAppendingString:@"wo/getwoindex.do"] paraments:paraments success:^(id responseObject) {
        
        NSLog(@"%@", responseObject);
        
        if ([[responseObject objectForKey:@"code"] isEqualToString:@"N"]) {
            [AlertHelper showAlert:[responseObject objectForKey:@"msg"] ];
        }else {
            
            /*! 登录成功后，将数据库获取信息赋值给 JSUserModel，并发送通知 */
            JSUserModel *model = [[JSUserModel alloc] init];
            model.phone        = userSqlite.phone;
            model.nickName     = userSqlite.nickName;
            model.pwd          = userSqlite.pwd;
            model.isLogin      = YES;
            
        }
    } failure:^(NSError *error) {
        NSLog(@"%@", error.userInfo);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
