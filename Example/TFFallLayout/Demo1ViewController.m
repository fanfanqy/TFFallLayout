//
//  Demo1ViewController.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "Demo1ViewController.h"
#import "DemoModel.h"
#import "Demo1VCViewModel.h"

@interface Demo1ViewController ()

@property (nonatomic, strong) Demo1VCViewModel *viewModel;

@end

@implementation Demo1ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self reloadData];
    
}

- (void)reloadData
{
    self.adaptor.items = [self.viewModel generateItems];
    [self.collectionView reloadData];
}

- (void)initView
{
    [super initView];

}

- (void)initData
{
    DemoModel *model1 = [DemoModel new];
    model1.title1 = @"按钮1";
    model1.title2 = @"按钮2";
    [self.viewModel.models addObject:model1];
    
    DemoModel *model2 = [DemoModel new];
    model2.title1 = @"按钮3";
    model2.title2 = @"按钮4";
    [self.viewModel.models addObject:model2];
    
    self.adaptor.delegate = self.viewModel;
    
}

#pragma mark 数据&容器&试图
- (Demo1VCViewModel *)viewModel
{
    if(!_viewModel){
        _viewModel = [Demo1VCViewModel new];
        _viewModel.vc = self;
    }
    return _viewModel;
}

@end
