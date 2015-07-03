//
//  CGAppDelegate.h
//  CodingGuide
//
//  所有编码规范与Coding Guidelines for Cocoa(https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/CodingGuidelines/CodingGuidelines.html#//apple_ref/doc/uid/10000146-SW1)兼容
//
//  Created by 钱国强 on 15/7/1.
//  Copyright (c) 2015年 Qian GuoQiang. All rights reserved.
//

// 头文件import区
#import <UIKit/UIKit.h>

// ----------
// 类申明区
// ----------

@class CGSampleViewController; // 类名要有前錣

// ----------
// 枚举类型定义
// ----------

typedef NS_ENUM(NSInteger, CodingGuide) {
    CodingGuideA,
    CodingGuideB
};


/**
 *  注释区
 */
@interface CGAppDelegate : UIResponder < // 实现多个协议时要换行
UIApplicationDelegate,
UINavigationControllerDelegate
>
// @interface AppDelegate : UIResponder <UIApplicationDelegate> 只有一个实现协议时不换行

// -------------
// Property申明区
// -------------

/**
 *  注释区
 */
@property (strong, nonatomic) UIWindow *window;


// ----------
// 类方法申明区
// ----------

/**
 *  注释区
 */
+ (void)classMethodFoo;

// -----------
// 实例方法申明区
// -----------

/**
 *  注释区
 */
- (void)instanceMethodBar;

@end

