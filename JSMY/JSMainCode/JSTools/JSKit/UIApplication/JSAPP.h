//
//  JSAPP.h
//  JSMY
//
//  Created by Stave on 2017/7/1.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import <Foundation/Foundation.h>

/*! 1、获取APP的名字 */
#define JS_APP_Name [[[NSBundle mainBundle] infoDictionary] objectForKey:JSBundleName]

/*! 2、获取APP的版本号 */
#define JS_APP_Version [[[NSBundle mainBundle] infoDictionary] objectForKey:JSBundleVersion]

/*! 3、获取App短式版本号 */
#define JS_APP_VersionShort [[[NSBundle mainBundle] infoDictionary] objectForKey:JSBundleShortVersionString]

/*! 4、使用JSLocalizedString检索本地化字符串 */
//#define JSLocalizedString(key, comment) \
//[[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:@"JSKit"]

#define JSLocalizedString(key, comment) NSLocalizedString(key, comment)


/*! 5、获取AppDelegate */
#define APPDelegate ((AppDelegate *)[[UIApplication sharedApplication] delegate])

/*! 6、获取sharedApplication */
#define JSSharedApplication [UIApplication sharedApplication]


// 7、获取temp
#define JS_PathTemp NSTemporaryDirectory()

// 8、获取沙盒 Document
#define JS_PathDocument [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]

// 9、获取沙盒 Cache
#define JS_PathCache [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]


FOUNDATION_EXPORT NSString * _Nonnull const JSBundleName;
FOUNDATION_EXPORT NSString * _Nonnull const JSBundleVersion;
FOUNDATION_EXPORT NSString * _Nonnull const JSBundleShortVersionString;

@interface JSAPP : NSObject

// TODO:下面的方法还没有验证

/**
 *  Executes a block on first start of the App for current version.
 *  Remember to execute UI instuctions on main thread
 *
 *  @param block The block to execute, returns isFirstStartForCurrentVersion
 */
//+ (void)onFirstStart:(void (^ _Nullable)(BOOL isFirstStart))block;

/**
 *  Executes a block on first start of the App.
 *  Remember to execute UI instuctions on main thread
 *
 *  @param block The block to execute, returns isFirstStart
 */
//+ (void)onFirstStartForCurrentVersion:(void (^ _Nullable)(BOOL isFirstStartForCurrentVersion))block;

/**
 *  Executes a block on first start of the App for current given version.
 *  Remember to execute UI instuctions on main thread
 *
 *  @param version Version to be checked
 *  @param block   The block to execute, returns isFirstStartForVersion
 */
+ (void)onFirstStartForVersion:(NSString * _Nonnull)version
                         block:(void (^ _Nullable)(BOOL isFirstStartForCurrentVersion))block;

/**
 *  Returns if is the first start of the App
 *
 *  @return Returns if is the first start of the App
 */
+ (BOOL)isFirstStart;

/**
 *  Returns if is the first start of the App for current version
 *
 *  @return Returns if is the first start of the App for current version
 */
+ (BOOL)isFirstStartForCurrentVersion;

/**
 *  Returns if is the first start of the App for the given version
 *
 *  @param version Version to be checked
 *
 *  @return Returns if is the first start of the App for the given version
 */
+ (BOOL)isFirstStartForVersion:(NSString * _Nonnull)version;

@end
