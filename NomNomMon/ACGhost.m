//
//  ACGhost.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACGhost.h"

@implementation ACGhost {
    CGPoint initialLocation;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.state = ACGhostWaiting;
        initialLocation = frame.origin;
    }
    return self;
    self.eaten = NO;
}
- (void) initialState // When the ghost spawns
{
    self.eaten = NO;
    self.state = ACGhostWaiting;
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
 
- (void) didGetEaten
{
    // change the imageview to eyes
    self.eaten = YES;
    self.state = ACGhostWaiting;
    [self respawn];
}

        
- (void) respawn
{
    // animate return to ghost house
    [UIView animateWithDuration:1.0 animations:^{
        self.frame = CGRectMake(initialLocation.x, initialLocation.y, self.frame.size.width, self.frame.size.height);
    }];
    self.eaten = NO;
    // change the imageview to ghosts
}

- (void) respawnAllGhosts // used when NomNomMon dies, and the board resets.
{
    for (int i = 0; i < 5; i++)
    {
        self.state = ACGhostWaiting;
        [self respawn];
    }
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