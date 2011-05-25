//
//  PX8tracksAccess.h
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PX8tracksResults;
@class PX8tracksUser;

@interface PX8tracksAccess : NSObject {
@private
    NSString *apiKey;
	PX8tracksUser *currentUser;
	BOOL loggedIn;
	NSString *userToken;
	NSString *playToken;
	BOOL sslEverything;
}
@property (nonatomic, retain, readonly) NSString *apiKey;
@property (nonatomic, retain, readonly) PX8tracksUser *currentUser;
@property (nonatomic, assign, readonly) BOOL loggedIn;
@property (nonatomic, retain, readonly) NSString *userToken;
@property (nonatomic, retain, readonly) NSString *playToken;

-(id)initWithAPIKey:(NSString *)key;

-(BOOL)loginWithUsername:(NSString *)user password:(NSString *)password;

-(PX8tracksResults *)mixes;
-(PX8tracksResults *)search:(NSString *)searchString;
-(PX8tracksResults *)mixesForUser:(PX8tracksUser *)user;

@end
