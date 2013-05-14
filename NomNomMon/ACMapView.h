//
//  ACMapView.h
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//  Turner
//

#import <UIKit/UIKit.h>
#import "ACTileView.h"

@class ACNomNomMon, ACGhost;

@interface ACMapView : UIView

@property NSArray* tiles;
@property ACNomNomMon* nomNomMon;
@property NSArray* ghosts;

- (void) updateGhostPositions;
- (void) updateNomNomMonPosition;
- (ACTileView*) getTileAtRow: (NSUInteger) row andColumn: (NSUInteger) column;
- (void) setTileType: (ACTileType) type atRow: (NSUInteger) row andColumn: (NSUInteger) column;

@end
