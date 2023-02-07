//
//  Demo2ViewController.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "Demo2ViewController.h"

#import "Demo2Model.h"
#import "Demo2VCViewModel.h"

@interface Demo2ViewController ()

@property (nonatomic, strong) Demo2VCViewModel *viewModel;

@end

@implementation Demo2ViewController

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
    {
        Demo2Model *model = [Demo2Model new];
        model.title = @"Pending";
        model.imageName = @"home_oneClickShippingOrders";
        [self.viewModel.models addObject:model];
    }
    {
        Demo2Model *model = [Demo2Model new];
        model.title = @"Confirmed";
        model.imageName = @"home_oneClickShippingOrders";
        [self.viewModel.models addObject:model];
    }
    {
        Demo2Model *model = [Demo2Model new];
        model.title = @"Processing";
        model.imageName = @"home_oneClickShippingOrders";
        [self.viewModel.models addObject:model];
    }
    {
        Demo2Model *model = [Demo2Model new];
        model.title = @"Shipped";
        model.imageName = @"home_oneClickShippingOrders";
        [self.viewModel.models addObject:model];
    }
//    {
//        Demo2Model *model = [Demo2Model new];
//        model.title = @"Completed";
//        model.imageName = @"home_oneClickShippingOrders";
//        [self.viewModel.models addObject:model];
//    }
//    {
//        Demo2Model *model = [Demo2Model new];
//        model.title = @"Canceled";
//        model.imageName = @"home_oneClickShippingOrders";
//        [self.viewModel.models addObject:model];
//    }
    
    self.adaptor.delegate = self.viewModel;
    
}

#pragma mark 数据&容器&试图
- (Demo2VCViewModel *)viewModel
{
    if(!_viewModel){
        _viewModel = [Demo2VCViewModel new];
        _viewModel.vc = self;
    }
    return _viewModel;
}

@end
