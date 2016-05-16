//
//  PanViewController.h
//  GesturesDemo
//
//  Created by Anton Moiseev on 2016-05-15.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PanViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *testView;

@property (weak, nonatomic) IBOutlet UILabel *horizontalVelocityLabel;

@property (weak, nonatomic) IBOutlet UILabel *verticalVelocityLabel;

@end
