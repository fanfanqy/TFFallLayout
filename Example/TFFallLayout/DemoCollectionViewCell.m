//
//  DemoCollectionViewCell.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/6.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "DemoCollectionViewCell.h"
#import "DemoCollectionViewCellAdapter.h"

@implementation DemoCollectionViewCell

- (void)setObject:(id<TFCollectionReusableViewItemProtocol>)object {
    [super setObject:object];
    id<DemoCollectionViewCellAdapter> item = object.model;
    [self.btn1 setTitle:item.btnTitle1 forState:UIControlStateNormal];
    [self.btn2 setTitle:item.btnTitle2 forState:UIControlStateNormal];
    
}

- (void)setupUI {
    [self.contentView addSubview:self.btn1];
    [self.contentView addSubview:self.btn2];
    [self.contentView addSubview:self.lineView];
}

- (void)configConstraints{
    [self.btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(20);
        make.centerY.equalTo(self.contentView);
        make.width.equalTo(@80);
        make.height.equalTo(@30);
        
    }];
    [self.btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView).offset(-20);
        make.centerY.equalTo(self.contentView);
        make.width.equalTo(@80);
        make.height.equalTo(@30);
        
    }];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(15);
        make.right.equalTo(self.contentView).offset(-15);
        make.bottom.equalTo(self.contentView);
        make.height.equalTo(@1);
        
    }];
}

#pragma mark - 事件
- (void)didClickBtn1:(UIButton *)btn {
    id<DemoCollectionViewCellAdapter> item = self.object.model;
    if (self.object.cellResponse && [self.object.cellResponse respondsToSelector:@selector(collectionViewCell:didTappedView:viewIdentifier:cellObject:)]) {
        [self.object.cellResponse collectionViewCell:self didTappedView:self viewIdentifier:item.btnTitle1 cellObject:self.object];
    }
    if(self.object.cellResponseBlock){
        self.object.cellResponseBlock(item.btnTitle1,self.object);
        
    }
    
}

- (void)didClickBtn2:(UIButton *)btn {
    id<DemoCollectionViewCellAdapter> item = self.object.model;
    if (self.object.cellResponse && [self.object.cellResponse respondsToSelector:@selector(collectionViewCell:didTappedView:viewIdentifier:cellObject:)]) {
        [self.object.cellResponse collectionViewCell:self didTappedView:self viewIdentifier:item.btnTitle2 cellObject:self.object];
    }
    if(self.object.cellResponseBlock){
        self.object.cellResponseBlock(item.btnTitle2,self.object);
        
    }
}

#pragma mark - 懒加载
- (UIButton *)btn1 {
    if (!_btn1) {
        _btn1 = [UIButton new];
        _btn1.backgroundColor = [UIColor redColor];
        [_btn1 addTarget:self action:@selector(didClickBtn1:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn1;
}

- (UIButton *)btn2 {
    if (!_btn2) {
        _btn2 = [UIButton new];
        _btn2.backgroundColor = [UIColor greenColor];
        [_btn2 addTarget:self action:@selector(didClickBtn2:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn2;
}

- (UIView *)lineView
{
    if(!_lineView){
        _lineView = [UIView new];
        _lineView.backgroundColor = [UIColor lightGrayColor];
    }
    return _lineView;
}

@end
