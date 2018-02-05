//
//  JSMessageViewModel.h
//  JSMY
//
//  Created by Stave on 2017/7/2.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSBaseViewModel.h"

@class JSMessageModel;

@interface JSMessageViewModel : JSBaseViewModel

/*! model */
@property (nonatomic, strong) JSMessageModel  *viewModel;

/*! 标题Frame */
@property (nonatomic, assign) CGRect          titleLabelFrame;

/*! 内容Frame */
@property (nonatomic, assign) CGRect          contentLabelFrame;

/*! cell的高度 */
@property (nonatomic, assign) CGFloat         cellHeight;

@end
