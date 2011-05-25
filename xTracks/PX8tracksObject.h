//
//  PX8tracksObject.h
//  xTracks
//
//  Created by Will Ross on 5/24/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PX8tracksAccess;

@interface PX8tracksObject : NSObject {
@protected
    PX8tracksAccess *access;
}
@property (nonatomic, retain, readwrite) PX8tracksAccess *access;

-(id)initWithAccess:(PX8tracksAccess *)accessObject;

@end
