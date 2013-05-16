//
//  ACActor.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/25/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACActor.h"

@implementation ACActor

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (BOOL) isNortherly: (CGPoint) point
{
    return point.y < self.frame.origin.y;
}

- (BOOL) isEasterly: (CGPoint) point
{
    return point.x > self.frame.origin.x;
}

- (BOOL) isSoutherly: (CGPoint) point
{
    return point.y > self.frame.origin.y;
}

- (BOOL) isWesterly: (CGPoint) point
{
    return point.x < self.frame.origin.x;
}

- (BOOL) isPointedInDirectionOf: (CGPoint) point
{
    switch (self.direction) {
        case ACDirectionNorth:
            return [self isNortherly:point];
            break;
        case ACDirectionEast:
            return [self isEasterly:point];
            break;
        case ACDirectionSouth:
            return [self isSoutherly:point];
            break;
        case ACDirectionWest:
            return [self isWesterly:point];
            break;
        default:
            return NO;
            break;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
