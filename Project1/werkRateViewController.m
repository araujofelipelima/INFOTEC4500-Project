//
//  werkRateViewController.m
//  buttonChanger
//
//  Created by JWerk_ on 11/6/12.
//  Copyright (c) 2012 JWerk_. All rights reserved.
//

#import "werkRateViewController.h"

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
    
    if(happyCount==1)
        [self.happy setImage:btnImg1 forState:UIControlStateNormal];
    else if(happyCount==2)
        [self.happy setImage:btnImg2 forState:UIControlStateNormal];
    else if(happyCount==3)
        [self.happy setImage:btnImg3 forState:UIControlStateNormal];
    else if(happyCount<=4)
    {
        happyCount = 0;
        [self.happy setImage:neutral forState:UIControlStateNormal];
    }
}

-(IBAction)sadPlus
{
    sadCount +=1;
    UIImage *btnImg1 = [UIImage imageNamed:@"happy1.png"];
    UIImage *btnImg2 = [UIImage imageNamed:@"happy2.png"];
    UIImage *btnImg3 = [UIImage imageNamed:@"happy3.png"];
    UIImage *neutral = [UIImage imageNamed:@"neutral.png"];
    
    if(sadCount==1)
        [self.sad setImage:btnImg1 forState:UIControlStateNormal];
    else if(sadCount==2)
        [self.sad setImage:btnImg2 forState:UIControlStateNormal];
    else if(sadCount==3)
        [self.sad setImage:btnImg3 forState:UIControlStateNormal];
    else if(sadCount<=4)
    {
        sadCount = 0;
        [self.sad setImage:neutral forState:UIControlStateNormal];
    }
}


-(IBAction)fearPlus
{
    fearCount +=1;
    UIImage *btnImg1 = [UIImage imageNamed:@"happy1.png"];
    UIImage *btnImg2 = [UIImage imageNamed:@"happy2.png"];
    UIImage *btnImg3 = [UIImage imageNamed:@"happy3.png"];
    UIImage *neutral = [UIImage imageNamed:@"neutral.png"];
    
    if(fearCount==1)
        [self.fear setImage:btnImg1 forState:UIControlStateNormal];
    else if(fearCount==2)
        [self.fear setImage:btnImg2 forState:UIControlStateNormal];
    else if(fearCount==3)
        [self.fear setImage:btnImg3 forState:UIControlStateNormal];
    else if(fearCount<=4)
    {
        fearCount = 0;
        [self.fear setImage:neutral forState:UIControlStateNormal];
    }
}

-(IBAction)angryPlus
{
    angryCount +=1;
    UIImage *btnImg1 = [UIImage imageNamed:@"angry1.png"];
    UIImage *btnImg2 = [UIImage imageNamed:@"angry2.png"];
    UIImage *btnImg3 = [UIImage imageNamed:@"angry3.png"];
    UIImage *neutral = [UIImage imageNamed:@"neutral.png"];
    
    if(angryCount==1)
        [self.angry setImage:btnImg1 forState:UIControlStateNormal];
    else if(angryCount==2)
        [self.angry setImage:btnImg2 forState:UIControlStateNormal];
    else if(angryCount==3)
        [self.angry setImage:btnImg3 forState:UIControlStateNormal];
    else if(angryCount<=4)
    {
        angryCount = 0;
        [self.angry setImage:neutral forState:UIControlStateNormal];
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

- (void)viewDidLoad
{
    happyCount = 0;
    sadCount = 0;
    angryCount = 0;
    fearCount = 0;
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
