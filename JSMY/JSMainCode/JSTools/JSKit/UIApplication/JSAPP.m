
//
//  JSAPP.m
//  JSMY
//
//  Created by Stave on 2017/7/1.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSAPP.h"

NSString *const BABundleName               = @"CFBundleName";
NSString *const BABundleVersion            = @"CFBundleVersion";
NSString *const BABundleShortVersionString = @"CFBundleShortVersionString";

static NSString *BAHasBeenOpened = @"BAHasBeenOpened";
static NSString *BAHasBeenOpenedForCurrentVersion = @"";

@implementation JSAPP

+ (void)onFirstStart:(void (^ _Nullable)(BOOL isFirstStart))block {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpened = [defaults boolForKey:BAHasBeenOpened];
    if (hasBeenOpened != true) {
        [defaults setBool:YES forKey:BAHasBeenOpened];
        [defaults synchronize];
    }
    
    block(!hasBeenOpened);
}

//+ (void)onFirstStartForCurrentVersion:(void (^ _Nullable)(BOOL isFirstStartForCurrentVersion))block {
//    JSHasBeenOpenedForCurrentVersion = [NSString stringWithFormat:@"%@%@", JSHasBeenOpened, JS_APP_Version];
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    BOOL hasBeenOpenedForCurrentVersion = [defaults boolForKey:BAHasBeenOpenedForCurrentVersion];
//    if (hasBeenOpenedForCurrentVersion != true) {
//        [defaults setBool:YES forKey:BAHasBeenOpenedForCurrentVersion];
//        [defaults synchronize];
//    }
//    
//    block(!hasBeenOpenedForCurrentVersion);
//}

+ (void)onFirstStartForVersion:(NSString * _Nonnull)version block:(void (^ _Nullable)(BOOL isFirstStartForCurrentVersion))block {
    NSString *STHasBeenOpenedForVersion = [NSString stringWithFormat:@"%@%@", BAHasBeenOpened, version];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpenedForVersion = [defaults boolForKey:BAHasBeenOpenedForCurrentVersion];
    if (hasBeenOpenedForVersion != true) {
        [defaults setBool:YES forKey:STHasBeenOpenedForVersion];
        [defaults synchronize];
    }
    
    block(!hasBeenOpenedForVersion);
}

+ (BOOL)isFirstStart {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpened = [defaults boolForKey:BAHasBeenOpened];
    if (hasBeenOpened != true) {
        return YES;
    } else {
        return NO;
    }
}

//+ (BOOL)isFirstStartForCurrentVersion {
//    BAHasBeenOpenedForCurrentVersion = [NSString stringWithFormat:@"%@%@", BAHasBeenOpened, BA_APP_Version];
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    BOOL hasBeenOpenedForCurrentVersion = [defaults boolForKey:BAHasBeenOpenedForCurrentVersion];
//    if (hasBeenOpenedForCurrentVersion != true) {
//        return YES;
//    } else {
//        return NO;
//    }
//}

+ (BOOL)isFirstStartForVersion:(NSString * _Nonnull)version {
    NSString *STHasBeenOpenedForVersion = [NSString stringWithFormat:@"%@%@", BAHasBeenOpened, version];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpenedForVersion = [defaults boolForKey:STHasBeenOpenedForVersion];
    if (hasBeenOpenedForVersion != true) {
        return YES;
    } else {
        return NO;
    }
}

@end
