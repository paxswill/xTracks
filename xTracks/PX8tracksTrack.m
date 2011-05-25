//
//  PX8tracksTrack.m
//  xTracks
//
//  Created by Will Ross on 5/24/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import "PX8tracksTrack.h"

@interface PX8tracksTrack()
@property (nonatomic, retain, readwrite) NSString *trackName;
@property (nonatomic, retain, readwrite) NSString *trackArtist;
@property (nonatomic, retain, readwrite) NSString *trackAlbum;
@property (nonatomic, assign, readwrite) NSUInteger trackYear;
@property (nonatomic, assign, readwrite) NSInteger trackID;
@property (nonatomic, retain, readwrite) NSURL *trackURL;
@property (nonatomic, retain, readwrite) NSURL *buyLink;
@end

@implementation PX8tracksTrack
@synthesize trackName;
@synthesize trackArtist;
@synthesize trackAlbum;
@synthesize trackYear;
@synthesize trackID;
@synthesize trackURL;
@synthesize favorite;
@synthesize buyLink;

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
