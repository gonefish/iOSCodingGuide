//
//  NSObject+CodingGuide.h
//  CodingGuide
//
//  Created by 钱国强 on 15/7/3.
//  Copyright (c) 2015年 Qian GuoQiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (CodingGuide) // 扩展应该按照所提供的功能命名，不要将不同的功能混杂在一个扩展中

- (NSString *)cg_description; // 类别的方法名添加小写前錣

@end
