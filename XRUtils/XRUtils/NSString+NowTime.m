//
//  NSString+NowTime.m
//  IOSCoderTemplate
//
//  Created by 以往XR on 2019/4/11.
//  Copyright © 2019 XR  2205873638@qq.com. All rights reserved.
//

#import "NSString+NowTime.h"

@implementation NSString (NowTime)

+ (NSString *)getNowTimeDate {
    
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
//
//    [formatter setDateStyle:NSDateFormatterMediumStyle];
//
//    [formatter setTimeStyle:NSDateFormatterShortStyle];
//
//    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss SSS"]; // ----------设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
//
//    //设置时区,这个对于时间的处理有时很重要
//
//    NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];
//
//    [formatter setTimeZone:timeZone];
//
//    NSDate *datenow = [NSDate date];//现在时间,你可以输出来看下是什么格式
//
//    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]*1000];
    
    NSDate *date = [NSDate date];
    NSDateFormatter *format1 = [[NSDateFormatter alloc] init];
    [format1 setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
    NSString *timeDate = [format1 stringFromDate:date];
    
    return timeDate;
    
}

+ (NSString *)getNowTimestamp {
    NSDate *datenow = [NSDate date];
    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]*1000];
    
    return timeSp;
    
}


@end
