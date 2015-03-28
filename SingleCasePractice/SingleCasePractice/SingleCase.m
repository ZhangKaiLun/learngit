//
//  SingleCase.m
//  SingleCasePractice
//
//  Created by Zkl on 15/3/27.
//  Copyright (c) 2015年 Zkl. All rights reserved.
//

#import "SingleCase.h"

static SingleCase *singleCase = nil;

@implementation SingleCase
//创建单例
+ (SingleCase *)sharedSingleCase {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        singleCase = [[super allocWithZone:NULL] init];
        
    });
    
    return singleCase;
}

//避免该方法创建对象
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [SingleCase sharedSingleCase];
}
//避免别人copy
- (id)copyWithZone:(NSZone *)zone{
    return [SingleCase sharedSingleCase];
}
//避免别人发送mutablecopy
- (id)mutableCopyWithZone:(NSZone *)zone {
    
    return [SingleCase sharedSingleCase];
}

//保证引用计数永远最大，不会被减到1
- (NSUInteger)retainCount {
    return NSUIntegerMax;
}

- (oneway void)release {
    
}

- (instancetype)autorelease {
    return self;
}

- (instancetype)retain {
    return self;
}

- (void)dealloc {
    [super dealloc];
}




@end

