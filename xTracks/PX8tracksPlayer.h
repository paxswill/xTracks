//
//  PX8tracksPlayer.h
//  xTracks
//
//  Created by Will Ross on 5/24/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PX8tracksAccess;
@class PX8tracksMix;

@interface PX8tracksPlayer : NSObject {
@private
	PX8tracksAccess *access;
	PX8tracksMix *currentMix;
    BOOL atStart;
	BOOL atEnd;
	BOOL canSkip;
	// Track Info
	NSString *trackName;
	NSString *trackArtist;
	NSString *trackAlbum;
	NSUInteger trackYear;
	NSInteger trackID;
	NSURL *trackURL;
}
@property (nonatomic, retain, readonly) PX8tracksAccess *access;
@property (nonatomic, retain, readwrite) PX8tracksMix *currentMix;
@property (nonatomic, assign, readonly, getter=atStart, setter=setAtStart:) BOOL atStart;
@property (nonatomic, assign, readonly, getter=atEnd, setter=setAtEnd:) BOOL atEnd;
@property (nonatomic, assign, readonly, getter=canSkip, setter=setCanSkip:) BOOL canSkip;
// Current Track Properties
@property (nonatomic, retain, readonly) NSString *trackName;
@property (nonatomic, retain, readonly) NSString *trackArtist;
@property (nonatomic, retain, readonly) NSString *trackAlbum;
@property (nonatomic, assign, readonly) NSUInteger trackYear;
@property (nonatomic, assign, readonly) NSInteger trackID;
@property (nonatomic, retain, readonly) NSURL *trackURL;

-(id)initWithAccess:(PX8tracksAccess *)access;

-(void)nextSong;
-(void)skipSong;


@end
