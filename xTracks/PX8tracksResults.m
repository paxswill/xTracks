//
//  PX8tracksResults.m
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import "PX8tracksResults.h"
#import "PX8tracksAccess.h"
#import "ASIFormDataRequest.h"
#import "JSONKit.h"

@interface PX8tracksResults()
@property (nonatomic, retain, readwrite) ASIFormDataRequest *resultRequest;
-(NSDictionary *)requestItems:(NSUInteger)numItems page:(NSUInteger)pageNum;
@end

@implementation PX8tracksResults
@synthesize totalCount;
@synthesize perPage;
@synthesize sort;
@synthesize resultRequest;

-(id)initWithAccess:(PX8tracksAccess *)accessObject andRequest:(ASIFormDataRequest *)request{
	if((self = [super initWithAccess:accessObject])){
		self.perPage = 10;
		self.resultRequest = request;
		self.sort = PX8tracksSortRecent;
		NSDictionary *results = [self requestItems:1 page:1];
		self.totalCount = [[results objectForKey:@"total_entries"] unsignedIntegerValue];
	}
	return self;
}

- (void)dealloc{
	self.resultRequest = nil;
    [super dealloc];
}

-(NSDictionary *)requestItems:(NSUInteger)numItems page:(NSUInteger)pageNum{
	ASIFormDataRequest *thisRequest = [self.resultRequest copy];
	[thisRequest setPostValue:[NSNumber numberWithUnsignedInteger:numItems] forKey:@"per_page"];
	[thisRequest setPostValue:[NSNumber numberWithUnsignedInteger:pageNum] forKey:@"page"];
	[thisRequest startSynchronous];
	NSDictionary *results = [[thisRequest responseData] objectFromJSONData];
	[thisRequest release];
	return results;
}

-(NSArray *)getPage:(NSUInteger)pageNum{
	// TODO: implement
}

@end
