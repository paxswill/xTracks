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
@property (nonatomic, retain, readwrite) PX8tracksAccess *access;
@property (nonatomic, assign, readwrite, getter=atStart, setter=setAtStart:) BOOL atStart;
@property (nonatomic, assign, readwrite, getter=atEnd, setter=setAtEnd:) BOOL atEnd;
@property (nonatomic, assign, readwrite, getter=canSkip, setter=setCanSkip:) BOOL canSkip;
// Current Track Properties
@property (nonatomic, retain, readwrite) NSString *trackName;
@property (nonatomic, retain, readwrite) NSString *trackArtist;
@property (nonatomic, retain, readwrite) NSString *trackAlbum;
@property (nonatomic, assign, readwrite) NSUInteger trackYear;
@property (nonatomic, assign, readwrite) NSInteger trackID;
@property (nonatomic, retain, readwrite) NSURL *trackURL;
@end

@implementation PX8tracksPlayer

@synthesize access;
@synthesize currentMix;
@synthesize atStart;
@synthesize atEnd;
@synthesize canSkip;
@synthesize trackName;
@synthesize trackArtist;
@synthesize trackAlbum;
@synthesize trackYear;
@synthesize trackID;
@synthesize trackURL;

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
