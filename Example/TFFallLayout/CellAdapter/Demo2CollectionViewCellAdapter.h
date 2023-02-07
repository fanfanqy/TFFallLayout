//
//  Demo2CollectionViewCellAdapter.h
//  TFFallLayout
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//
#import "BaseCellAdapter.h"

#ifndef Demo2CollectionViewCellAdapter_h
#define Demo2CollectionViewCellAdapter_h

@protocol Demo2CollectionViewCellAdapter <NSObject,BaseCellAdapter>

- (UIImage *)iconImage;

- (NSString *)titleDes;

- (UIColor *)backgroundColor;

@end

#endif /* Demo2CollectionViewCellAdapter_h */
