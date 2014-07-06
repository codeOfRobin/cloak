//
//  avatarViewController.h
//  cloak
//
//  Created by Robin Malhotra on 06/07/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
@interface avatarViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UIPickerView *avatarPicker;

@end
