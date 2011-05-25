//
//  PX8tracksObject.m
//  xTracks
//
//  Created by Will Ross on 5/24/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import "PX8tracksObject.h"
#import "PX8tracksAccess.h"

@implementation PX8tracksObject
@synthesize access;

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
