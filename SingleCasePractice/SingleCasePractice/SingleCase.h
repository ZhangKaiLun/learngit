//
//  SingleCase.h
//  SingleCasePractice
//
//  Created by Zkl on 15/3/27.
//  Copyright (c) 2015年 Zkl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingleCase : NSObject<NSCopying, NSMutableCopying>

+ (SingleCase *)sharedSingleCase;

@end
