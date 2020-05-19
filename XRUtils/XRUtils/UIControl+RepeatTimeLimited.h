//
//  UIControl+RepeatTimeLimited.h
//  XCSportsRecipe
//
//  Created by mac on 2018/6/7.
//  Copyright © 2018年 Itachi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (RepeatTimeLimited)

/**
 * 重复点击的时间限制
 */
@property (nonatomic, assign) NSTimeInterval timeLimited;

@end
