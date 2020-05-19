//
//  NSNull+InternalNullExtention.m
//  SecondHand
//
//  Created by Richard on 14-5-30.
//  Copyright (c) 2014年 Dianchu. All rights reserved.
//

#import "NSNull+InternalNullExtention.h"

#define NSNullObjects @[@"",@0,@{},@[]]

@implementation NSNull (InternalNullExtention)

- (NSMethodSignature*)methodSignatureForSelector:(SEL)selector
{
    NSMethodSignature* signature = [super methodSignatureForSelector:selector];
    if (!signature) {
        for (NSObject *object in NSNullObjects) {
            signature = [object methodSignatureForSelector:selector];
            if (signature) {
                break;
            }
        }
    }
    return signature;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    SEL aSelector = [anInvocation selector];
    
    for (NSObject *object in NSNullObjects) {
        if ([object respondsToSelector:aSelector]) {
            [anInvocation invokeWithTarget:object];
            return;
        }
    }
    
    [self doesNotRecognizeSelector:aSelector];
}

@end
