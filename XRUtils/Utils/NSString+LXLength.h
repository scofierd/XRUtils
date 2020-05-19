//
//  NSString+LXLength.h
//  IOSCoderTemplate
//
//  Created by 以往XR on 2019/4/8.
//  Copyright © 2019 XR  2205873638@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (LXLength)

/**
 calulate the number of charactor.
 1 Chinese(including Chinese mark) = 2
 1 English or number = 1
 1 emoji = 4
 @return NSUInteger
 */
- (NSUInteger)charactorNumber;

/**
 calulate the number of charactor with designated NSStringEncoding.
 @param encoding NSStringEncoding
 @return NSUInteger
 */
- (NSUInteger)charactorNumberWithEncoding:(NSStringEncoding)encoding;

/**
 calulate the number of charactor.
 1 Chinese(not including Chinese mark) = 2
 1 other charactor = 1
 @return NSUInteger
 */
- (NSUInteger)charactorNumberForChineseSpecial;

@end

NS_ASSUME_NONNULL_END
