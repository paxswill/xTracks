//
//  PX8tracksTrack.h
//  xTracks
//
//  Created by Will Ross on 5/24/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PX8tracksTrack : NSObject {
@private
    NSString *trackName;
	NSString *trackArtist;
	NSString *trackAlbum;
	NSUInteger trackYear;
	NSInteger trackID;
	NSURL *trackURL;
	BOOL favorite;
	NSURL *buyLink;
}
@property (nonatomic, retain, readonly) NSString *trackName;
@property (nonatomic, retain, readonly) NSString *trackArtist;
@property (nonatomic, retain, readonly) NSString *trackAlbum;
@property (nonatomic, assign, readonly) NSUInteger trackYear;
@property (nonatomic, assign, readonly) NSInteger trackID;
@property (nonatomic, retain, readonly) NSURL *trackURL;
@property (nonatomic, assign, readwrite) BOOL favorite;
@property (nonatomic, retain, readonly) NSURL *buyLink;

@end
