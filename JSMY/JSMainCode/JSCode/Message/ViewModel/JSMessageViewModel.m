//
//  JSMessageViewModel.m
//  JSMY
//
//  Created by Stave on 2017/7/2.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSMessageViewModel.h"
#import "JSMessageModel.h"

@implementation JSMessageViewModel

- (void)setViewModel:(JSMessageModel *)viewModel
{
    _viewModel = viewModel;
    
    /*! 计算frame */
    [self setupCellFrame];
}

- (void)setupCellFrame
{
    /*! 标题Frame */
    CGFloat titleX = JSStatusCellMargin;
    CGFloat titleY = titleX;
    CGFloat titleW = JS_SCREEN_WIDTH - 2 * JSStatusCellMargin;
    CGSize titleSize = [JSAutoSizeWithWH JS_AutoSizeOfHeghtWithText:_viewModel.titleLabel font:[UIFont boldSystemFontOfSize:15] width:titleW];
    _titleLabelFrame = (CGRect){{titleX, titleY}, {titleSize.width, titleSize.height}};
    
    /*! 内容Frame */
    CGFloat contentLabelX = titleX;
    CGFloat contentLabelY = CGRectGetMaxY(_titleLabelFrame) + JSStatusCellMargin;
    CGFloat contentLabelW = JS_SCREEN_WIDTH - 2 * JSStatusCellMargin;
    CGSize contentLabelSize = [JSAutoSizeWithWH JS_AutoSizeOfHeghtWithText:_viewModel.contentLabel font:JS_FontSize(15) width:titleW];
    _contentLabelFrame = (CGRect){{contentLabelX, contentLabelY}, {contentLabelSize.width, contentLabelSize.height}};
    
    /*! 计算cell高度 */
    self.cellHeight = CGRectGetMaxY(_contentLabelFrame) + JSStatusCellMargin * 0.5;
}

@end
