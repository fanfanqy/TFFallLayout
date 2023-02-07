//
//  DemoModel+DemoCollectionViewCell.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "DemoModel+DemoCollectionViewCell.h"

@implementation DemoModel (DemoCollectionViewCell)

- (NSString *)btnTitle1
{
    return self.title1;
}

- (NSString *)btnTitle2
{
    return self.title2;
}

- (CGFloat)cellWidth
{
    return [UIScreen mainScreen].bounds.size.width;
}

- (CGFloat)cellHeight
{
    return 100;
}


@end
