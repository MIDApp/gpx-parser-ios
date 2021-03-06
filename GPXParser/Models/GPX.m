//
//  GPX.m
//  GPX Reader
//
//  Created by Jelle Vandebeeck on 29/01/12.
//  Copyright (c) 2012 fousa. All rights reserved.
//

#import "GPX.h"

@implementation GPX
@synthesize tracks=_tracks;
@synthesize routes=_routes;
@synthesize waypoints=_waypoints;
@synthesize filename=_filename;
@synthesize region=_region;

#pragma mark - Initialization

- (id)init {
    if (self = [super init]) {
        self.tracks    = [NSMutableArray array];
        self.routes    = [NSMutableArray array];
        self.waypoints = [NSMutableArray array];
    }
    return self;
}

#pragma mark - String

- (NSString *)description {
    return [NSString stringWithFormat:@"<GPX (tracks %lu routes %lu waypoints %lu)>", (unsigned long)_tracks.count, (unsigned long)_routes.count, (unsigned long)_waypoints.count];
}

@end
