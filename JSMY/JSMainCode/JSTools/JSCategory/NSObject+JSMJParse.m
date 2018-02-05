//
//  NSObject+JSMJParse.m
//  JSMY
//
//  Created by Stave on 2017/7/1.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "NSObject+JSMJParse.h"

@implementation NSObject (JSMJParse)

+ (id)JSMJParse:(id)responseObj
{
    if ([responseObj isKindOfClass:[NSArray class]])
    {
        return [self mj_objectArrayWithKeyValuesArray:responseObj];
    }
    if ([responseObj isKindOfClass:[NSDictionary class]])
    {
        return [self mj_objectWithKeyValues:responseObj];
    }
    
    return responseObj;
}


@end
