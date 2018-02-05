//
//  JSMessageViewCell.m
//  JSMY
//
//  Created by Stave on 2017/7/2.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSMessageViewCell.h"
#import "JSMessageModel.h"
#import "JSMessageViewModel.h"

@interface JSMessageViewCell()

@property (nonatomic, strong) UILabel * titleLabel;
@property (nonatomic, strong) UILabel * contentLabel;

@end

@implementation JSMessageViewCell

// 注意：cell是用initWithStyle初始化
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        // 添加所有子控件
        [self setUpAllChildView];
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// 添加所有子控件
- (void)setUpAllChildView
{
    _titleLabel                 = [[UILabel alloc] init];
    _titleLabel.font            = [UIFont boldSystemFontOfSize:15];
    
    _contentLabel               = [[UILabel alloc] init];
    _contentLabel.font          = JS_FontSize(14);
    _contentLabel.numberOfLines = 0;
    
    [self.contentView js_AddSubViewsWithArray:@[_titleLabel, _contentLabel]];
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *cellID = @"JSMessageViewCell";
    id cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil)
    {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellID];
    }
    return cell;
}

/*
 问题：
 1.cell的高度应该提前计算出来
 2.cell的高度必须要先计算出每个子控件的frame，才能确定
 3.如果在cell的set方法计算子控件的位置，会比较耗性能
 
 解决方法：MVVM思想
 M:模型
 V:视图
 VM:视图模型（模型包装视图模型，模型+模型对应视图的frame）
 
 MVVM模式和MVC模式一样，主要目的是分离视图（View）和模型（Model），有几大优点
 1. 低耦合。视图（View）可以独立于Model变化和修改，一个ViewModel可以绑定到不同的"View"上，当View变化的时候Model可以不变，当Model变化的时候View也可以不变。
 2. 可重用性。你可以把一些视图逻辑放在一个ViewModel里面，让很多view重用这段视图逻辑。
 3. 独立开发。开发人员可以专注于业务逻辑和数据的开发（ViewModel），设计人员可以专注于页面设计，使用Expression Blend可以很容易设计界面并生成xaml代码。
 4. 可测试。界面素来是比较难于测试的，而现在测试可以针对ViewModel来写。
 */

- (void)setSubViewFrame:(JSMessageViewModel *)subViewFrame
{
    _subViewFrame = subViewFrame;
    
    // 设置frame
    [self setUpFrame];
    // 设置data
    [self setUpData];
}

- (void)setUpFrame
{
    _titleLabel.frame   = _subViewFrame.titleLabelFrame;
    _contentLabel.frame = _subViewFrame.contentLabelFrame;
}

- (void)setUpData
{
    JSMessageModel *model = _subViewFrame.viewModel;
    
    _titleLabel.text     = model.titleLabel;
    _contentLabel.text   = model.contentLabel;
}

@end
