
/*  Please follow the following step to implement the hud in any projects:-
 
1. First copy MBProgressHUD.h and MBProgressHUD.m class from this project
2. Next add the MBProgressHUD.h and MBProgressHUD.m file into a new project
3. Next #import "MBProgressHUD.h" the class name where you want to use the hud
 
*/

#import "ViewController.h"
#import "MBProgressHUD.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()
{
    MBProgressHUD *hud;
    UIProgressView *progressView;

   
}
- (IBAction)showHudButtonAction:(id)sender;
- (IBAction)hideHudButtonAction:(id)sender;

@property (nonatomic, assign) SEL selector;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

// Show Hud button action
- (IBAction)showHudButtonAction:(id)sender
{
    hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];

    hud.labelColor=[UIColor whiteColor];
    hud.square = YES;
    
    // Hud label message
    hud.labelText= @"Wait";
    hud.detailsLabelText = @"Processing....";
    hud.mode = MBProgressHUDModeIndeterminate;
  
    // Transparent background color
    hud.backgroundColor= [[UIColor blackColor] colorWithAlphaComponent:0.8];
    hud.labelFont = [UIFont fontWithName:@"MuseoSans-300.otf" size:50];
    hud.color =[UIColor clearColor];
    [UIColor colorWithRed:255 green:.32 blue:.08 alpha:1];
    hud.userInteractionEnabled = NO;
}

// Hide Hud button action
- (IBAction)hideHudButtonAction:(id)sender
{
    [hud hide:YES];
}



@end
