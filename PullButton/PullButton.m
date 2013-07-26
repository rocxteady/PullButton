//
//  PullButton.m
//  PullButton
//
//  Created by Ulaş Sancak on 7/26/13.
//  Copyright (c) 2013 Sancak. All rights reserved.
//

#import "PullButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation PullButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.scrollEnabled = YES;
        self.pagingEnabled = YES;
        self.bounces = NO;
        self.bouncesZoom = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        self.delegate = self;
        float imageRate = 0.185;
        backGroundImageView = [[UIImageView alloc]initWithFrame:CGRectMake(-10, 0, frame.size.width+10, frame.size.height)];
        titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, backGroundImageView.frame.size.width-(imageRate*backGroundImageView.frame.size.width)-15, frame.size.height)];
        [titleLabel setBackgroundColor:[UIColor clearColor]];
        [titleLabel setTextAlignment:NSTextAlignmentCenter];
        [titleLabel setLineBreakMode:NSLineBreakByTruncatingMiddle];
        titleLabel.font = [UIFont boldSystemFontOfSize:14.0];
        [titleLabel setTextColor:[UIColor whiteColor]];
        [backGroundImageView addSubview:titleLabel];
        [backGroundImageView setImage:[UIImage imageNamed:@"button"]];
        backGroundImageView.userInteractionEnabled = YES;
        [self addSubview:backGroundImageView];
        
        backGroundImageView.layer.cornerRadius = 10.0;
        backGroundImageView.layer.masksToBounds = YES;
        [self setContentSize:CGSizeMake((frame.size.width*2)-(imageRate*backGroundImageView.frame.size.width), frame.size.height)];
        
    }
    return self;
}

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    UIView *someView = [super hitTest:point withEvent:event];
    if ([someView isKindOfClass:[UIImageView class]]) {
        [self hop];
    }
    else if ([someView isKindOfClass:[UIScrollView class]]){
        [self hop2];
    }
    return someView;
}

-(void)hop{
    self.scrollEnabled = YES;
}

-(void)hop2{
    self.scrollEnabled = NO;
}

-(void)setBackgroundImage:(UIImage *)image{
    [backGroundImageView setImage:image];
}

-(void)setTitle:(NSString *)title{
    [titleLabel setText:title];
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    if (scrollView.contentOffset.x != 0) {
        [self.pullDelegate pullButtonPulled:self];
    }
    else {
        [self.pullDelegate pullButtonNotPulled:self];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
