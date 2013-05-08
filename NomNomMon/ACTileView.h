//
//  ACTileView.h
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ACTileType) {
    ACEmptyTile,
    ACPelletTile,
    ACPowerPelletTile,
    ACSingleWallTile,
    ACTwoCornerWAllTile,
    ACOneCornerWallTile,
    ACFourRoundedCornersTile
};

@interface ACTileView : UIView

@property ACTileType type;

@end
