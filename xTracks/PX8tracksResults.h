//
//  PX8tracksResults.h
//  xTracks
//
//  Created by Will Ross on 5/23/11.
//  Copyright 2011 Will Ross. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PX8tracksObject.h"

@class ASIFormDataRequest;

typedef enum{
	PX8tracksSortRecent,
	PX8tracksSortPopular,
	PX8tracksSortHot,
	PX8tracksSortRandom
}PX8tracksSortOption;

@interface PX8tracksResults : PX8tracksObject {
@private
	NSUInteger totalCount;
	NSUInteger perPage;
	PX8tracksSortOption sort;
	ASIFormDataRequest *resultRequest;
}
@property (nonatomic, assign, readwrite) NSUInteger totalCount;
@property (nonatomic, assign, readwrite) NSUInteger perPage;
@property (nonatomic, assign, readwrite) PX8tracksSortOption sort;
@property (nonatomic, retain, readonly) ASIFormDataRequest *resultRequest;

-(id)initWithAccess:(PX8tracksAccess *)accessObject andRequest:(ASIFormDataRequest *)request;

-(id)initWithRequestString:(NSString *)request withAccess:(PX8tracksAccess *)accessObject;
-(NSArray *)getPage:(NSUInteger)pageNum;

@end
