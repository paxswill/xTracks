//
//  PX8tracksUser.m
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import "PX8tracksUser.h"

@interface PX8tracksUser()
@property (nonatomic, retain, readwrite) NSString *name;
@property (nonatomic, assign, readwrite) NSInteger userID;
@property (nonatomic, retain, readwrite) NSURL *avatarURL;
@property (nonatomic, assign, readwrite) BOOL followed;
@property (nonatomic, assign, readwrite) PX8tracksUserSetting openNewWindows;
@property (nonatomic, assign, readwrite) PX8tracksUserSetting playNextMix;
@property (nonatomic, retain, readwrite) NSString *neighborhood;
@property (nonatomic, retain, readwrite) NSString *city;
@property (nonatomic, retain, readwrite) NSString *country;
@property (nonatomic, retain, readwrite) NSURL *url;
@end

@implementation PX8tracksUser

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
