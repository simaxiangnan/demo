//
//  NetWorkTool.h
//  WiseCity
//
//  Created by M on 16/9/12.
//  Copyright © 2016年 yangbaohua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface NetWorkTool : NSObject<NSCopying>

+ (instancetype)sharedNetworkTool;

// GET
-(void)GET:(NSString *)URLString paraments:(NSDictionary *)paramenters success:(void (^)(id responseObject)) success failure:(void (^)(NSError *error))failure;

// POST
-(void)POST:(NSString *)URLString paraments:(NSDictionary *)paramenters success:(void (^)(id responseObject)) success failure:(void (^)(NSError *error))failure;

@end
