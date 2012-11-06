//
//  FelipeChannelViewController.h
//  Project1
//
//  Created by AraujoFelipe on 10/18/12.
//  Copyright (c) 2012 Justin Weisser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FelipeDataProvider.h"

@interface FelipeChannelViewController : UITableViewController
@property (nonatomic,strong) NSArray *data;
@property(nonatomic,strong) FelipeDataProvider *dataProvider;
@property(nonatomic,strong) IBOutlet UIBarButtonItem *refreshButton;
-(IBAction) doRefresh;
@end
