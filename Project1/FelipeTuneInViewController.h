//
//  FelipeTuneInViewController.h
//  Project1
//
//  Created by AraujoFelipe on 10/16/12.
//  Copyright (c) 2012 Justin Weisser. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FelipeTuneInViewController : UIViewController
@property(nonatomic,strong) IBOutlet UIButton *TuneInButton;
@property(nonatomic,strong) IBOutlet UILabel *buttonLabel;
-(IBAction)tuneIn:(id)sender;
@end
