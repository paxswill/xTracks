//
//  PX8tracksAccess.h
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PX8tracksResults;

@interface PX8tracksAccess : NSObject {
@private
    NSString *apiKey;
	NSString *userName;
	BOOL loggedIn;
	NSString *userToken;
}
@property (nonatomic, retain, readonly) NSString *apiKey;
@property (nonatomic, retain, readwrite) NSString *userName;
@property (nonatomic, assign, readonly) BOOL loggedIn;
@property (nonatomic, retain, readonly) NSString *userToken;

-(id)initWithAPIKey:(NSString *)key;

-(PX8tracksResults *)mixes;
-(PX8tracksResults *)search:(NSString *)searchString;

@end
