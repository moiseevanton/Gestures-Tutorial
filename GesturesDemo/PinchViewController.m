//
//  PinchViewController.m
//  GesturesDemo
//
//  Created by Anton Moiseev on 2016-05-15.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()

-(void)handlePinchWithGestureRecognizer:(UIPinchGestureRecognizer *)pinchGestureRecognizer;


@end

@implementation PinchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIPinchGestureRecognizer *pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinchWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:pinchGestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handlePinchWithGestureRecognizer:(UIPinchGestureRecognizer *)pinchGestureRecognizer{
    
    self.testView.transform = CGAffineTransformScale(self.testView.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale);
    
    pinchGestureRecognizer.scale = 1.0;
    
}

@end
