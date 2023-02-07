//
//  ExampleCollectionViewCell.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "ExampleCollectionViewCell.h"
#import "DemoModel.h"

@implementation ExampleCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
        [self configConstraints];
    }
    return self;
}

- (void)setObject:(id<TFCollectionReusableViewItemProtocol>)object {
    [super setObject:object];
    if(![object.model isKindOfClass:[DemoModel class]]) {
        return;
    }
    DemoModel *model = object.model;
    self.titleLabel.text = model.title1;
    
}

- (void)setupUI {
    [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.rightArrowImageView];
    [self.contentView addSubview:self.lineView];
    
}

- (void)configConstraints{
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(20);
        make.centerY.equalTo(self.contentView);
        
    }];
    
    [self.rightArrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView).offset(-20);
        make.centerY.equalTo(self.contentView);
        
    }];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(15);
        make.right.equalTo(self.contentView).offset(-15);
        make.bottom.equalTo(self.contentView);
        make.height.equalTo(@1);
        
    }];
}

- (UILabel *)titleLabel
{
    if(!_titleLabel){
        _titleLabel = [UILabel new];
        _titleLabel.font = [UIFont boldSystemFontOfSize:20];
        
    }
    return _titleLabel;
}

- (UIImageView *)rightArrowImageView
{
    if(!_rightArrowImageView){
        _rightArrowImageView = [UIImageView new];
        _rightArrowImageView.image = [UIImage imageNamed:@"guide-right-arrow"];
        
    }
    return _rightArrowImageView;
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
