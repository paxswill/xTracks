//
//  PX8tracksAccess.m
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import "PX8tracksAccess.h"
#import "PX8tracksResults.h"
#import "PX8tracksUser.h"
#import "ASIFormDataRequest.h"
#import "JSONKit.h"

@interface PX8tracksAccess()
@property (nonatomic, retain, readwrite) NSString *apiKey;
@property (nonatomic, assign, readwrite) BOOL loggedIn;
@property (nonatomic, retain, readwrite) PX8tracksUser *currentUser;
@property (nonatomic, retain, readwrite) NSString *userToken;
@property (nonatomic, retain, readwrite) NSString *playToken;
@end

@implementation PX8tracksAccess

@synthesize apiKey;
@synthesize currentUser;
@synthesize loggedIn;
@synthesize userToken;
@synthesize playToken;

- (id)initWithAPIKey:(NSString *)key{
	if((self = [super init])){
		self.apiKey = key;
		self.currentUser = nil;
		self.loggedIn = NO;
		self.userToken = nil;
		sslEverything = NO;
	}
	return self;
}

- (void)dealloc{
	self.apiKey = nil;
	self.userToken = nil;
    [super dealloc];
}

-(BOOL)loginWithUsername:(NSString *)user password:(NSString *)password{
	// Build request
	NSURL *authURL = [NSURL URLWithString:[NSString stringWithFormat:@"https://8tracks.com/sessions.json", self.apiKey, user, password]];
	ASIFormDataRequest *authRequest = [ASIHTTPRequest requestWithURL:authURL];
	// Set params
	[authRequest setPostValue:password forKey:@"password"];
	[authRequest setPostValue:user forKey:@"username"];
	[authRequest setPostValue:self.apiKey forKey:@"api_key"];
	// Run this synchronous so we can check the result
	[authRequest startSynchronous];
	NSDictionary *authResponse = [[authRequest responseData] objectFromJSONData];
	BOOL loggedIn = [[authResponse objectForKey:@"logged_in"] boolValue];
	if(loggedIn){
		self.userToken = [authResponse objectForKey:@"user_token"];
		self.currentUser = [[PX8tracksUser alloc] initWithAccess:self userDictionary:[authResponse objectForKey:@"user"]];
	}
}

@end
