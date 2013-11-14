//
//  ViewController.m
//  viewSpike
//
//  Created by u16suzu on 2013/11/14.
//  Copyright (c) 2013年 IGNIS LTD. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CustomView *cv =
        [[CustomView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    cv.center = self.view.center;
    cv.buttonPressedBlock = ^(int a){
        // show alert view
        UIAlertView *al =
        [[UIAlertView alloc]initWithTitle:@"Block alert"
                                  message:nil
                                 delegate:self
                        cancelButtonTitle:@"OK"
                        otherButtonTitles:nil];
        [al show];
        return ;
    };    
    [self.view addSubview:cv];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
