//
//  CGSampleViewController.m
//  CodingGuide
//
//  Created by 钱国强 on 15/7/1.
//  Copyright (c) 2015年 Qian GuoQiang. All rights reserved.
//

#import "CGSampleViewController.h"

@interface CGSampleViewController ()

// 不添加空格的情况
// 紧挨小括号和中括号内侧
// 方法返回类型与方法名称

@property (nonatomic, strong) NSObject *newlineObject;

@end

@implementation CGSampleViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _newlineObject = [NSObject new]; // 不要在这里访问getter, setter
        
    }
    return self;
}

- (void)dealloc
{
    _newlineObject = nil; // 不要在这里访问getter, setter
}

#pragma mark - Private

- (void)comment
{
    // 1.平均10行有1行注释，欢迎更多注释
    // 2.写有用的注释，不要有注释的代码
}

- (void)newline
{
    // 多换行以增加代码可读性，不要在一行上写多个内容，这样对代码合并有好处，另外生成的diff也比较内容分辨。
    
    // Bad
    if (self.newlineObject) { self.newlineObject = [NSObject new];}
    
    // Good
    if (self.newlineObject) {
        self.newlineObject = [NSObject new];
    }
    
    // Bad
    UIAlertController *badAlertController = [UIAlertController alertControllerWithTitle:@"" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    
    // Good
    UIAlertController *goodAlertController = [UIAlertController alertControllerWithTitle:@""
                                                                                 message:@""
                                                                          preferredStyle:UIAlertControllerStyleAlert];
    
    // Or
    UIAlertController *otherGoodAlertController =
    [UIAlertController alertControllerWithTitle:@""
                                        message:@""
                                 preferredStyle:UIAlertControllerStyleAlert];
}

// 关键词和括号间加空格
- (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler
{
    
}

- (void)control
{
    // 除if( xxx ) return; 的用法，if必须加括号
    // 所有左括号应该和关联的表达式同一行，结尾换行
    // 早返回, 卫语句(建议)
    
    BOOL somethingIsBad = YES;
    NSObject *something = nil;
    
    if (somethingIsBad) return;
    
    if (something == nil) {
        // do stuff
    } else {
        // do other stuff
    }
}

- (void)block
{
    // 代码块的类型和名字之间加空格
    // 代码块定义尽可能的省略返回类型
    // 如果为空(void)，省略块定义中的参数
    // 代码块定义的参数应该有名字
    
    // As a local variable:
    // returnType (^blockName)(parameterTypes) = ^returnType(parameters) {...};
    
    // As a property:
    // @property (nonatomic, copy) returnType (^blockName)(parameterTypes);
    
    // As a method parameter:
    // - (void)someMethodThatTakesABlock:(returnType (^)(parameterTypes))blockName;
    
    // As an argument to a method call:
    // [someObject someMethodThatTakesABlock:^returnType (parameters) {...}];
    
    // As a typedef:
    // typedef returnType (^TypeName)(parameterTypes);
    // TypeName blockName = ^returnType(parameters) {...};
    
    // [How Do I Declare A Block in Objective-C?](http://fuckingblocksyntax.com/)
}

- (void)literal
{
    // 数组和字典对象文法内容两边使用一个空格
    // 字典文法中，键值和冒号之间不留空格，值和冒号之间使用一个空格
    
    NSArray *arrayLiteral = @[ @1, @2, @3 ];
    
    NSDictionary *dictionaryLiteral = @{ @"key" : @YES };
    
    // 更长或者更复杂的文法应该分成多行（可选以逗号结尾）
    
    NSArray *longArrayLiteral = @[@"Got some long string objects in here.",
                                  [NSObject new],
                                  @"Moar strings."];
    
    NSDictionary *longDictionaryLiteral = @{ @"this.key": @"corresponds to this value",
                                             @"otherKey": @"remoteData.payload",
                                             @"some": @"more",
                                             @"JSON": @"keys",
                                             @"and": @"stuff", };
    
}

- (void)deprecate
{
    // 优先使用高版本SDK提供的方法
    
    UIViewController *presentVC = [UIViewController new];
    
    if ([self respondsToSelector:@selector(presentViewController:animated:completion:)]) {
        [self presentViewController:presentVC
                           animated:YES
                         completion:nil];
    } else {
        [self presentModalViewController:presentVC
                                animated:YES];
    }
    
    // 这个例子中，如果从iOS 5开始支持的话，else的代码直接去掉
}

@end
