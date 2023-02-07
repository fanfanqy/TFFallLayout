//
//  BaseHeaderFooterCell.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "BaseHeaderFooterCell.h"

@implementation BaseHeaderFooterCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
        [self configConstraints];
    }
    return self;
    
}

- (void)setObject:(id<TFCollectionReusableViewItemProtocol>)object
{
    [super setObject:object];
    self.titleLabel.text = object.model;
    
}

- (void)setupUI
{
    [self.contentView addSubview:self.titleLabel];
}

- (void)configConstraints
{
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(20);
        make.centerY.equalTo(self.contentView);
        
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


@end
