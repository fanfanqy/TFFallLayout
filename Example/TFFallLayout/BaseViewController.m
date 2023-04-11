//
//  BaseViewController.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initView];
    [self initData];
    
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
    
}

- (TFFallLayoutAdaptor *)adaptor
{
    if(!_adaptor){
        _adaptor = [TFFallLayoutAdaptor new];
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
        _collectionView.backgroundColor = [UIColor clearColor];
    }
    return _collectionView;
}

@end
