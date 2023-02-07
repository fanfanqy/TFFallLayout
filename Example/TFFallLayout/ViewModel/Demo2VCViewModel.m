//
//  Demo2VCViewModel.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "Demo2VCViewModel.h"
#import "Demo2CollectionViewCell.h"
#import "Demo2CollectionViewCellAdapter.h"

#import "Demo2Model.h"

@implementation Demo2VCViewModel

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
        contentItem.cellClass = [Demo2CollectionViewCell class];
        contentItem.cellResponseBlock = cellResponseBlock;
        [items addObject:contentItem];
        
    }];
    
    TFFallLayoutSectionItem *section = [TFFallLayoutSectionItem new];
    section.sectionItems = items;
    TFFallLayoutRender *render = [[TFFallLayoutRender alloc]initWithAxis:TFFallLayoutRenderAxisHorizontal direction:TFFallLayoutRenderDirectionLeftToRight];
    section.render = render;
    return section;
    
}

- (void)handleCellResponseObject:(id<TFCollectionReusableViewItemProtocol>)object identifier:(NSString *)identifier
{
    if([object.model isKindOfClass:[Demo2Model class]]){
        Demo2Model *model = object.model;
        NSLog(@"cellResponseWithIdentifier:%@、object:%@",identifier,model);
        
    }
}

- (void)handleCellClickAtIndexPath:(NSIndexPath *)indexPath object:(id<TFCollectionReusableViewItemProtocol>)object
{
    NSLog(@"%@:%@",indexPath,object);
    
}


@end
