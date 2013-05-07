//
//  ACGhost.h
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//  Tristan
//

#import <UIKit/UIKit.h>
#import "ACActor.h"

@interface ACGhost : ACActor

- (void) ghostInit
{
    
}

- (void) panic
{
    self.setSpeed (self.getSpeed / 1.5)
}

- (void) kill
{
    // animation for death, send ghost to house, reset to default sprite
}
- (BOOL) isAlive
{
    if ()
    {
        return
    }
    else
    {
        return false
    }
    //is ghost dead? return false, else return true
}

- (void) respawn
{
    //another iteration of the respective ghost into the house
}

- (void) ghostPathfinding
{
    // Search for the mouth and butt of Pac-Man
}

- (void) getPos
{
    // get the position of the ghost
}

- (void) setSpeed
{
    //set speed of the ghost based on current ghost mood
}
- (void) getSpeed
{
    
}

@end
