//
//  JSMessageModel.h
//  JSMY
//
//  Created by Stave on 2017/7/2.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSBaseModel.h"

@interface JSMessageModel : JSBaseModel

/*! 标题 */
@property (nonatomic, copy) NSString *titleLabel;

/*! 内容 */
@property (nonatomic, copy) NSString *contentLabel;

@end
