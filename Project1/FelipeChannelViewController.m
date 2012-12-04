//
//  FelipeChannelViewController.m
//  Project1
//
//  Created by AraujoFelipe on 10/18/12.
//  Copyright (c) 2012 Justin Weisser. All rights reserved.
//

#import "FelipeChannelViewController.h"
#import "FelipeShowViewController.h"

@interface FelipeChannelViewController ()

@end

@implementation FelipeChannelViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"channelToShow"]){
        FelipeShowViewController *destinationViewController = (FelipeShowViewController *)segue.destinationViewController;
        destinationViewController.selection=[[self.data objectAtIndex:self.tableView.indexPathForSelectedRow.row][@"id"] integerValue];
        destinationViewController.channel = [self.data objectAtIndex:self.tableView.indexPathForSelectedRow.row];
    }
}
-(void) refresh{
    self.data=[self.dataProvider channels];
    [self.tableView reloadData];
}
- (void)viewDidLoad
{
    [super viewDidLoad];;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refresh) name:@"FelipeDataProviderDidFinishParsing" object:nil];
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receivedError) name:@"FelipeDataProviderDidFail" object:nil];
	self.dataProvider = [FelipeDataProvider sharedInstance];
	[self.dataProvider fetch];


    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.data count];
}
-(void)receivedError{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No network connection"
                                                    message:@"You must be connected to the internet to use this app."
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"tableCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }


    // Configure the cell...
    if (self.data != nil) {
        cell.textLabel.text = [self.data objectAtIndex: indexPath.row][@"name"];
    }
    else
    {
        [cell.textLabel setText:@"No Accounts"];
    }

    return cell;
}
-(IBAction)doRefresh{
    [self.dataProvider fetch];
}
@end