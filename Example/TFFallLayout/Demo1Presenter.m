//
//  Demo1Presenter.m
//  TFFallLayout_Example
//
//  Created by 范庆宇 on 2023/2/7.
//  Copyright © 2023 fanfanqy. All rights reserved.
//

#import "Demo1Presenter.h"
#import "Demo1ViewController.h"

@implementation Demo1Presenter

- (void)pushDemo1VC
{
    Demo1ViewController *vc = [Demo1ViewController new];
    [self.viewController.navigationController pushViewController:vc animated:YES];
    
}

@end
