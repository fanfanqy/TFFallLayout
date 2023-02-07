//
//  Demo1State.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "Demo1VCViewModel.h"
#import "DemoCollectionViewCell.h"
#import "DemoCollectionViewCellAdapter.h"

#import "DemoModel.h"

@implementation Demo1VCViewModel


- (TFFallLayoutSectionItem *)makeSectionWithRecord:(NSArray *)models
{
    CellResponseBlock cellResponseBlock = ^(NSString * _Nonnull identifier, id  _Nonnull object) {
        [self handleCellResponseObject:object identifier:identifier];
        
    };
    
    // 有数据
    NSMutableArray *items = [NSMutableArray array];
    [models enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        TFCollectionReusableViewItem *contentItem = [TFCollectionReusableViewItem new];
        contentItem.model = obj;
        contentItem.cellClass = [DemoCollectionViewCell class];
//        contentItem.cellResponse = self;
        contentItem.cellResponseBlock = cellResponseBlock;
        [items addObject:contentItem];
        
    }];
    
    TFFallLayoutSectionItem *section = [TFFallLayoutSectionItem new];
    section.sectionItems = items;
    return section;
}

- (void)handleCellResponseObject:(id<TFCollectionReusableViewItemProtocol>)object identifier:(NSString *)identifier
{
    if([object.model isKindOfClass:[DemoModel class]]){
        DemoModel *model = object.model;
        NSLog(@"cellResponseWithIdentifier:%@、object:%@",identifier,model);
        
    }
}

- (void)handleCellClickAtIndexPath:(NSIndexPath *)indexPath object:(id<TFCollectionReusableViewItemProtocol>)object
{
    NSLog(@"%@:%@",indexPath,object);
    
}

@end
