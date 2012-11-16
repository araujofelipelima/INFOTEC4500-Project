//
//  DJonesLoginViewController.h
//  Project1
//
//  Created by David on 11/15/12.
//  Copyright (c) 2012 Justin Weisser. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DJonesLoginViewController : UIViewController

@property(nonatomic,strong) IBOutlet UIButton *loginButton;
@property(nonatomic,strong) IBOutlet UITextField *username;
@property(nonatomic,strong) IBOutlet UITextField *password;

-(IBAction) validateLogin;

@end
