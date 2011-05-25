//
//  PX8tracksPlayer.m
//  xTracks
//
//  Created by Will Ross on 5/24/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import "PX8tracksPlayer.h"
#import "PX8tracksAccess.h"
#import "PX8tracksMix.h"

@interface PX8tracksPlayer()
@property (nonatomic, retain, readwrite) PX8tracksTrack *currentTrack;
@property (nonatomic, assign, readwrite, getter=atStart, setter=setAtStart:) BOOL atStart;
@property (nonatomic, assign, readwrite, getter=atEnd, setter=setAtEnd:) BOOL atEnd;
@property (nonatomic, assign, readwrite, getter=canSkip, setter=setCanSkip:) BOOL canSkip;
@end

@implementation PX8tracksPlayer
@synthesize currentMix;
@synthesize currentTrack;
@synthesize atStart;
@synthesize atEnd;
@synthesize canSkip;

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
