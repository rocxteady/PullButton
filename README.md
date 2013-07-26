ComboBox 0.1 For iOS 
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
Build and run the *ComboBoxExample* project in Xcode.

Screens
--------------
![Before Touch](http://s12.postimg.org/prca8muul/i_OS_Simulator_Screen_shot_Jul_26_2013_1_56_24_A.png)
![After Touch](http://s5.postimg.org/kqw6ki0dz/i_OS_Simulator_Screen_shot_Jul_26_2013_2_01_33_A.png)

in ViewController.h
--------------

    #import <UIKit/UIKit.h>
    #import "ComboBox.h"

    @interface ViewController : UIViewController <ComBoxDelegate>

    @property (nonatomic, strong) NSArray *dataObjects;
    @end
    
in ViewController.m
--------------
    
    - (void)viewDidLoad
    {
        [super viewDidLoad];
        ComboBox *comboBox = [[ComboBox alloc]initWithFrame:CGRectMake(50, 50, 220, 36)];
        comboBox.delegate = self;
        [comboBox setComboBoxSize:CGSizeMake(220, 44*4)];
        [self.view addSubview:comboBox];
    
        _dataObjects = [NSArray arrayWithObjects:@"House",@"Apple",@"Book",@"Drink", nil];
    
        [comboBox setComboBoxDataArray:_dataObjects];
    	// Do any additional setup after loading the view, typically from a nib.
    }

    -(void)comboBox:(ComboBox *)comboBox didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
        NSLog(@"%@", [_dataObjects objectAtIndex:indexPath.row]);
    }

License
--------------
You can do with this project whatever you want. :)