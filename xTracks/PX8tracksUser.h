//
//  PX8tracksUser.h
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PX8tracksObject.h"

typedef enum{
	PX8tracksNeverSetting,
	PX8TracksAlwaysSetting,
	PX8tracksAskSetting,
} PX8tracksUserSetting;

@interface PX8tracksUser : PX8tracksObject {
@private
    NSString *name;
	NSInteger userID;
	NSURL *avatarURL;
	BOOL followed;
	PX8tracksUserSetting openNewWindows;
	PX8tracksUserSetting playNextMix;
	NSString *location;
	NSURL *url;
}
@property (nonatomic, retain, readonly) NSString *name;
@property (nonatomic, assign, readonly) NSInteger userID;
@property (nonatomic, retain, readonly) NSURL *avatarURL;
@property (nonatomic, assign, readwrite) BOOL followed;
@property (nonatomic, assign, readonly) PX8tracksUserSetting openNewWindows;
@property (nonatomic, assign, readonly) PX8tracksUserSetting playNextMix;
@property (nonatomic, retain, readonly) NSString *location;
@property (nonatomic, retain, readonly) NSURL *url;

-(id)initWithAccess:(PX8tracksAccess *)accessObject userDictionary:(NSDictionary *)json;

-(NSArray *)userMixes;
-(NSArray *)likedMixes;

@end
