//
//  TFFallLayoutStick.h
//  TFUIKit
//
//  Created by 黄楠 on 2019/12/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TFFallLayoutStick : NSObject

@property (nonatomic, assign, readonly) CGFloat offset;

- (instancetype)initWithOffset:(CGFloat)offset;

@end

NS_ASSUME_NONNULL_END
