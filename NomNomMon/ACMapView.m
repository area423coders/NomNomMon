//
//  ACMapView.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACMapView.h"
#import "ACTileView.h"

@implementation ACMapView

- (id) initWithFrame:(CGRect)frame  andTiles: (NSArray*) tiles
{
    self = [super initWithFrame:frame];
    if( self )
    {
        self.tiles = [self setupTileViewsWithArray: tiles];
    }
    return self;
}

- (void) updateGhostPositions
{}

- (void) updateNomNomMonPosition
{}

- (void) setTileType: (ACTileType) type atRow: (NSUInteger) row andColumn: (NSUInteger) column
{
    ACTileView* tile = [self getTileAtRow:row andColumn:column];
    tile.type = type;
}

- (ACTileView*) getTileAtRow: (NSUInteger) row andColumn: (NSUInteger) column
{
    NSUInteger index = row * self.COLS + column;
    return [self.tiles objectAtIndex:index];
}

- (NSArray*) setupTileViewsWithArray: (NSArray*) tileTypes
{
    NSMutableArray* tileViews = [NSMutableArray arrayWithCapacity:[tileTypes count]];
    for( NSNumber* tileType in tileTypes )
    {
        [tileViews addObject:[[ACTileView alloc] initWithTileType:[tileType integerValue]]];
    }
    return tileViews;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    NSLog( @"drawing the map");
    for( int i = 0; i < self.ROWS; i++ )
    {
        for( int j = 0; j < self.COLS; j++ )
        {
            ACTileView* tv = [self getTileAtRow:i andColumn:j];
            tv.frame = CGRectMake(j*self.tileSize, i*self.tileSize, self.tileSize, self.tileSize);
            [self addSubview:tv];
        }
    }
}


@end
