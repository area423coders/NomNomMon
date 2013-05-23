//
//  ACNomNomGame.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACNomNomGame.h"
#import "ACNomNomPlayer.h"
#import "ACGameViewController.h"

@implementation ACNomNomGame {
    NSTimer* timer;
}

- (id) initWithGameViewController:(ACGameViewController*) gvc
{
    self = [super init];
    if( self )
    {
        self.secondsPassed = 0;
        self.level = 0;
        self.player = [[ACNomNomPlayer alloc] init];
        self.viewController = gvc;
        timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timerFireMethod:) userInfo:nil repeats:YES];
    }
    return self;
}

- (void)timerFireMethod:(NSTimer*)theTimer
{
    self.secondsPassed++;
    
    // if the game has ended
    if ([self isGameOver])
    {
        // stop game
        [timer invalidate];
    }
    else
    {
        // call updateWithDelta in ACGameViewController
        [_viewController updateWithDelta:1.0];
    }
}


- (void) playerDidDie
{
    //decrease # of lives the player has
    _player.numberOfLives--;
}

// returns true if NNM has <= 0 respawns left.
- (BOOL) isGameOver
{
    return _player.numberOfLives <= 0;
}

@end
