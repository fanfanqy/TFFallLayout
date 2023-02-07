//
//  DemoCollectionViewCellAdapter.h
//  TFFallLayout
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "BaseCellAdapter.h"
#ifndef DemoCollectionViewCellAdapter_h
#define DemoCollectionViewCellAdapter_h


@protocol DemoCollectionViewCellAdapter <NSObject,BaseCellAdapter>

- (NSString *)btnTitle1;

- (NSString *)btnTitle2;

@end

#endif /* DemoCollectionViewCellAdapter_h */
