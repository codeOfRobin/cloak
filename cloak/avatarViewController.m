//
//  avatarViewController.m
//  cloak
//
//  Created by Robin Malhotra on 06/07/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import "avatarViewController.h"

@interface avatarViewController ()

@end

@implementation avatarViewController

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
    self.avatarPicker.delegate=self;
    self.avatarPicker.dataSource=self;
    
    PFUser *currentUser = [PFUser currentUser];
    if (currentUser) {
        NSLog(@"Current user: %@", currentUser.username);
    }
    else {
        [self performSegueWithIdentifier:@"showLogin" sender:self];
    }

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 4;
}





- (UIView *)viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    CGRect rect=CGRectMake(0, 0, self.avatarPicker.frame.size.width, 100);
    [view setFrame:rect];
    UIImageView *imgView=[[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 70, 70)];
    UIImage *image=[[UIImage alloc] init];
    if (row%2==0)
    {
        image=[UIImage imageNamed:@"1"];
    }
    else
    {
        image=[UIImage imageNamed:@"Image"];
    }
    [imgView setImage:image];
    [view addSubview:imgView];
    

    
    
    return view;
    
}

-(UIView *) pickerView: (UIPickerView *) pickerView
  viewForRow: (NSInteger) row forComponent: (NSInteger) component
  reusingView:(UIView *)view
{
    CGRect rect=CGRectMake(0, 0, self.avatarPicker.frame.size.width, 100);
    [view setFrame:rect];
    
    UIImageView *imgView=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 1000, 200)];
    UIImage *image=[[UIImage alloc] init];
    if (row%2==0)
    {
        image=[UIImage imageNamed:@"1"];
    }
    else
    {
        image=[UIImage imageNamed:@"Image"];
    }
    [imgView setImage:image];
    [view addSubview:imgView];
    
    
    
    
    return view;
    
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
