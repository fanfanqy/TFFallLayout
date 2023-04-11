//
//  Demo2Model+Demo2CollectionViewCell.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "Demo2Model+Demo2CollectionViewCell.h"

@implementation Demo2Model (Demo2CollectionViewCell)

- (UIImage *)iconImage
{
    return [UIImage imageNamed:self.imageName];
}

- (NSString *)titleDes
{
    return self.title;
}

- (UIColor *)backgroundColor
{
    return [UIColor colorWithRed:(random()%255)/255.0 green:(random()%255)/255.0 blue:(random()%255)/255.0 alpha:1.0];
}

- (CGFloat)cellWidth
{
    return ([UIScreen mainScreen].bounds.size.width-10*2-10*2-10)/2.0;
}

- (CGFloat)cellHeight
{
    return random()%100+random()%50+60;
}

@end
