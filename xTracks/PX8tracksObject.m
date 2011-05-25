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

-(id)initWithAccess:(PX8tracksAccess *)accessObject{
	if((self = [super init])){
		self.access = accessObject;
	}
	return self;
}

- (void)dealloc
{
	self.access = nil;
    [super dealloc];
}

@end
