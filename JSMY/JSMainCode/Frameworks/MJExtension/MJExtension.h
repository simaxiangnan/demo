//
//  MJExtension.h
//  MJExtension
//
//  Created by mj on 14-1-15.
//  Copyright (c) 2014年 小码哥. All rights reserved.
//  代码地址:https://github.com/CoderMJLee/MJExtension
//  代码地址:http://code4app.com/ios/%E5%AD%97%E5%85%B8-JSON-%E4%B8%8E%E6%A8%A1%E5%9E%8B%E7%9A%84%E8%BD%AC%E6%8D%A2/5339992a933bf062608b4c57  (实例地址)


//部分示例
// JSON -> Model(将字典数据转为model类)
//User *user = [User mj_objectWithKeyValues:dict];

//JSONString -> Model【JSON字符串转模型】
//NSString *jsonString = @"{\"name\":\"Jack\", \"icon\":\"lufy.png\", \"age\":20}";
//User *user = [User mj_objectWithKeyValues:jsonString];

//Model 中 嵌套 Model
//NSDictionary *dict = @{
//                       @"text" : @"Agree!Nice weather!",
//                       @"user" : @{
//                               @"name" : @"Jack",
//                               @"icon" : @"lufy.png"
//                               },
//                       @"retweetedStatus" : @{
//                               @"text" : @"Nice weather!",
//                               @"user" : @{
//                                       @"name" : @"Rose",
//                                       @"icon" : @"nami.png"
//                                       }
//                               }
//                       };
//
//Status *status = [Status mj_objectWithKeyValues:dict];

#import "NSObject+MJCoding.h"
#import "NSObject+MJProperty.h"
#import "NSObject+MJClass.h"
#import "NSObject+MJKeyValue.h"
#import "NSString+MJExtension.h"
#import "MJExtensionConst.h"