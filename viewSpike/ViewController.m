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
    // CustomView 1
    CustomView *cv =
        [[CustomView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    CGPoint center = self.view.center;
    center.y = 150;
    cv.center = center;
    cv.buttonPressedBlock = ^(void){
        UIAlertView *al =
        [[UIAlertView alloc]initWithTitle:@"Block alert1"
                                  message:nil
                                 delegate:self
                        cancelButtonTitle:@"OK"
                        otherButtonTitles:nil];
        [al show];
        return ;
    };    
    [self.view addSubview:cv];
    
    
    // CustomView 2
    CustomView *cv2 = [[CustomView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    cv2.center = self.view.center;
    cv2.buttonPressedBlock = ^(void){
        UIAlertView *al =
        [[UIAlertView alloc]initWithTitle:@"Block alert2"
                                  message:nil
                                 delegate:self
                        cancelButtonTitle:@"OK"
                        otherButtonTitles: nil];
        [al show];
    };
    [self.view addSubview:cv2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
