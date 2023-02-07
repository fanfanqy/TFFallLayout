//
//  TFCollectionViewCell.h
//
//  Created by ZhangJun on 2018/10/25.
//  Copyright © 2018 JingLing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TFCollectionReusableViewItem.h"



@class TFCollectionViewCell;
@protocol TFCollectionViewCellDelegate <NSObject>

@optional
- (void)collectionViewCell:(TFCollectionViewCell *)cell didTappedView:(UIView *)view viewIdentifier:(NSString *)identifier cellObject:(id<TFCollectionReusableViewItemProtocol>)object;

@end


@interface TFCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) id<TFCollectionReusableViewItemProtocol> object;

+ (CGSize)collectionView:(nullable UICollectionView *)collectionView sizeForItem:(id<TFCollectionReusableViewItemProtocol>)object;

@end


