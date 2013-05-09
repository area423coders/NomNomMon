//
//  ACGameViewController.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//  testing out github connection
//  Alec
//

#import "ACGameViewController.h"
#import "ACMapView.h"
#import "ACFoodView.h"

@interface ACGameViewController ()

@end

@implementation ACGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:_map];
    
    [self startGame];
}

- (void) startGame
{
    _game = [[ACNomNomGame alloc] init];
    _map = [[ACMapView alloc] init];
    
    // Create timer
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                             target:self
                                           selector:@selector(update)
                                           userInfo:nil
                                            repeats:YES];
}

- (void) nextLevel
{
    _game = [[ACNomNomGame alloc] init];
}

- (void) makeFoodAppear
{
    [_map addSubview:[[ACFoodView alloc] init]];
}

- (void) update
{
    [_map updateNomNomMonPosition];
    [_map updateGhostPositions];
    [self checkForCollisions];
    [_scoreLabel setText:[NSString stringWithFormat:@"%i", _game.player.score]];
}

/* Collision Handling */
- (void) checkForCollisions
{
    NMPoint nnp = [self getPointOnMap:[_nomNomMon convertPoint:CGPointMake(33, 33) toView:_map]];
    // The only important collisions are between NNM and some actor
    /*for (int i = 0; i < [_ghosts count]; i++)
    {
        // What this will be
        if ([[_ghosts objectAtIndex:i] tile] == [_nomNomMon tile])
        {
            // Send message to game controller
            [_game nomNomMonCollision:[_ghosts objectAtIndex:i]];
        }
    }*/
}

- (NMPoint) getPointOnMap:(CGPoint)point
{
    NMPoint result;
    result.x = point.x / 66;
    result.y = point.y / 66;
    
    return result;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
