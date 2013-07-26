//
//  PullButton.h
//  PullButton
//
//  Created by Ulaş Sancak on 7/26/13.
//  Copyright (c) 2013 Sancak. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PullButton;

@protocol PullButtonDelegate <NSObject>

@required

-(void)pullButtonPulled:(PullButton *)pullButton;
-(void)pullButtonNotPulled:(PullButton *)pullButton;

@end

@interface PullButton : UIScrollView <UIScrollViewDelegate>
{
    UIImageView *backGroundImageView;
    UILabel *titleLabel;
}

@property (nonatomic, strong) UIImageView *backGroundImageView;

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, weak) id <PullButtonDelegate> pullDelegate;

-(void)setBackgroundImage:(UIImage *)image;

-(void)setTitle:(NSString *)title;

@end
