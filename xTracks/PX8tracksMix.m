//
//  PX8tracksMix.m
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import "PX8tracksMix.h"
#import "PX8tracksTrack.h"

@interface PX8tracksMix()
@property (nonatomic, retain, readwrite) PX8tracksAccess *access;
@property (nonatomic, retain, readwrite) NSString *name;
@property (nonatomic, assign, readwrite) BOOL published;
@property (nonatomic, retain, readwrite) NSURL *coverURL;
@property (nonatomic, assign, readwrite) NSInteger idNumber;
@property (nonatomic, assign, readwrite) BOOL liked;
@property (nonatomic, retain, readwrite) PX8tracksUser *user;
@property (nonatomic, retain, readwrite) NSArray *tags;
@property (nonatomic, assign, readwrite) NSUInteger playCount;
@property (nonatomic, retain, readwrite) NSString *mixDescription;
@property (nonatomic, retain, readwrite) NSDate *publishedDate;
@property (nonatomic, retain, readwrite) NSURL *url;
@end

@implementation PX8tracksMix
@synthesize access;
@synthesize name;
@synthesize published;
@synthesize coverURL;
@synthesize idNumber;
@synthesize liked;
@synthesize user;
@synthesize tags;
@synthesize playCount;
@synthesize mixDescription;
@synthesize publishedDate;
@synthesize url;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

@end
