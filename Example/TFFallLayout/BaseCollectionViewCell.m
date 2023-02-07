//
//  BaseCollectionViewCell.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "BaseCollectionViewCell.h"
#import "BaseCellAdapter.h"

@implementation BaseCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
        [self configConstraints];
    }
    return self;
    
}

- (void)setupUI
{
    
}

- (void)configConstraints
{
    
}

+ (CGSize)collectionView:(UICollectionView *)collectionView sizeForItem:(id<TFCollectionReusableViewItemProtocol>)object {
    id<BaseCellAdapter> item = object.model;
    return CGSizeMake(item.cellWidth,ceilf(item.cellHeight));
}

@end
