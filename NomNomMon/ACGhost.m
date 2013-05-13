//
//  ACGhost.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACGhost.h"

@implementation ACGhost

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.speed = 0; // pixels per whatever
        self.state = ACGhostWaiting;
    }
    return self;
}
- (void) initialState
{
    ACGhost.setstate(ACGhostWaiting)
}
- (void) setState:(ACGhostState)state
{
    switch (state) {
        case ACGhostWaiting:
            self.speed = 0;
            break;
        case ACGhostChasing:
            self.speed = 100;
            break;
        case ACGhostPanicking:
            self.speed = 50;
            break;
        default:
            self.speed = 0;
            break;
    }
    self.state = state;
}

- (BOOL) ghostSharingTileWithNomNomMon
{
    
    if (/*nomNomMon.tile == ghost.tile*/)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

- (void) didGetEaten
{
    if (/*ghostSharingTileWithNomNomMon == YES*/)
    {
        
    }// send ghost to house, reset to default sprite
}


- (void) respawn
{
    //another iteration of the respective ghost into the house
}

- (void) updateDestinationWithLocation: (CGPoint) nomNomMonLocation
{
    
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
