//
//  RotationViewController.m
//  GesturesDemo
//
//  Created by Anton Moiseev on 2016-05-15.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

-(void)handleRotationWithGestureRecognizer:(UIRotationGestureRecognizer *)rotationGestureRecognizer;

@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIRotationGestureRecognizer *rotationGestureRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotationWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:rotationGestureRecognizer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handleRotationWithGestureRecognizer:(UIRotationGestureRecognizer *)rotationGestureRecognizer{
    
    self.testView.transform = CGAffineTransformRotate(self.testView.transform, rotationGestureRecognizer.rotation);
    
    rotationGestureRecognizer.rotation = 0.0;
}

@end
