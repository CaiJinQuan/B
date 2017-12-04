//
//  BViewController.m
//  B
//
//  Created by zhangjikuan on 2017/12/4.
//  Copyright © 2017年 zhangjikuan. All rights reserved.
//

#import "BViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>
@interface BViewController ()
@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation BViewController
- (instancetype)initWithContentText:(NSString *)contentText
{
    self = [super init];
    if (self) {
        self.contentLabel.text  =  contentText;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.contentLabel];
    
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self.contentLabel sizeToFit];
    [self.contentLabel centerEqualToView:self.view];
}


#pragma mark - setters and getters

- (UILabel *)contentLabel {
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor blueColor];
    }
    return _contentLabel;
}

@end
