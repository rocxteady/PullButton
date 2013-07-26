//
//  ViewController.m
//  PullButton
//
//  Created by Ulaş Sancak on 7/25/13.
//  Copyright (c) 2013 Sancak. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    PullButton *pull = [[PullButton alloc]initWithFrame:CGRectMake(110, 111, 100, 25)];
    pull.pullDelegate = self;
    [pull setBackgroundColor:[UIColor darkGrayColor]];
    [pull setTitle:@"Buton"];
    [self.view addSubview:pull];
    
    PullButton *pull2 = [[PullButton alloc]initWithFrame:CGRectMake(60, 211, 200, 50)];
    pull2.pullDelegate = self;
    [pull2 setTitle:@"Some Buton"];
    [pull2 setBackgroundColor:[UIColor darkGrayColor]];
    [self.view addSubview:pull2];
    
    PullButton *pull3 = [[PullButton alloc]initWithFrame:CGRectMake(10, 311, 300, 75)];
    pull3.pullDelegate = self;
    [pull3 setTitle:@"Other Button"];
    [pull3 setBackgroundColor:[UIColor darkGrayColor]];
    [self.view addSubview:pull3];
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)pullButtonNotPulled:(PullButton *)pullButton{
    NSLog(@"Could Not Pulled");
    [SVProgressHUD showErrorWithStatus:@"Could Not Pulled"];
}

-(void)pullButtonPulled:(PullButton *)pullButton{
    NSLog(@"Pulled");
    [SVProgressHUD showSuccessWithStatus:@"Pulled"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {

    [super viewDidUnload];
}
@end
