//
//  TFViewController.m
//  TFFallLayout
//
//  Created by fanfanqy on 02/06/2023.
//  Copyright (c) 2023 fanfanqy. All rights reserved.
//

#import "TFViewController.h"

#import "DemoModel.h"
#import "ExampleCollectionViewCell.h"
#import "BaseHeaderFooterCell.h"
#import "Demo1Presenter.h"
#import "Demo2Presenter.h"

@interface TFViewController ()<TFCollectionViewAdaptorDelegate,TFCollectionViewCellDelegate>
@property (nonatomic, strong) TFFallLayoutAdaptor       *adaptor;
@property (nonatomic, strong) UICollectionView   *collectionView;
@property (nonatomic, strong) NSMutableArray<DemoModel *> *models;

@property (nonatomic, strong) Demo1Presenter *p1;
@property (nonatomic, strong) Demo2Presenter *p2;

@end

@implementation TFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initView];
    [self initData];
    self.adaptor.items = [self generateItems];
    [self.collectionView reloadData];
    
}

- (void)initView
{
    [self.view addSubview:self.collectionView];
    [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self.view);
        make.top.equalTo(self.view).offset([UIApplication sharedApplication].statusBarFrame.size.height + 44);
        
    }];
    
    self.adaptor.collectionView = self.collectionView;
    
}

- (void)initData
{
    self.models = [NSMutableArray array];
    
    DemoModel *model1 = [DemoModel new];
    model1.title1 = @"普通试图";
    [self.models addObject:model1];
    
    DemoModel *model2 = [DemoModel new];
    model2.title1 = @"复杂布局试图";
    [self.models addObject:model2];
    
}

// 获取所有cell
- (NSArray<TFFallLayoutSectionItem *> *)generateItems {
    NSMutableArray *array = [NSMutableArray array];
    [array addObject:[self makeSectionWithRecord:self.models]];
    return array;
}

- (TFFallLayoutSectionItem *)makeSectionWithRecord:(NSArray<DemoModel *> *)models{
    
    // 有数据
    NSMutableArray *items = [NSMutableArray array];
    [models enumerateObjectsUsingBlock:^(DemoModel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        TFCollectionReusableViewItem *contentItem = [TFCollectionReusableViewItem new];
        contentItem.model = obj;
        contentItem.cellResponse = self;
        contentItem.cellSize = [NSValue valueWithCGSize:CGSizeMake(self.view.frame.size.width, 50)];
        contentItem.cellClass = [ExampleCollectionViewCell class];
        [items addObject:contentItem];
        
    }];
    
    TFFallLayoutSectionItem *section = [TFFallLayoutSectionItem new];
    section.sectionItems = items;
    {
        TFFallEmptyHeaderFooterItem *headerFooterItem = [TFFallEmptyHeaderFooterItem new];
        headerFooterItem.backgroundColor = [UIColor redColor];
        headerFooterItem.cellClass = [BaseHeaderFooterCell class];
        headerFooterItem.model = @"头部";
        section.sectionHeaderDimension = 30;
        section.headerItem = headerFooterItem;
    }
    
    {
        TFFallEmptyHeaderFooterItem *headerFooterItem = [TFFallEmptyHeaderFooterItem new];
        headerFooterItem.backgroundColor = [UIColor greenColor];
        headerFooterItem.cellClass = [BaseHeaderFooterCell class];
        headerFooterItem.model = @"尾部";
        section.sectionFooterDimension = 30;
        section.footerItem = headerFooterItem;
    }
    return section;
    
}


- (TFFallLayoutAdaptor *)adaptor
{
    if(!_adaptor){
        _adaptor = [TFFallLayoutAdaptor new];
        _adaptor.delegate = self;
    }
    return _adaptor;
}

- (UICollectionView *)collectionView
{
    if(!_collectionView){
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:[TFFallLayout new]];
        _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.delegate = self.adaptor;
        _collectionView.dataSource = self.adaptor;
    }
    return _collectionView;
}

#pragma mark - TFCollectionViewAdaptorDelegate
// 选中cell
- (void)collectionView:(UICollectionView *)collectionView didSelectObject:(id<TFCollectionReusableViewItemProtocol>)object rowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击Cell：%ld:%ld，原数据：%@",indexPath.section,indexPath.item,object);
    if([object.model isKindOfClass:[DemoModel class]]){
        if(indexPath.section == 0) {
            if(indexPath.item == 0) {
                self.p1 = [Demo1Presenter new];
                self.p1.viewController = self;
                [self.p1 pushDemo1VC];
                
            }else {
                self.p2 = [Demo2Presenter new];
                self.p2.viewController = self;
                [self.p2 pushDemo2VC];
                
            }
            
        }
    }
}




@end
