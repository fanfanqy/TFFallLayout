//
//  BaseCollectionViewCell.h
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import <TFFallLayout/TFFallLayout.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseCollectionViewCell : TFCollectionViewCell

- (void)setupUI;

- (void)configConstraints;

@end

NS_ASSUME_NONNULL_END
