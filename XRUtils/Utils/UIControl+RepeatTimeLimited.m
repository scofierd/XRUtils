//
//  UIControl+RepeatTimeLimited.m
//  XCSportsRecipe
//
//  Created by mac on 2018/6/7.
//  Copyright © 2018年 Itachi. All rights reserved.
//

#import "UIControl+RepeatTimeLimited.h"
#import <objc/runtime.h>

static const char *UIControl_timeLimited = "UIControl_timeLimited";
static const char *UIControl_ignoreEvent = "UIControl_ignoreEvent";

@interface UIControl (RepeatTimeLimited)

@property (nonatomic, assign) BOOL xr_ignoreEvent;

@end



@implementation UIControl (RepeatTimeLimited)

+ (void)load {
    Method oldMethod = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method newMethod = class_getInstanceMethod(self, @selector(xr_sendAction:to:forEvent:));
    method_exchangeImplementations(oldMethod, newMethod);
}

- (void)xr_sendAction:(SEL)selector to:(id)target forEvent:(UIEvent*)event{
    if (self.xr_ignoreEvent) return;
    
    if (self.timeLimited > 0) {
        self.fy_ignoreEvent = YES;
        [self performSelector:@selector(setFy_ignoreEvent:) withObject:@(NO) afterDelay:self.timeLimited];
    }
    
    [self xr_sendAction:selector to:target forEvent:event];
}

#pragma mark - set && get

- (NSTimeInterval)timeLimited {
    return [objc_getAssociatedObject(self, UIControl_timeLimited) doubleValue];
}

- (void)setTimeLimited:(NSTimeInterval)timeLimited {
    objc_setAssociatedObject(self, UIControl_timeLimited, @(timeLimited), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)xr_ignoreEvent{
    return [objc_getAssociatedObject(self, UIControl_ignoreEvent) boolValue];
}

- (void)setFy_ignoreEvent:(BOOL)fy_ignoreEvent{
    objc_setAssociatedObject(self, UIControl_ignoreEvent, @(fy_ignoreEvent), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
