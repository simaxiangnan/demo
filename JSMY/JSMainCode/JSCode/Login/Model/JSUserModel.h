//
//  JSUserModel.h
//  JSMY
//
//  Created by Stave on 2017/7/1.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSBaseModel.h"

#define JSUSERSHARE [JSUserModel sharedJSUserModel]

@interface JSUserModel : JSBaseModel

/*！电话号码 */
@property (nonatomic, copy  ) NSString  *phone;

/*！昵称 */
@property (nonatomic, copy  ) NSString  *nickName;

/*！密码 */
@property (nonatomic, copy  ) NSString  *pwd;

/*！用户识别码：唯一【登录后才有】 */
@property (nonatomic, copy  ) NSString  *userCode;

@property (nonatomic, assign) BOOL       isLogin;

+ (JSUserModel *)sharedJSUserModel;

@end
