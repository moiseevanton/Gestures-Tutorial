//
//  PanViewController.m
//  GesturesDemo
//
//  Created by Anton Moiseev on 2016-05-15.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer;

@end

@implementation PanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveViewWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:panGestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer{
    
    CGPoint touchLocation = [panGestureRecognizer locationInView:self.view];
    
    self.testView.center = touchLocation;
    
//    CGPoint velocity = [panGestureRecognizer velocityInView:self.view];
//    
//    self.horizontalVelocityLabel.text = [NSString stringWithFormat:@"Horizontal Velocity: %.2f points/sec", velocity.x];
//    self.verticalVelocityLabel.text = [NSString stringWithFormat:@"Vertical Velocity: %.2f points/sec", velocity.y];
//
    
}

@end
