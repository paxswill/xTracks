//
//  xTracksAppDelegate.h
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface xTracksAppDelegate : NSObject <NSApplicationDelegate> {
@private
	NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
