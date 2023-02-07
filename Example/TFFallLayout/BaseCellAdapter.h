//
//  BaseCellAdapter.h
//  TFFallLayout
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//
#import <Foundation/Foundation.h>
#ifndef BaseCellAdapter_h
#define BaseCellAdapter_h

@protocol BaseCellAdapter <NSObject>

- (CGFloat)cellHeight;

- (CGFloat)cellWidth;

@end
#endif /* BaseCellAdapter_h */
