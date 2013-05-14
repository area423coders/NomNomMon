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
}

- (void) nextLevel
{
    _map = [[ACMapView alloc] init];
}

- (void) makeFoodAppear
{
    [_map addSubview:[[ACFoodView alloc] init]];
}

- (void) update
{
    [_map updateNomNomMonPosition];
    
    for (int i = 0; i < [_ghosts count]; i++)
    {
        [[_ghosts objectAtIndex:i] updateDestinationWithLocation:[self getPointOnMapForActor:_nomNomMon]];
    }
    
    [_map updateGhostPositions];
    [self checkForCollisions];
    [_scoreLabel setText:[NSString stringWithFormat:@"%i", _game.player.score]];
}

/* Collision Handling */
- (void) checkForCollisions
{
    CGPoint nnp = [self getPointOnMapForActor:_nomNomMon];
    CGPoint gp;
    
    // The only important collisions are between NNM and some actor
    for (int i = 0; i < [_ghosts count]; i++)
    {
        gp = [self getPointOnMapForActor:[_ghosts objectAtIndex:i]];
        
        if (gp.x == nnp.x &&
            gp.y == nnp.y)
        {
            // Send message to game controller
            //[_game nomNomMonDidCollide:[_ghosts objectAtIndex:i]];
        }
    }
}

- (CGPoint) getPointOnMapForActor:(ACActor*)actor
{
    CGPoint point = [actor convertPoint:CGPointMake(128, 128) toView:_map];
    CGPoint result;
    
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
