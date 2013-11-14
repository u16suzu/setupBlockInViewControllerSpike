//
//  CustomView.m
//  viewSpike
//
//  Created by u16suzu on 2013/11/14.
//  Copyright (c) 2013年 IGNIS LTD. All rights reserved.
//

#import "CustomView.h"


@interface CustomView ()

@end

@implementation CustomView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button setTitle:@"Btn" forState:UIControlStateNormal];
        button.frame = CGRectMake(0,0, 50,50);
        button.center = self.center;
        [button addTarget:self action:@selector(pushBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
    }
    return self;
}

- (void)pushBtn:(id)sender{
    self.buttonPressedBlock();
}

@end
