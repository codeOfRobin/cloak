//
//  LogInViewController.m
//  cloak
//
//  Created by Robin Malhotra on 05/07/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import "LogInViewController.h"

@interface LogInViewController ()
@property (strong, nonatomic) IBOutlet UITextField *phoneNoTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation LogInViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIColor *color=[UIColor whiteColor];
    self.phoneNoTextField.attributedPlaceholder=[[NSAttributedString alloc] initWithString:@"Phone Number" attributes:@{NSForegroundColorAttributeName: color}];
    self.passwordTextField.attributedPlaceholder=[[NSAttributedString alloc] initWithString:@"Password" attributes:@{NSForegroundColorAttributeName: color}];
    self.passwordTextField.delegate=self;
    self.phoneNoTextField.delegate=self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Signin:(id)sender
{
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

// It is important for you to hide kwyboard

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
