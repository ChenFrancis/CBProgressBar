//
//  ViewController.m
//  CBProgressBar
//
//  Created by xychen on 14-2-24.
//  Copyright (c) 2014年 CB. All rights reserved.
//

#import "ViewController.h"

#import "CBProgressBar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    [CBProgressBar showProgressAddedTo:self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
