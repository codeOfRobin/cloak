//
//  SignUpViewController.h
//  cloak
//
//  Created by Robin Malhotra on 05/07/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
@interface SignUpViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *retypePasswordTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;

- (IBAction)SignUp:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@end
