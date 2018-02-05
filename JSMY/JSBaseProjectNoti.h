//
//  JSJSseProjectNoti.h
//  JSMY
//
//  Created by wuwu on 2017/6/29.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#ifndef JSJSseProjectNoti_h
#define JSJSseProjectNoti_h

/*! ************** 本项目框架使用说明 ************** */

#pragma mark - ***** 1、注释规范：

.h 文件：

属性名示例：
/*! 标题Frame */
@property (nonatomic, assign) CGRect          titleLabelFrame;

方法示例：
/*!
 *  是否使用自定义TabVC
 *
 *  @param is YES:使用，NO:使用RDVTabVC
 */
- (void)isJSTabVC:(BOOL)is;

.m 文件

属性名 同上;

功能分区：
一级：#pragma mark - *****
二级：#pragma mark
示例：
// #pragma mark - ***** 使用RDVTabJSrController 设置
// #pragma mark 初始化各个ViewController
//- (void)setupViewControllers
//{
//
//}

#pragma mark - ***** 2、项目简介 和 使用指南
#### 2.1 项目简介 <br>
**主要使用 MVC 设计模式，共分为三大类：** <br>

**1、JSApp** <br>
主要功能：AppDelegate 和 AppFrame  <AppDelegate中含有AppDelegate.h 和AppDelegate.m> 文件   < AppFrame 含有JSNavigationController导航栏和JSTabJSrController > <br>

**2、JSMainCode** <br>
- 2.1 JSCode   【主要代码】   如：Home(首页)、Message(消息)、Discover(发现)、Profile(我) <br>
- 2.2 JSBaseData【基类】      如：JSBAseVC、JSBaseView、JSBaseModel <br>
- 2.3 JSLib     【三方库】    如：不能用pod更新的三方库可以放在这里 <br>
- 2.4 JSTools   【工具类】    如：JSCategory(分类)、JSDataJSse(数据库)、JSMacros(宏)、JSNetManager(网络类)、JSTool(工具类) <br>
- 2.5 Resources 【资源】      如：字体、Plist、图片 <br>
- 2.6 Other     【其他代码】   如： <br>
- 2.7 JSCustom  【其他自定义】 如：暂时不知道放在哪里的自定义文件可放在这里 <br>

**3、Supporting Files** <br>
- 3.1这里暂时放置系统的文件，如：Main.storyboard、Assets.xcassets、Assets.xcassets、main.m <br>

#### 2.2 使用指南 <br>
使用的时候删除每个VC里面的JSVC文件夹即可！<br>
JSVC文件夹：是专门展示各级样例用法的文件夹！

#endif /* JSJSseProjectNoti_h */
