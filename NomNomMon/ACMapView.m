//
//  ACMapView.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACMapView.h"

@implementation ACMapView {
    NSUInteger ROWS;
    NSUInteger COLS;
    NSUInteger tileSize;
    NSArray* tiles;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void) setTileType: (ACTileType) type atRow: (NSUInteger) row andColumn: (NSUInteger) column
{
    ACTileView* tile = [self getTileAtRow:row andColumn:column];
    tile.type = type;
}

- (ACTileView*) getTileAtRow: (NSUInteger) row andColumn: (NSUInteger) column
{
    NSUInteger index = row * ROWS + column;
    return [tiles objectAtIndex:index];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    // loop over all of the tiles and draw them
}
*/

@end
