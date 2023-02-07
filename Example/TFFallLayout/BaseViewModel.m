//
//  BaseViewModel.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "BaseViewModel.h"

@implementation BaseViewModel

- (NSMutableArray *)models
{
    if(!_models){
        _models = [NSMutableArray array];
    }
    return _models;
}

// 获取所有cell
- (NSArray<TFFallLayoutSectionItem *> *)generateItems {
    NSMutableArray *array = [NSMutableArray array];
    [array addObject:[self makeSectionWithRecord:self.models]];
    return array;
    
}

- (TFFallLayoutSectionItem *)makeSectionWithRecord:(NSArray *)models
{
    return nil;
}

- (void)handleCellClickAtIndexPath:(NSIndexPath *)indexPath object:(id<TFCollectionReusableViewItemProtocol>)object
{
    
}

- (void)handleCellResponseObject:(id<TFCollectionReusableViewItemProtocol>)object identifier:(NSString *)identifier
{
    
}

#pragma mark - TFCollectionViewAdaptorDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectObject:(id<TFCollectionReusableViewItemProtocol>)object rowAtIndexPath:(NSIndexPath *)indexPath
{
    [self handleCellClickAtIndexPath:indexPath object:object];
}

#pragma mark - TFCollectionViewAdaptorDelegate
- (void)collectionViewCell:(TFCollectionViewCell *)cell didTappedView:(UIView *)view viewIdentifier:(NSString *)identifier cellObject:(id<TFCollectionReusableViewItemProtocol>)object
{
    [self handleCellResponseObject:object identifier:identifier];
}


@end
