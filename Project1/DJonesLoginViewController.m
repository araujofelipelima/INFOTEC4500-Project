//
//  DJonesLoginViewController.m
//  Project1
//
//  Created by David on 11/15/12.
//  Copyright (c) 2012 Justin Weisser. All rights reserved.
//

#import "DJonesLoginViewController.h"

@interface DJonesLoginViewController ()

@end

@implementation DJonesLoginViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)validateLogin
{ 
    // this will post to login API
    // get app session token and store somewhere
    
    if ([self.username.text isEqualToString:@"test"] && [self.password.text isEqualToString:@"test1"])
    {
        [self dismissModalViewControllerAnimated: (YES)];        
    }
        
}

@end
