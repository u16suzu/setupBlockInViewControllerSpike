//
//  CustomView.h
//  viewSpike
//
//  Created by u16suzu on 2013/11/14.
//  Copyright (c) 2013年 IGNIS LTD. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^MyCustomBlockType)(void);

@interface CustomView : UIView
@property (nonatomic, copy) MyCustomBlockType buttonPressedBlock;
@end
