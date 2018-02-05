//
//  JSMessageViewCell.h
//  JSMY
//
//  Created by Stave on 2017/7/2.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JSMessageViewModel;

@interface JSMessageViewCell : UITableViewCell

@property (nonatomic, strong) JSMessageViewModel *subViewFrame;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
