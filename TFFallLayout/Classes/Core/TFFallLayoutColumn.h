//
//  TFFallLayoutColumn.h
//  TFUIKit
//
//  Created by 黄楠 on 2019/12/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TFFallLayoutColumn : NSObject

@property (nonatomic, strong, readonly) NSArray<UICollectionViewLayoutAttributes *> *items;

- (CGFloat)width;
- (CGFloat)height;

- (void)push:(UICollectionViewLayoutAttributes *)item;

@end

NS_ASSUME_NONNULL_END
