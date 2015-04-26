//
//  ViewController.m
//  AutoLayoutDemo
//
//  Created by Azat Almeev on 26.04.15.
//  Copyright (c) 2015 Azat Almeev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *xconst;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *yconst;

@end

@implementation ViewController

#define delta 20

- (IBAction)upClick:(id)sender {
    [UIView animateWithDuration:.3 animations:^{
        self.yconst.constant += delta;
        [self.view layoutIfNeeded];
    }];
}

- (IBAction)rightClick:(id)sender {
    [UIView animateWithDuration:.3 animations:^{
        self.xconst.constant -= delta;
        [self.view layoutIfNeeded];
    }];
}

- (IBAction)downClick:(id)sender {
    [UIView animateWithDuration:.3 animations:^{
        self.yconst.constant -= delta;
        [self.view layoutIfNeeded];
    }];
}

- (IBAction)liftClick:(id)sender {
    [UIView animateWithDuration:.3 animations:^{
        self.xconst.constant += delta;
        [self.view layoutIfNeeded];
    }];
}

@end
