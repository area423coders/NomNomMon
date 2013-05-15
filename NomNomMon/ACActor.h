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

- (void) changeDirectionTo: (ACDirection) newDirection;
- (void) changeDirectionTo: (ACDirection) newDirection withRotationAnimation: (BOOL) animate;
- (void) updatePositionWithTimeInterval: (NSTimeInterval) timeSinceLastUpdate;

+ (ACDirection) randomDirection;

@end
