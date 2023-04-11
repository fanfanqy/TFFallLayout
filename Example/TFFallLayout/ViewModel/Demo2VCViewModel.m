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
#import "Demo2HeaderCell.h"
#import "Demo2SectionBackgroundCollectionViewCell.h"

@implementation Demo2VCViewModel

- (NSArray<TFFallLayoutSectionItem *> *)generateItems
{
    NSMutableArray *array = [NSMutableArray array];
    [array addObject:[self makeSection0WithRecord:self.models]];
    [array addObject:[self makeSection1WithRecord:self.models]];
    return array;
}

- (TFFallLayoutSectionItem *)makeSection0WithRecord:(NSArray *)models
{
    // 有数据
    NSMutableArray *items = [NSMutableArray array];
    [models enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        TFCollectionReusableViewItem *contentItem = [TFCollectionReusableViewItem new];
        contentItem.model = obj;
        contentItem.cellClass = [Demo2CollectionViewCell class];
        contentItem.cellResponse = self;
        [items addObject:contentItem];
        
    }];
    
    // Section Item
    TFFallLayoutSectionItem *section = [TFFallLayoutSectionItem new];
    section.sectionItems = items;
    
    // layout
    {
        section.columnCount = 2;
        section.columnSpacing = 10;
        section.itemSpacing = 10;
        section.sectionMargin = UIEdgeInsetsMake(10, 10, 10, 10);
        section.sectionPadding = UIEdgeInsetsMake(10, 10, 10, 10);
        
    }
    
    // backgroundItem：背景试图
    {
        TFCollectionReusableViewItem *backgroundItem = [TFCollectionReusableViewItem new];
        backgroundItem.model = nil;
        backgroundItem.cellClass = [Demo2SectionBackgroundCollectionViewCell class];
        backgroundItem.useNib = YES;
        section.backgroundItem = backgroundItem;
    }
    
    TFFallLayoutRender *render = [[TFFallLayoutRender alloc]initWithAxis:TFFallLayoutRenderAxisVertical direction:TFFallLayoutRenderDirectionLeftToRight];//TFFallLayoutRenderDirectionShortest
    section.render = render;
    return section;
    
}

- (TFFallLayoutSectionItem *)makeSection1WithRecord:(NSArray *)models
{

    CGFloat cellWidth = ([UIScreen mainScreen].bounds.size.width-10*2-10*2);
    CGFloat cellHeight = random()%100+random()%50+60;

    // 有数据
    NSMutableArray *items = [NSMutableArray array];
    [models enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        TFCollectionReusableViewItem *contentItem = [TFCollectionReusableViewItem new];
        contentItem.model = obj;
        contentItem.cellClass = [Demo2CollectionViewCell class];
        CGSize size = CGSizeMake(cellWidth, cellHeight);
        contentItem.cellSize = [NSValue valueWithCGSize:size];
        contentItem.cellResponse = self;
        [items addObject:contentItem];
        
    }];
    
    TFFallLayoutSectionItem *section = [TFFallLayoutSectionItem new];
    section.sectionItems = items;
    
    // layout
    {
        section.columnCount = 1;
        section.columnSpacing = 10;
        section.itemSpacing = 10;
        section.sectionMargin = UIEdgeInsetsMake(10, 10, 10, 10);
        section.sectionPadding = UIEdgeInsetsMake(10, 10, 10, 10);
        
    }
    
    // headerItem：header试图
    {

        section.sectionHeaderDimension = 100;
        section.headerZIndex = TFFallLayoutZIndexItem;
        
        TFFallLayoutStick *stick = [[TFFallLayoutStick alloc]initWithOffset:0];
        section.stick = stick;
        section.headerZIndex = TFFallLayoutZIndexTopOfItem;

        TFCollectionReusableViewItem *headerItem = [TFCollectionReusableViewItem new];
        headerItem.model = nil;
        headerItem.cellClass = [Demo2HeaderCell class];
        headerItem.useNib = YES;
        section.headerItem = headerItem;
    }
    
    // backgroundItem：背景试图
    {
        TFCollectionReusableViewItem *backgroundItem = [TFCollectionReusableViewItem new];
        backgroundItem.model = nil;
        backgroundItem.cellClass = [Demo2SectionBackgroundCollectionViewCell class];
        backgroundItem.useNib = YES;
        section.backgroundItem = backgroundItem;
    }
    
    TFFallLayoutRender *render = [[TFFallLayoutRender alloc]initWithAxis:TFFallLayoutRenderAxisVertical direction:TFFallLayoutRenderDirectionLeftToRight];//TFFallLayoutRenderDirectionShortest
    section.render = render;
    return section;
    
}



- (void)handleCellResponseObject:(id<TFCollectionReusableViewItemProtocol>)object identifier:(NSString *)identifier
{
    if([object.model isKindOfClass:[Demo2Model class]]){
        Demo2Model *model = object.model;
        NSLog(@"Cell上按钮点击：identifier:%@、object:%@",identifier,model);
    }
}

- (void)handleCellClickAtIndexPath:(NSIndexPath *)indexPath object:(id<TFCollectionReusableViewItemProtocol>)object
{
    NSLog(@"点击Cell：%ld:%ld，原数据：%@",indexPath.section,indexPath.item,object);
    
}


@end
