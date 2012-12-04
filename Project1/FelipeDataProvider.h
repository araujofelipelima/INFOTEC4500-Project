//
//  FelipeDataProvider.h
//  Project1
//
//  Created by AraujoFelipe on 10/25/12.
//  Copyright (c) 2012 Justin Weisser. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FelipeDataProvider : NSObject

@property (nonatomic, strong) NSArray *dataC;
@property (nonatomic, strong) NSArray *dataS;
- (void)fetch;
- (id)channels;
- (id)shows:(int)index;
+ (id)sharedInstance;
@end