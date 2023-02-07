//
//  TFCollectionViewBaseAdaptor.h
//
//  Created by ZhangJun on 2018/10/25.
//  Copyright © 2018 JingLing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TFCollectionViewAdaptorDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface TFCollectionViewBaseAdaptor : NSObject <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, weak) UICollectionView *collectionView;
@property (nonatomic, weak) id<TFCollectionViewAdaptorDelegate> delegate;
@property (nonatomic, strong) NSArray<id<TFCollectionViewSectionItemProtocol>> *items;

@end

NS_ASSUME_NONNULL_END
