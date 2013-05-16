//
//  ACActor.h
//  NomNomMon
//
//  Created by Jason Oswald on 4/25/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//  Roger

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ACDirection) {
    ACDirectionNorth,
    ACDirectionEast,
    ACDirectionSouth,
    ACDirectionWest  // there's more
};

@interface ACActor : UIView

@property ACDirection direction;

- (BOOL) isNortherly: (CGPoint) point;
- (BOOL) isEasterly: (CGPoint) point;
- (BOOL) isSoutherly: (CGPoint) point;
- (BOOL) isWesterly: (CGPoint) point;
- (BOOL) isPointedInDirectionOf: (CGPoint) point;
- (BOOL) canMove;

+ (ACDirection) randomDirection;

@end
