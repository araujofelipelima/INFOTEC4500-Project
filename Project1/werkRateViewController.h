//
//  werkRateViewController.h
//  buttonChanger
//
//  Created by JWerk_ on 11/6/12.
//  Copyright (c) 2012 JWerk_. All rights reserved.
//

#import <UIKit/UIKit.h>

int happyCount;
int sadCount;
int angryCount;
int fearCount;

@interface werkRateViewController : UIViewController
@property(nonatomic,strong) IBOutlet UIButton *happy;
@property(nonatomic,strong) IBOutlet UIButton *sad;
@property(nonatomic,strong) IBOutlet UIButton *fear;
@property(nonatomic,strong) IBOutlet UIButton *angry;
@property(nonatomic,strong) IBOutlet UIButton *submitButton;
@property(nonatomic, strong) IBOutlet UIPageControl *happyPage;
@property(nonatomic, strong) IBOutlet UIPageControl *sadPage;
@property(nonatomic, strong) IBOutlet UIPageControl *fearPage;
@property(nonatomic, strong) IBOutlet UIPageControl *angryPage;
-(IBAction)happyPlus;
-(IBAction)sadPlus;
-(IBAction)angryPlus;
-(IBAction)surprisePlus;
-(IBAction)submit:(id)sender;
@end
