//
//  TapViewController.m
//  GesturesDemo
//
//  Created by Anton Moiseev on 2016-05-15.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer;

-(void)handleDoubleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer;

@end

@implementation TapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITapGestureRecognizer *singleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
    [self.testView addGestureRecognizer:singleTapGestureRecognizer];
    
    UITapGestureRecognizer *doubleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTapGesture:)];
    doubleTapGestureRecognizer.numberOfTapsRequired = 2;
    doubleTapGestureRecognizer.numberOfTouchesRequired = 2;
    [self.testView addGestureRecognizer:doubleTapGestureRecognizer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer{
    CGFloat newWidth = 100.0;
    if (self.testView.frame.size.width == 100.0) {
        newWidth = 200.0;
    }
    
    CGPoint currentCenter = self.testView.center;
    
    self.testView.frame = CGRectMake(self.testView.frame.origin.x, self.testView.frame.origin.y, newWidth, self.testView.frame.size.height);
    self.testView.center = currentCenter;
}

-(void)handleDoubleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer{
    CGSize newSize = CGSizeMake(100.0, 100.0);
    if (self.testView.frame.size.width == 100.0) {
        newSize.width = 200.0;
        newSize.height = 200.0;
    }
    
    CGPoint currentCenter = self.testView.center;
    
    self.testView.frame = CGRectMake(self.testView.frame.origin.x, self.testView.frame.origin.y, newSize.width, newSize.height);
    self.testView.center = currentCenter;
}

@end
