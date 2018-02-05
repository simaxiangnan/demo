//
//  JSMessageViewController.m
//  JSMY
//
//  Created by wuwu on 2017/6/28.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSMessageViewController.h"
#import "JSMessageViewModel.h"
#import "JSMessageModel.h"
#import "JSMessageViewCell.h"

@interface JSMessageViewController ()<UITableViewDelegate,UITableViewDataSource
>

@property (nonatomic, strong) UITableView                  *tableView;

@property (nonatomic, strong) NSMutableArray  *titlesArray;
@property (nonatomic, strong) NSMutableArray  *classNamesArray;
@property (nonatomic, strong) NSMutableArray  *contentsArray;

@property (nonatomic, strong) NSMutableArray  *dataArray;

/*！ viewModel:BAHomeViewModel */
@property (nonatomic, strong) NSMutableArray  *statusFrames;

@end

@implementation JSMessageViewController

- (NSMutableArray *)dataArray
{
    if (!_dataArray)
    {
        _dataArray = @[].mutableCopy;
    }
    return _dataArray;
}

- (NSMutableArray *)titlesArray
{
    if (!_titlesArray)
    {
        _titlesArray = @[].mutableCopy;
    }
    return _titlesArray;
}

- (NSMutableArray *)classNamesArray
{
    if (!_classNamesArray)
    {
        _classNamesArray = @[].mutableCopy;
    }
    return _classNamesArray;
}

- (NSMutableArray *)contentsArray
{
    if (!_contentsArray)
    {
        _contentsArray = @[].mutableCopy;
    }
    return _contentsArray;
}

- (NSMutableArray *)statusFrames
{
    if (!_statusFrames)
    {
        _statusFrames = @[].mutableCopy;
    }
    return _statusFrames;
}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"消息";
    self.view.backgroundColor = JSKit_Color_White;
}

- (UITableView *)tableView
{
    if (!_tableView)
    {
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorColor = [UIColor lightGrayColor];
        
        [self creatData];
        [self modelData];
        [self.view addSubview:_tableView];
        
        [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(UIEdgeInsetsMake(0 , 0, 0, 0));
        }];
        _tableView.tableFooterView = [[UIView alloc] init];
    }
    return _tableView;
}

- (void)creatData
{
    [self addCell:@"1、AFNetWorking的完美封装" content:@"封装AFN，实现简单的get和post请求，可以自定义请求头，可以解析json数据、xml数据、data数据，可以获取缓存数据。" class:@"DemoVC1"];
    [self addCell:@"2、清理缓存" content:@"清理网络请求缓存和图片缓存，可清理系统缓存！" class:@"DemoVC2"];
    [self addCell:@"3、BAButton" content:@"两种比较常用的获取倒计时验证码的样式！新增一种自定义警告框，可以点击屏幕消失！新增了一种跑马灯广告效果，希望能帮助部分用户！" class:@"DemoVC3"];
    [self addCell:@"4、友盟分享和友盟登陆的完美封装" content:@"包含：微博、微信、朋友圈、QQ、空间、短信的分享和登陆，可以使用默认列表，也可以自定义单个分享和登陆！" class:@"DemoVC4"];
    [self addCell:@"5、正则表达式最新封装" content:@"包含：手机号码、运营商类型(判断移动、联通、电信)、邮箱、数字、中英文、URL、身份证号码等！还可以文字筛选高亮显示！" class:@"DemoVC5"];
    [self addCell:@"6、本地通知最新完美封装" content:@"最近整理了下本地通知和极光推送，有很多坑都踩过了，刚刚整理出来的完美封装，肯定适合大部分场合，也可以用此封装写闹钟，也提醒事件，都可以！【刚添加了本地通知的跳转事件处理！】如果喜欢，请在git上点个星吧！" class:@"DemoVC6"];
    [self addCell:@"7、webView和WKWebView完美封装" content:@"webView和WKWebView的封装，简单的内置浏览器，有简单的功能，后期有新功能会加上！如果喜欢，请在git上点个星吧！" class:@"DemoVC7"];
    [self addCell:@"8、系统提醒和日历提醒" content:@"最近做了一个预约功能，有用到系统提醒和日历提醒，就写了这个demo！如果喜欢，请在git上点个星吧！" class:@"DemoVC8"];
    [self addCell:@"9、流式布局和线性布局库的使用" content:@"用流式布局和线性布局库MyLayout，写了一个collectionView，如果喜欢，请在git上点个星吧！" class:@"DemoVC9"];
    [self addCell:@"10、collectionView的简单使用" content:@"用View写的写了一个简单的collectionView，可随意添加到任何地方，如果喜欢，请在git上点个星吧！" class:@"DemoVC10"];
    [self addCell:@"11、collectionView的浮动布局" content:@"自适应宽高的collectionView，自定义layout，如果喜欢，请在git上点个星吧！" class:@"DemoVC11"];
    [self addCell:@"12、BAAlert 各种自定义弹框" content:@"各种自定义弹框，系统的、自定义的弹框，如果喜欢，请在git上点个星吧！" class:@"DemoVC12"];
    [self addCell:@"13、GCD入门" content:@"GCD入门学习，小白可以看，大神自行绕过！如果喜欢，请在git上点个星吧！" class:@"DemoVC13"];
    [self addCell:@"14、OC的set/get 方法的区别！" content:@"OC的set/get 方法的区别！，小白可以看，大神自行绕过！如果喜欢，请在git上点个星吧！" class:@"DemoVC14"];
}

- (void)addCell:(NSString *)title content:(NSString *)content class:(NSString *)className
{
    [self.titlesArray addObject:title];
    [self.classNamesArray addObject:className];
    [self.contentsArray  addObject:content];
}

- (void)modelData
{
    for (int i = 0; i < self.titlesArray.count; i ++)
    {
        JSMessageModel *model = [[JSMessageModel alloc] init];
        model.titleLabel = self.titlesArray[i];
        model.contentLabel = self.contentsArray[i];
        [self.dataArray addObject:model];
    }
    
    // 模型转换视图模型 BAHomeVCModel -> BAHomeViewModel
    NSMutableArray *statusF = [NSMutableArray array];
    for (JSMessageModel *model in self.dataArray)
    {
        JSMessageViewModel *subViewFrame = [[JSMessageViewModel alloc] init];
        subViewFrame.viewModel = model;
        [statusF addObject:subViewFrame];
    }
    [self.statusFrames addObjectsFromArray:statusF];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.statusFrames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 创建cell
    JSMessageViewCell *cell = [JSMessageViewCell cellWithTableView:tableView];
    // 获取DemoVC15_ViewModel模型
    JSMessageViewModel *subViewFrame = self.statusFrames[indexPath.row];
    // 给cell传递模型
    cell.subViewFrame = subViewFrame;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 获取ViewModel模型
    JSMessageViewModel *subViewFrame = self.statusFrames[indexPath.row];
    return subViewFrame.cellHeight;
}

#pragma mark - ***** 解决tableview的分割线短一截
- (void)viewDidLayoutSubviews
{
    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)])
    {
        [self.tableView setSeparatorInset:UIEdgeInsetsMake(0,0,0,0)];
    }
    
    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)])
    {
        [self.tableView setLayoutMargins:UIEdgeInsetsMake(0,0,0,0)];
    }
}

@end
