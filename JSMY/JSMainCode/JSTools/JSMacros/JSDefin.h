//
//  JSDefin.h
//  JSMY
//
//  Created by wuwu on 2017/6/29.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#ifndef JSDefin_h
#define JSDefin_h


#pragma mark - ***** AppDelegate

/*! 字体 */
#define JS_FontSize(fontSize) [UIFont systemFontOfSize:fontSize]

/*! Loading */
#define JS_Loading @"Loading..."

/*! 用safari打开URL */
#define JS_OpenUrl(urlStr) [JSSharedApplication openURL:[NSURL URLWithString:urlStr]]

/*! 复制文字内容 */
#define JS_CopyContent(content) [[UIPasteboard generalPasteboard] setString:content]

/*! 随机数据 */
#define JS_RandomData arc4random_uniform(5)

/*! weakSelf */
#define JS_WEAKSELF typeof(self) __weak weakSelf = self
#define JS_WeakSelf(type)  __weak typeof(type) weak##type = type;

/*! strongSelf */
#define JS_StrongSelf(type)  __strong typeof(type) type = weak##type;

/*! 通知 */
#define JS_NotiCenter [NSNotificationCenter defaultCenter]

#define JS_UserDefault [NSUserDefaults standardUserDefaults]

/*! 图片 */
#define JS_ImageName(imageName) [UIImage imageNamed:imageName]

/*! 获取图片资源 */
#define JS_GetImage(imageName) [UIImage imageNamed:[NSString stringWithFormat:@"%@",imageName]]

/*! 定义 UIImage 对象 */
#define JS_ImageFromBundle(fileName) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:A ofType:nil]]

/*! 获取当前语言 */
#define JS_CurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])


#pragma mark - 通知类
#define  JSNotioKey_LoginFinish   @"JSNotioKey_LoginFinish"


/*! 其他 */
#pragma mark - ***** 应用内相关设置
#define JS_placeHolder_Image @"placeHolder"

/*! 警告框-一个按钮【VC】 */
#define JS_SHOW_ALERT(title, msg)  UIAlertController *alert = [UIAlertController alertControllerWithTitle:title  message:msg preferredStyle:UIAlertControllerStyleAlert];\
[alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {\
BALog(@"你点击了确定按钮！");\
}]];\
[self presentViewController:alert animated:YES completion:nil];\

/*! 警告框-一个按钮【View】 */
#define JS_AlertAtView(msg) [[[UIAlertView alloc] initWithTitle:@"温馨提示：" message:msg delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil] show];


#pragma mark - ***** 判断参数是否为空

/*! 判断字符串是否为空 */
#define kStringIsEmpty(str) ([str isKindOfClass:[NSNull class]] || str == nil || [str length] < 1 ? YES : NO )

/*! 判断数组是否为空 */
#define kArrayIsEmpty(array) (array == nil || [array isKindOfClass:[NSNull class]] || array.count == 0)

/*! 判断字典是否为空 */
#define kDictIsEmpty(dic) (dic == nil || [dic isKindOfClass:[NSNull class]] || dic.allKeys == 0)

/*! 判断是否是空对象 */
#define kObjectIsEmpty(_object) (_object == nil \
|| [_object isKindOfClass:[NSNull class]] \
|| ([_object respondsToSelector:@selector(length)] && [(NSData *)_object length] == 0) \
|| ([_object respondsToSelector:@selector(count)] && [(NSArray *)_object count] == 0))

#endif /* JSDefin_h */
