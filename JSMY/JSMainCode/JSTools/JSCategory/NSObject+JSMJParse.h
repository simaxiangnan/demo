//
//  NSObject+JSMJParse.h
//  JSMY
//
//  Created by Stave on 2017/7/1.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJExtension.h"

@interface NSObject (JSMJParse)

/*
 MJExtension 解析数组和字典需要使用不同的方法.
 我们自己合并,用代码判断
 */

+ (id)JSMJParse:(id)responseObj;

@end
