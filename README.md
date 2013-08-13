PullButton 0.1 For iOS 
==============

Requirements
--------------
- Xcode 4.5 or higher
- iOS 5.0 or higher
- ARC

Contact
--------------
- [Twitter](https://twitter.com/rocxteady2)
- [Facebook](https://www.facebook.com/rocxteady)
- [E-Mail](mailto:ulas.sancak@hotmail.com.tr)

Demo
--------------
Build and run the project in Xcode.

Screens
--------------
![1](http://s5.postimg.org/6urb4ss8n/i_OS_Simulator_Screen_shot_Aug_14_2013_1_19_24_A.png)
![2](http://s5.postimg.org/vpasyvd2v/i_OS_Simulator_Screen_shot_Aug_14_2013_1_20_29_A.png)
![3](http://s5.postimg.org/za6oi3hmf/i_OS_Simulator_Screen_shot_Aug_14_2013_1_20_36_A.png)

in ViewController.h
--------------

    #import <UIKit/UIKit.h>
    #import "PullButton.h"

    @interface ViewController : UIViewController <UIScrollViewDelegate, PullButtonDelegate>

    @end
    
in ViewController.m
--------------
    
	- (void)viewDidLoad
	{
   	 [super viewDidLoad];
    
    	PullButton *pull = [[PullButton alloc]initWithFrame:CGRectMake(110, 111, 100, 25)];
    	pull.pullDelegate = self;
    	[pull setBackgroundColor:[UIColor darkGrayColor]];
    	[pull setTitle:@"Buton"];
    	[self.view addSubview:pull];
    
		// Do any additional setup after loading the view, typically from a nib.
	}

	-(void)pullButtonNotPulled:(PullButton *)pullButton{
		NSLog(@"Could Not Pulled");
	}

	-(void)pullButtonPulled:(PullButton *)pullButton{
    	NSLog(@"Pulled");
	}

License
--------------
You can do with this project whatever you want. :)