//
//  PX8tracksResults.h
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PX8tracksAccess;

typedef enum{
	PX8tracksSortRecent,
	PX8tracksSortPopular,
	PX8tracksSortHot,
	PX8tracksSortRandom
}PX8tracksSortOption;

@interface PX8tracksResults : NSObject {
@private
    PX8tracksAccess *parent;
	NSUInteger totalCount;
	NSUInteger perPage;
	PX8tracksSortOption sort;
	NSString *requestString;
}
@property (nonatomic, retain, readonly) PX8tracksAccess *parent;
@property (nonatomic, assign, readwrite) NSUInteger totalCount;
@property (nonatomic, assign, readwrite) NSUInteger perPage;
@property (nonatomic, assign, readwrite) PX8tracksSortOption sort;
@property (nonatomic, retain, readonly) NSString *requestString;

-(id)initWithRequestString:(NSString *)request withParent:(PX8tracksAccess *)access;
-(NSArray *)getPage:(NSUInteger)pageNum;

@end
