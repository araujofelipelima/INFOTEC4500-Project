//
//  ViewController.m
//  Project1
//
//  Created by Justin Weisser on 9/25/12.
//  Copyright (c) 2012 Justin Weisser. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


{
  
}
 -(IBAction)selected:(id)sender{
   
}
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320,600)];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
