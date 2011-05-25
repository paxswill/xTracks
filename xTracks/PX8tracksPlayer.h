//
//  PX8tracksPlayer.h
//  xTracks
//
//  Created by Will Ross on 5/24/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PX8tracksObject.h"

@class PX8tracksMix;
@class PX8tracksTrack;

@interface PX8tracksPlayer : PX8tracksObject {
@private
	PX8tracksMix *currentMix;
	PX8tracksTrack *currentTrack;
    BOOL atStart;
	BOOL atEnd;
	BOOL canSkip;
}
@property (nonatomic, retain, readwrite) PX8tracksMix *currentMix;
@property (nonatomic, retain, readonly) PX8tracksTrack *currentTrack;
@property (nonatomic, assign, readonly, getter=atStart, setter=setAtStart:) BOOL atStart;
@property (nonatomic, assign, readonly, getter=atEnd, setter=setAtEnd:) BOOL atEnd;
@property (nonatomic, assign, readonly, getter=canSkip, setter=setCanSkip:) BOOL canSkip;

-(id)initWithAccess:(PX8tracksAccess *)access;

-(void)nextSong;
-(void)skipSong;

-(PX8tracksMix *)nextMix;

@end
