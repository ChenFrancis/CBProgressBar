//
//  ViewController.m
//  CBProgressBar
//
//  Created by xychen on 14-2-24.
//  Copyright (c) 2014年 CB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSArray *magesArray = [NSArray arrayWithObjects:
                           [UIImage imageNamed:@"cbProgress1.png"],
                           [UIImage imageNamed:@"cbProgress2.png"],
                           [UIImage imageNamed:@"cbProgress3.png"],
                           [UIImage imageNamed:@"cbProgress4.png"],
                           [UIImage imageNamed:@"cbProgress5.png"],
                           [UIImage imageNamed:@"cbProgress6.png"],
                           [UIImage imageNamed:@"cbProgress7.png"],
                           [UIImage imageNamed:@"cbProgress8.png"],
                           [UIImage imageNamed:@"cbProgress9.png"],
                           [UIImage imageNamed:@"cbProgress10.png"], nil];
    
    UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    
    [self.view addSubview:animationImageView];
    
    //    [animationImageView initWithFrame:CGRectMake(0, 0, 131, 125)];
    animationImageView.animationImages = magesArray;//将序列帧数组赋给UIImageView的animationImages属性
    animationImageView.animationDuration = 0.9;//设置动画时间
    animationImageView.animationRepeatCount = 0;//设置动画次数 0 表示无限
    [animationImageView startAnimating];//开始播放动画
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
