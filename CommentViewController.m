//
//  CommentViewController.m
//  Project1
//
//  Created by Justin Weisser on 11/29/12.
//  Copyright (c) 2012 Justin Weisser. All rights reserved.
//

#import "CommentViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface CommentViewController ()

@end

@implementation CommentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    self.myTextView.layer.cornerRadius = 8;
}
- (void)viewDidLoad
{
    [self.myTextView becomeFirstResponder];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end