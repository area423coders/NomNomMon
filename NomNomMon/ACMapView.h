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
#import "ACActor.h"

@class ACNomNomMon, ACGhost;

@interface ACMapView : UIView

@property NSArray* tiles;
@property ACNomNomMon* nomNomMon;
@property NSArray* ghosts;
@property NSUInteger ROWS;
@property NSUInteger COLS;
@property NSUInteger tileSize;

- (id) initWithFrame:(CGRect)frame  andTiles: (NSArray*) tiles;
- (void) updateGhostPositions;
- (void) updateNomNomMonPosition;
- (ACTileView*) getTileAtRow: (NSUInteger) row andColumn: (NSUInteger) column;
- (void) setTileType: (ACTileType) type atRow: (NSUInteger) row andColumn: (NSUInteger) column;
- (BOOL) isWallInDirection: (ACDirection) direction fromLocation: (CGRect) frame;

@end
