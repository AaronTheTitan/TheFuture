//
//  ViewController.m
//  Minority Report
//
//  Created by Aaron Bradley on 1/8/15.
//  Copyright (c) 2015 Aaron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *theFutureLabel;
@property (strong, nonatomic) IBOutlet UILabel *thePreCogsLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
}
- (IBAction)onDrag:(UIPanGestureRecognizer *)sender {

    CGPoint point = [sender locationInView:self.view];
    self.theFutureLabel.center = point;

    if (CGRectContainsPoint(self.thePreCogsLabel.frame, point)) {
        self.theFutureLabel.text = @"A fictitious and incriminating future";
        [self.theFutureLabel sizeToFit];
    }
    
}


@end
