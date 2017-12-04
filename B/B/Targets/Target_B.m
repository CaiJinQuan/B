 //
//  Target_A.m
//  B
//
//  Created by zhangjikuan on 2017/12/4.
//  Copyright © 2017年 zhangjikuan. All rights reserved.
//

#import "Target_B.h"
#import "BViewController.h"
@implementation Target_B
-(UIViewController *)Action_viewController:(NSDictionary *)params{
    BViewController *viewController = [[BViewController alloc] initWithContentText:params[@"contentText"]];
    
    return viewController;
}

@end
