//
//  FelipeTuneInViewController.m
//  Project1
//
//  Created by AraujoFelipe on 10/16/12.
//  Copyright (c) 2012 Justin Weisser. All rights reserved.
//

#import "FelipeTuneInViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface FelipeTuneInViewController ()

@end

@implementation FelipeTuneInViewController
- (void)viewWillAppear:(BOOL)animated{
    float rd = 48.00/255.00;
    float gr = 169.00/255.00;
    float bl = 204.00/255.00;
    
    self.buttonLabel.layer.cornerRadius=8;
    self.commentButton.layer.cornerRadius = 8;
    self.rateButton.layer.cornerRadius = 8;
    self.pollButton.layer.cornerRadius  = 8;
    
    self.commentButton.layer.backgroundColor = [UIColor colorWithRed:rd green:gr blue:bl alpha:1.0].CGColor;
    self.rateButton.layer.backgroundColor = [UIColor colorWithRed:rd green:gr blue:bl alpha:1.0].CGColor;
    self.pollButton.layer.backgroundColor = [UIColor colorWithRed:rd green:gr blue:bl alpha:1.0].CGColor;
    
    self.commentButton.titleLabel.textColor = [UIColor whiteColor];
    self.rateButton.titleLabel.textColor = [UIColor whiteColor];
    self.pollButton.titleLabel.textColor = [UIColor whiteColor];

}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
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
#pragma mark - actions
-(IBAction)tuneIn:(id)sender{
    float rd = 48.00/255.00;
    float gr = 169.00/255.00;
    float bl = 204.00/255.00;
    
   
    if([self.buttonLabel.text isEqualToString:(@"Tuned in")]){
        self.buttonLabel.text=@"Tune in!";
        self.buttonLabel.backgroundColor=[UIColor clearColor];
        self.buttonLabel.textColor=[UIColor colorWithRed:rd green:gr blue:bl alpha:1.0];
    }else{
        self.buttonLabel.text=@"Tuned in";
        self.buttonLabel.backgroundColor=[UIColor colorWithRed:rd green:gr blue:bl alpha:1.0];
        self.buttonLabel.textColor=[UIColor whiteColor];
    }
    
}
@end
