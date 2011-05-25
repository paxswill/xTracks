//
//  PX8tracksAccess.m
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import "PX8tracksAccess.h"
#import "PX8tracksResults.h"

@interface PX8tracksAccess()
@property (nonatomic, retain, readwrite) NSString *apiKey;
@property (nonatomic, assign, readwrite) BOOL loggedIn;
@property (nonatomic, retain, readwrite) NSString *userToken;
@property (nonatomic, retain, readwrite) NSString *playToken;
@end

@implementation PX8tracksAccess

@synthesize apiKey;
@synthesize userName;
@synthesize loggedIn;
@synthesize userToken;
@synthesize playToken;

- (id)initWithAPIKey:(NSString *)key{
	if((self = [super init])){
		self.apiKey = key;
		self.userName = nil;
		self.loggedIn = NO;
		self.userToken = nil;
	}
	return self;
}

- (void)dealloc{
	self.apiKey = nil;
	self.userName = nil;
	self.userToken = nil;
    [super dealloc];
}

@end
