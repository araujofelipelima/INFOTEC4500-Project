//
//  FelipeDataProvider.m
//  Project1
//
//  Created by AraujoFelipe on 10/25/12.
//  Copyright (c) 2012 Justin Weisser. All rights reserved.
//

#import "FelipeDataProvider.h"

@implementation FelipeDataProvider

#pragma mark - Fetching

- (void)fetch
{
	//NSString *URLString = @"https://dl.dropbox.com/s/qkcnyx4ig1kkfyk/project1data.json?dl=1";
    //NSString *URLString=@"https://dl.dropbox.com/s/lua59i2tfq53wgr/project1data2.json?dl=1";
    NSString *URLString=@"http://muit4500team3.herokuapp.com/api/v1/channels";
	NSURL *URL = [NSURL URLWithString:URLString];
	NSURLRequest *request = [NSURLRequest requestWithURL:URL];
	[NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error){
		NSHTTPURLResponse *HTTPResponse = (NSHTTPURLResponse *)response;
		NSLog(@"%d", HTTPResponse.statusCode);
		if (HTTPResponse.statusCode == 200) {
			[self parseChannel:data];
            NSString *URLString=@"http://muit4500team3.herokuapp.com/api/v1/shows";
            NSURL *URL = [NSURL URLWithString:URLString];
            NSURLRequest *request = [NSURLRequest requestWithURL:URL];
            [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error){
                NSHTTPURLResponse *HTTPResponse = (NSHTTPURLResponse *)response;
                NSLog(@"%d", HTTPResponse.statusCode);
                if (HTTPResponse.statusCode == 200) {
                    [self parseShow:data];
                } else {
                    [[NSNotificationCenter defaultCenter] postNotificationName:@"FelipeDataProviderDidFail" object:self];
                }
            }];
		} else {
            [[NSNotificationCenter defaultCenter] postNotificationName:@"FelipeDataProviderDidFail" object:self];
		}
	}];
}

- (void)parseChannel:(NSData *)data
{
	self.dataC = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
	// Notifiy observers that new data is available
	//[[NSNotificationCenter defaultCenter] postNotificationName:@"FelipeDataProviderDidFinishParsing" object:self];
}
- (void)parseShow:(NSData *)data
{
	self.dataS = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
	// Notifiy observers that new data is available
	[[NSNotificationCenter defaultCenter] postNotificationName:@"FelipeDataProviderDidFinishParsing" object:self];
}

- (NSArray *)channels{
    //return self.data[0][@"channelName"];
    return self.dataC;
}
- (id)shows:(int)index{
    NSArray *anArray = [self.dataS filteredArrayUsingPredicate:([NSPredicate  predicateWithFormat:@"channel_id == %d",index])];
    return anArray;
}
+ (id)sharedInstance
{
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init]; // or some other init method
    });
    return _sharedObject;
}

@end