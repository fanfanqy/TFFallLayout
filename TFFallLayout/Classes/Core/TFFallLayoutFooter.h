//
//  TFFallLayoutFooter.h
//  TFUIKit
//
//  Created by 黄楠 on 2019/12/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TFFallLayoutFooter : NSObject

@property (nonatomic, assign, readonly) CGFloat dimension;

- (instancetype)initWithDimension:(CGFloat)dimension;

+ (instancetype)footerWithDimension:(CGFloat)dimension;

@end

NS_ASSUME_NONNULL_END
