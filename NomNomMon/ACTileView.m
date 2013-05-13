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
    switch (tileType)
    {
        case ACEmptyTile:
            return @"emptytile.png";
            break;
        case ACPelletTile:
            return @"pelletTile.png";
            break;
        case ACPowerPelletTile:
            return @"powerpellettile.png";
            break;
        case ACSingleWallTile:
            return @"wall0corners.png";
            break;
        case ACTwoRoundedCornerNTile:
            return @"redSquare@,png";
            break;
        case ACOneRoundedCornerNWTile:
            return @"Wall1Corner.png";
            break;
        case ACFourRoundedCornersTile:
            return @"wall4Corners.png";
            break;
        case ACOneRoundedCornerNETile:
            return @"NE.png";
            break;
        case ACOneRoundedCornerSETile:
            return @"SE.png";
            break;
        case ACOneRoundedCornerSWTile:
            return @"SW.png";
            break;
        case ACTwoRoundedCornerETile:
            return @"E.png";
            break;
        case ACTwoRoundedCornerSTile:
            return @"S.png";
            break;
        case ACTwoRoundedCornerWTile:
            return @"W.png";
            break;
        default:
            return @"emptytile.png";
            break;
    }
}

@end
