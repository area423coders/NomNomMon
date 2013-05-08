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
}

/* Collision Handling */
- (void) checkForCollisions
{
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
