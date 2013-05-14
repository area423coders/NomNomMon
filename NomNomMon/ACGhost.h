//
//  ACGhost.h
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//  Tristan
//  Ankit
//  Hayden

#import <UIKit/UIKit.h>
#import "ACActor.h"

typedef NS_ENUM(NSInteger, ACGhostState) {
    ACGhostChasing,
    ACGhostPanicking,
    ACGhostWaiting
};


@interface ACGhost : ACActor

@property CGFloat speed;
@property (nonatomic) ACGhostState state;
@property 
 

- (void) didGetEaten;
- (void) updateDestinationWithLocation: (CGPoint) nomNomMonLocation;

@end