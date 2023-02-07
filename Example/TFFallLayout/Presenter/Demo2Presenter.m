//
//  Demo2Presenter.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "Demo2Presenter.h"
#import "Demo2ViewController.h"

@implementation Demo2Presenter

- (void)pushDemo2VC
{
    Demo2ViewController *vc = [Demo2ViewController new];
    [self.viewController.navigationController pushViewController:vc animated:YES];
    
}

@end
