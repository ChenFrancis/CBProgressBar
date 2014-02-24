//
//  CBProgressBar.m
//  CBProgressBar
//
//  Created by xychen on 14-2-24.
//  Copyright (c) 2014年 CB. All rights reserved.
//

#import "CBProgressBar.h"

@implementation CBProgressBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

+ (void)showProgressAddedTo:(UIView *)view
{
    CBProgressBar *bar = [[self alloc] initWithView:view];
    [view addSubview:bar];
    
    NSArray *imagesArray = [NSArray arrayWithObjects:
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
    UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    animationImageView.center = CGPointMake(CGRectGetWidth(view.frame)/2, CGRectGetHeight(view.frame)/2);
    animationImageView.animationImages = imagesArray;//将序列帧数组赋给UIImageView的animationImages属性
    animationImageView.animationDuration = 0.9;//设置动画时间
    animationImageView.animationRepeatCount = 0;//设置动画次数 0 表示无限
    [animationImageView startAnimating];//开始播放动画
    [bar addSubview:animationImageView];
    
}

+ (void)hideProgressForView:(UIView *)view
{
    for (UIView *subview in [view subviews])
    {
        if ([subview isKindOfClass:self])
        {
            [subview removeFromSuperview];
        }
    }
}

- (id)initWithView:(UIView *)view
{
	return [self initWithFrame:view.bounds];
}

@end
