//
//  Demo2CollectionViewCell.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "Demo2CollectionViewCell.h"
#import "Demo2CollectionViewCellAdapter.h"

@implementation Demo2CollectionViewCell

- (void)setObject:(id<TFCollectionReusableViewItemProtocol>)object
{
    [super setObject:object];
    id<Demo2CollectionViewCellAdapter> item = object.model;
    _titleLabel.text = item.titleDes;
    _topImageView.image = item.iconImage;
    self.contentView.backgroundColor = item.backgroundColor;
    
}

- (void)setupUI
{
    [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.topImageView];
    
}

- (void)configConstraints
{
    [self.topImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.contentView).offset(10);
        
    }];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.topImageView.mas_bottom).offset(10);
        
    }];
}

- (UILabel *)titleLabel
{
    if(!_titleLabel){
        _titleLabel = [UILabel new];
        _titleLabel.font = [UIFont boldSystemFontOfSize:20];
        _titleLabel.textColor = [UIColor whiteColor];
        
    }
    return _titleLabel;
}

- (UIImageView *)topImageView
{
    if(!_topImageView){
        _topImageView = [UIImageView new];
        
    }
    return _topImageView;
}

@end
