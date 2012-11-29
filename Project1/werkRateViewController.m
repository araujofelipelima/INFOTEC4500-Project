//
//  werkRateViewController.m
//  buttonChanger
//
//  Created by JWerk_ on 11/6/12.
//  Copyright (c) 2012 JWerk_. All rights reserved.
//

#import "werkRateViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface werkRateViewController ()

@end

@implementation werkRateViewController

-(IBAction)happyPlus
{
    happyCount +=1;
    UIImage *btnImg1 = [UIImage imageNamed:@"happy1.png"];
    UIImage *btnImg2 = [UIImage imageNamed:@"happy2.png"];
    UIImage *btnImg3 = [UIImage imageNamed:@"happy3.png"];
    UIImage *neutral = [UIImage imageNamed:@"neutral.png"];
    
    if(happyCount==1){
        [self.happy setImage:btnImg1 forState:UIControlStateNormal];
    [self.happyPage setCurrentPage:1];
    }
    else if(happyCount==2){
        [self.happy setImage:btnImg2 forState:UIControlStateNormal];
        [self.happyPage setCurrentPage:2];
    }
    else if(happyCount==3){
        [self.happy setImage:btnImg3 forState:UIControlStateNormal];
<<<<<<< HEAD
    else if(happyCount>=4)
=======
        [self.happyPage setCurrentPage:3];
    }
    else if(happyCount<=4)
>>>>>>> Changed rate and comment pages
    {
        happyCount = 0;
        [self.happy setImage:neutral forState:UIControlStateNormal];
        [self.happyPage setCurrentPage:0];
    }
}

-(IBAction)sadPlus
{
    sadCount +=1;
    UIImage *btnImg1 = [UIImage imageNamed:@"sad1.png"];
    UIImage *btnImg2 = [UIImage imageNamed:@"sad2.png"];
    UIImage *btnImg3 = [UIImage imageNamed:@"sad3.png"];
    UIImage *neutral = [UIImage imageNamed:@"neutral.png"];
    
    if(sadCount==1){
        [self.sad setImage:btnImg1 forState:UIControlStateNormal];
        [self.sadPage setCurrentPage:1];
    }
    else if(sadCount==2){
        [self.sad setImage:btnImg2 forState:UIControlStateNormal];
        [self.sadPage setCurrentPage:2];
    }
    else if(sadCount==3){
        [self.sad setImage:btnImg3 forState:UIControlStateNormal];
<<<<<<< HEAD
    else if(sadCount>=4)
=======
        [self.sadPage setCurrentPage:3];
    }
    else if(sadCount<=4)
>>>>>>> Changed rate and comment pages
    {
        sadCount = 0;
        [self.sad setImage:neutral forState:UIControlStateNormal];
        [self.sadPage setCurrentPage:0];
    }
}


-(IBAction)surprisePlus
{
    fearCount +=1;
    UIImage *btnImg1 = [UIImage imageNamed:@"surprise1.png"];
    UIImage *btnImg2 = [UIImage imageNamed:@"surprise2.png"];
    UIImage *btnImg3 = [UIImage imageNamed:@"surprise3.png"];
    UIImage *neutral = [UIImage imageNamed:@"neutral.png"];
    
    if(fearCount==1){
        [self.fear setImage:btnImg1 forState:UIControlStateNormal];
        [self.fearPage setCurrentPage:1];
    }
    else if(fearCount==2){
        [self.fear setImage:btnImg2 forState:UIControlStateNormal];
        [self.fearPage setCurrentPage:2];
    }
    else if(fearCount==3){
        [self.fear setImage:btnImg3 forState:UIControlStateNormal];
<<<<<<< HEAD
    else if(fearCount>=4)
=======
        [self.fearPage setCurrentPage:3];
    }
    else if(fearCount<=4)
>>>>>>> Changed rate and comment pages
    {
        fearCount = 0;
        [self.fear setImage:neutral forState:UIControlStateNormal];
        [self.fearPage setCurrentPage:0];
    }
}

-(IBAction)angryPlus
{
    angryCount +=1;
    UIImage *btnImg1 = [UIImage imageNamed:@"angry1.png"];
    UIImage *btnImg2 = [UIImage imageNamed:@"angry2.png"];
    UIImage *btnImg3 = [UIImage imageNamed:@"angry3.png"];
    UIImage *neutral = [UIImage imageNamed:@"neutral.png"];
    
    if(angryCount==1){
        [self.angry setImage:btnImg1 forState:UIControlStateNormal];
        [self.angryPage setCurrentPage:1];
    }
    else if(angryCount==2){
        [self.angry setImage:btnImg2 forState:UIControlStateNormal];
        [self.angryPage setCurrentPage:2];
    }
    else if(angryCount==3){
        [self.angry setImage:btnImg3 forState:UIControlStateNormal];
<<<<<<< HEAD
    else if(angryCount>=4)
=======
        [self.angryPage setCurrentPage:3];
    }
    else if(angryCount<=4)
>>>>>>> Changed rate and comment pages
    {
        angryCount = 0;
        [self.angry setImage:neutral forState:UIControlStateNormal];
        [self.angryPage setCurrentPage:0];
    }
}
    
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewWillAppear:(BOOL)animated
{
    float rd = 48.00/255.00;
    float gr = 169.00/255.00;
    float bl = 204.00/255.00;
    
    self.submitButton.layer.cornerRadius = 8;
    self.submitButton.layer.backgroundColor = [UIColor colorWithRed:rd green:gr blue:bl alpha:1.0].CGColor;
    self.submitButton.titleLabel.textColor = [UIColor whiteColor];
}
- (void)viewDidLoad
{
    happyCount = 0;
    sadCount = 0;
    angryCount = 0;
    fearCount = 0;
<<<<<<< HEAD
    
=======
  
    

>>>>>>> Changed rate and comment pages
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - actions
-(IBAction)submit:(id)sender{
    UIImage *neutral = [UIImage imageNamed:@"neutral.png"];
    
    [self.angry setImage:neutral forState:UIControlStateNormal];
    [self.angryPage setCurrentPage:0];
    [self.sad setImage:neutral forState:UIControlStateNormal];
    [self.sadPage setCurrentPage:0];
    [self.happy setImage:neutral forState:UIControlStateNormal];
    [self.happyPage setCurrentPage:0];
    [self.fear setImage:neutral forState:UIControlStateNormal];
    [self.fearPage setCurrentPage:0];
}

@end
