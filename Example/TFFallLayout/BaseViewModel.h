//
//  BaseViewModel.h
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface BaseViewModel : NSObject<TFCollectionViewAdaptorDelegate,TFCollectionViewCellDelegate>

@property(nonatomic,weak)UIViewController *vc;

@property (nonatomic, strong) NSMutableArray *models;

- (TFFallLayoutSectionItem *)makeSectionWithRecord:(NSArray *)models;

- (NSArray<TFFallLayoutSectionItem *> *)generateItems;

// cell点击
- (void)handleCellClickAtIndexPath:(NSIndexPath *)indexPath object:(id<TFCollectionReusableViewItemProtocol>)object;

// cell子试图产生的数据
- (void)handleCellResponseObject:(id<TFCollectionReusableViewItemProtocol>)object identifier:(NSString *)identifier;

@end


