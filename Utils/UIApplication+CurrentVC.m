//
//  UIApplication+CurrentVC.m
//  IOSCoderTemplate
//
//  Created by 以往XR on 2019/4/11.
//  Copyright © 2019 XR  2205873638@qq.com. All rights reserved.
//

#import "UIApplication+CurrentVC.h"

@implementation UIApplication (CurrentVC)

+ (UIViewController *)rootViewController {
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    return window.rootViewController;
}

+ (UIViewController *)currentViewController {
    
    UIViewController *vc = [UIApplication rootViewController];
    while (1) {
        if ([vc isKindOfClass:[UITabBarController class]]) {
            vc = ((UITabBarController*)vc).selectedViewController;
        }
        
        if ([vc isKindOfClass:[UINavigationController class]]) {
            vc = ((UINavigationController*)vc).visibleViewController;
        }
        
        if (vc.presentedViewController) {
            vc = vc.presentedViewController;
        }else{
            break;
        }
    }
    
    return vc;
}

@end
