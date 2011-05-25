//
//  PX8tracksMix.h
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PX8tracksObject.h"

@class PX8tracksUser;

@interface PX8tracksMix : PX8tracksObject {
@private
    NSString *name;
	BOOL published;
	NSURL *coverURL;
	NSInteger idNumber;
	BOOL liked;
	PX8tracksUser *user;
	NSArray *tags;
	NSUInteger playCount;
	NSString *mixDescription;
	NSDate *publishedDate;
	NSURL *url;
}
@property (nonatomic, retain, readonly) NSString *name;
@property (nonatomic, assign, readonly) BOOL published;
@property (nonatomic, retain, readonly) NSURL *coverURL;
@property (nonatomic, assign, readonly) NSInteger idNumber;
@property (nonatomic, assign, readonly) BOOL liked;
@property (nonatomic, retain, readonly) PX8tracksUser *user;
@property (nonatomic, retain, readonly) NSArray *tags;
@property (nonatomic, assign, readonly) NSUInteger playCount;
@property (nonatomic, retain, readonly) NSString *mixDescription;
@property (nonatomic, retain, readonly) NSDate *publishedDate;
@property (nonatomic, retain, readonly) NSURL *url;

// Initializer From JSON

-(NSArray *)tracksPlayed;

@end
