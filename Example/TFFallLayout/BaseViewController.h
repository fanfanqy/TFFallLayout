//
//  BaseViewController.h
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface BaseViewController : UIViewController

@property (nonatomic, strong) TFFallLayoutAdaptor       *adaptor;
@property (nonatomic, strong) UICollectionView   *collectionView;

- (void)initView;

- (void)initData;

@end


