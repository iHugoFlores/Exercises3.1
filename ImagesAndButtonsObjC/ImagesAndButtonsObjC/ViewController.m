//
//  ViewController.m
//  ImagesAndButtonsObjC
//
//  Created by Field Employee on 3/24/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *imageView1 = [[UIImageView alloc] init];
    imageView1.frame = CGRectMake(0,0,100,100);
    imageView1.image = [UIImage imageNamed:@"Navi"];
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lain"]];
    imageView2.frame = CGRectMake(120,0,100,100);
    
    UIImageView *imageView3 = [[UIImageView alloc] init];
    imageView3.animationImages = [NSArray arrayWithObjects:
                                  [UIImage imageNamed:@"0"],
                                  [UIImage imageNamed:@"1"],
                                  [UIImage imageNamed:@"2"],
                                  [UIImage imageNamed:@"3"],
                                  [UIImage imageNamed:@"4"],
                                  [UIImage imageNamed:@"5"],
                                  [UIImage imageNamed:@"6"],
                                  [UIImage imageNamed:@"7"],
                                  [UIImage imageNamed:@"8"],
                                  [UIImage imageNamed:@"9"], nil];
    imageView3.frame = CGRectMake(240,0,100,100);
    imageView3.animationDuration = 1.08f;
    imageView3.animationRepeatCount = 0;
    
    [imageView3 startAnimating];
    
    UIImageView *imageView4 = [[UIImageView alloc] init];
    imageView4.self.translatesAutoresizingMaskIntoConstraints = NO;
    imageView4.image = [UIImage imageNamed:@"OtherLain"];
    
    [self.view addSubview:imageView1];
    [self.view addSubview:imageView2];
    [self.view addSubview:imageView3];
    [self.view addSubview:imageView4];
    
    [imageView4 addConstraint:[NSLayoutConstraint constraintWithItem:imageView4 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:200.0]];
    [imageView4 addConstraint:[NSLayoutConstraint constraintWithItem:imageView4 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:200.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:imageView4 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:imageView4 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
    
    _imgView.image = [UIImage imageNamed:@"LainBear"];
}


@end
