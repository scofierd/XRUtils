//
//  UIApplication+CurrentVC.h
//  IOSCoderTemplate
//
//  Created by 以往XR on 2019/4/11.
//  Copyright © 2019 XR  2205873638@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (CurrentVC)

+ (UIViewController *)rootViewController;
+ (UIViewController *)currentViewController;

@end

NS_ASSUME_NONNULL_END
