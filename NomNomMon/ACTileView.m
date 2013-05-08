//
//  ACTileView.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACTileView.h"

@implementation ACTileView

- (id) initWithTileType: (ACTileType) tileType
{
    self = [super init];
    if( self )
    {
        UIImageView* image = [[UIImageView alloc] initWithImage:
                              [UIImage imageNamed:[self imageFileNameForType:tileType]]];
        [self addSubview:image];
    }
    return self;
}

- (NSString*) imageFileNameForType: (ACTileType) tileType
{
    switch (tileType) {
        case ACEmptyTile:
            return @"emptytile.png";
            break;
        case ACPelletTile:
            return @"pelletTile.png";
            break;
        case ACPowerPelletTile:
            return @"powerpellettile.png";
            break;
        default:
            return @"emptytile.png";
            break;
    }
}

@end
