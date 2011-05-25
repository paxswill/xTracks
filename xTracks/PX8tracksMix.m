//
//  PX8tracksMix.m
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import "PX8tracksMix.h"
#import "PX8tracksTrack.h"
#import "PX8tracksUser.h"

@interface PX8tracksMix()
@property (nonatomic, retain, readwrite) NSString *name;
@property (nonatomic, assign, readwrite) BOOL published;
@property (nonatomic, retain, readwrite) NSURL *coverURL;
@property (nonatomic, assign, readwrite) NSInteger idNumber;
@property (nonatomic, retain, readwrite) PX8tracksUser *user;
@property (nonatomic, retain, readwrite) NSArray *tags;
@property (nonatomic, assign, readwrite) NSUInteger playCount;
@property (nonatomic, retain, readwrite) NSString *mixDescription;
@property (nonatomic, retain, readwrite) NSDate *publishedDate;
@property (nonatomic, retain, readwrite) NSURL *url;
@end

@implementation PX8tracksMix
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

-(id)initWithAccess:(PX8tracksAccess *)accessObject mixDictionary:(NSDictionary *)json{
	if((self = [super initWithAccess:accessObject])){
		self.name = [json objectForKey:@"name"];
		self.published = [[json objectForKey:@"published"] boolValue];
		self.coverURL = [NSURL URLWithString:[[json objectForKey:@"cover_urls"] objectForKey:@"original"]];
		self.idNumber = [[json objectForKey:@"id"] integerValue];
		self.liked = [[json objectForKey:@"liked_by_current_user"] boolValue];
		self.user = [[[PX8tracksUser alloc] initWithAccess:accessObject userDictionary:[json objectForKey:@"user"]] autorelease];
		// Tags are not an array normally, we have to split them
		NSString *tagString = [json objectForKey:@"tag_list_cache"];
		self.tags = [tagString componentsSeparatedByString:@", "];
		self.playCount = [[json objectForKey:@"plays_count"] integerValue];
		self.mixDescription = [json objectForKey:@"description"];
		self.publishedDate = [NSDate dateWithString:[json objectForKey:@"first_published_at"]];
		self.url = [NSURL URLWithString:[json objectForKey:@"restful_url"]];
	}
	return self;
}

- (void)dealloc{
	self.name = nil;
	self.coverURL = nil;
	self.user = nil;
	self.tags = nil;
	self.mixDescription = nil;
	self.publishedDate = nil;
	self.url = nil;
    [super dealloc];
}

@end
