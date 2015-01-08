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
@property CGPoint originalCenter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    self.originalCenter = self.theFutureLabel.center;

}

- (IBAction)onDrag:(UIPanGestureRecognizer *)sender {

    CGPoint point = [sender locationInView:self.view];
    self.theFutureLabel.center = point;

    if (CGRectContainsPoint(self.thePreCogsLabel.frame, point)) {
        self.theFutureLabel.text = @"A fictitious and incriminating future";
        [self.theFutureLabel sizeToFit];
    }


    if (sender.state == UIGestureRecognizerStateEnded) {
        [UIView animateWithDuration:1.0f animations:^{
            self.theFutureLabel.center = self.originalCenter;
        } completion:^(BOOL finished) {
            if (finished) {
                self.theFutureLabel.backgroundColor = [UIColor orangeColor];
                self.theFutureLabel.textColor = [UIColor blackColor];
            }
        }];

    }
}


@end
