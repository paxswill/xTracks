//
//  PX8tracksResults.m
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import "PX8tracksResults.h"
#import "PX8tracksAccess.h"

@interface PX8tracksResults()
@property (nonatomic, retain, readwrite) PX8tracksAccess *parent;
@property (nonatomic, retain, readwrite) NSString *requestString;
@end

@implementation PX8tracksResults

@synthesize parent;
@synthesize totalCount;
@synthesize perPage;
@synthesize sort;
@synthesize requestString;

-(id)initWithRequestString:(NSString *)request withParent:(PX8tracksAccess *)access{
	if((self = [super init])){
		self.parent = access;
		self.perPage = 10;
		self.sort = PX8tracksSortRecent;
		self.requestString = request;
	}
	return self;
}

- (void)dealloc{
	self.parent = nil;
	self.requestString = nil;
    [super dealloc];
}

-(NSArray *)getPage:(NSUInteger)pageNum{
	// TODO: implement
}

@end
