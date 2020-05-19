//
//  UIColor+Utility.h
//  印象直播
//
//  Created by mac on 2017/8/20.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Utility)

/**
 获取RGB颜色
 
 @return UIcolor
 */
+(UIColor*)colorWithRed:(float)r Green:(float)g Blue:(float) b  Alpha:(float) alpha;

/**
 获取RGB颜色 alpha = 1

  @return UIcolor
 */
+(UIColor*)colorWithRed:(float)r Green:(float)g Blue:(float) b;

/**
 十六进制的颜色转换为UIColor，默认alpha = 1
 
 @param color 支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 @return UIcolor
 */
+ (UIColor *)colorWithHexString:(NSString *)color;

/**
 十六进制的颜色转换为UIColor

 @param color 支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 @param alpha  透明度
 @return UIcolor
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end




