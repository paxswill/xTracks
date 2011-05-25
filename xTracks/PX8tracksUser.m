//
//  PX8tracksUser.m
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import "PX8tracksUser.h"
#import "PX8tracksMix.h"

@interface PX8tracksUser()
@property (nonatomic, retain, readwrite) NSString *name;
@property (nonatomic, assign, readwrite) NSInteger userID;
@property (nonatomic, retain, readwrite) NSURL *avatarURL;
@property (nonatomic, assign, readwrite) PX8tracksUserSetting openNewWindows;
@property (nonatomic, assign, readwrite) PX8tracksUserSetting playNextMix;
@property (nonatomic, retain, readwrite) NSString *location;
@property (nonatomic, retain, readwrite) NSURL *url;
-(PX8tracksUserSetting)parseUserSetting:(NSString *)setting;
@end

@implementation PX8tracksUser

@synthesize name;
@synthesize userID;
@synthesize avatarURL;
@synthesize followed;
@synthesize openNewWindows;
@synthesize playNextMix;
@synthesize location;
@synthesize url;

-(id)initWithAccess:(PX8tracksAccess *)accessObject userDictionary:(NSDictionary *)json{
	if((self = [super initWithAccess:accessObject])){
		self.name = [json objectForKey:@"login"];
		self.userID = [[json objectForKey:@"id"] intValue];
		self.avatarURL = [NSURL URLWithString:[[json objectForKey:@"avatar_urls"] objectForKey:@"max200"]];
		self.followed = [[json objectForKey:@"followed_by_current_user"] boolValue];
		self.openNewWindows = [self parseUserSetting:[json objectForKey:@"popup_prefs"]];
		self.playNextMix = [self parseUserSetting:[json objectForKey:@"next_mix_prefs"]];
		// Parse the location data
		self.location = [json objectForKey:@"location"];
		self.url = [NSURL URLWithString:[NSString stringWithFormat:@"http://8tracks.com/users/%@", [json objectForKey:@"slug"]]];
	}
	return self;
}

- (void)dealloc{
	self.name = nil;
	self.avatarURL = nil;
	self.location = nil;
	self.url = nil;
    [super dealloc];
}

-(PX8tracksUserSetting)parseUserSetting:(NSString *)setting{
	if([setting caseInsensitiveCompare:@"ask"] == NSOrderedSame){
		return PX8tracksAskSetting;
	}else if([setting caseInsensitiveCompare:@"stay"] == NSOrderedSame || [setting caseInsensitiveCompare:@"current"] == NSOrderedSame){
		return PX8tracksNeverSetting;
	}else if([setting caseInsensitiveCompare:@"tab"] == NSOrderedSame || [setting caseInsensitiveCompare:@"go"] == NSOrderedSame){
		return PX8TracksAlwaysSetting;
	}
	return PX8tracksAskSetting;
}

@end
