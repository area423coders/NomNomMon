//
//  ACChasingGhost.m
//  NomNomMon
//
//  Created by tgay on 5/8/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACChasingGhost.h"

@implementation ACChasingGhost

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void) didGetEaten
{
    // animation for death, send ghost to house, reset to default sprite
}

- (void) respawn
{
    //another iteration of the respective ghost into the house
}

- (void) updateDestinationWithLocation: (CGPoint) nomNomMonLocation
{
    //self.ACDi nomNomMonLocation.x
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
