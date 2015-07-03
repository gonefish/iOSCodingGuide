//
//  CGAppDelegate.m
//  CodingGuide
//
//  Created by 钱国强 on 15/7/1.
//  Copyright (c) 2015年 Qian GuoQiang. All rights reserved.
//

// ------------
// 头文件import区
// ------------

#import "CGAppDelegate.h"

// ----------
// C/C++函数区
// ----------


// ------------------
// 类私有方法和属性实现区
// ------------------

@interface CGAppDelegate ()

// ----------------
// 内部property申明区
// ----------------

@property (nonatomic, strong) NSString *privateProperty;

@end


// --------
// 对象实现区
// --------

@implementation CGAppDelegate

// -------------------
// Public及重载父类方法区
// -------------------

#pragma mark - Public

+ (void)classMethodFoo
{
    
}

- (void)instanceMethodBar
{
    
}

// ---------
// 方法归类区A
// ---------

#pragma mark - UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

// ---------
// 方法归类区B
// ---------

#pragma mark - UINavigationControllerDelegate

// -----------
// 私有方法归类区
// -----------

#pragma mark - Private


@end
