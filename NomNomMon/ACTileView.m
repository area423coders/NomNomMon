//
//  ACTileView.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACTileView.h"

@implementation ACTileView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        switch (self.type) {
            case ACEmptyTile:
                // load the empty tile sprite
                break;
            case ACPelletTile:
                // load the pellet tile sprite
                break;
            default:
                break;
        }
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
