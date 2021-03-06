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
    [self startGame]; // Mr. Oswald changed the order of these
    [self.view addSubview:_map];
}

- (void) startGame
{
    _game = [[ACNomNomGame alloc] init];
}

- (void) nextLevel
{
    _map = [[ACMapView alloc] init];
}

- (void) makeFoodAppear
{
    [_map addSubview:[[ACFoodView alloc] init]];
}

/* Called by whatever is looping */
- (void) updateWithDelta:(NSTimeInterval) delta
{
    // Moves Nom Nom Mon across the board
    [_map updateNomNomMonPosition];
    
    // Tells ghosts where Nom Nom Mon is
    for (int i = 0; i < [_ghosts count]; i++)
    {
        [[_ghosts objectAtIndex:i] updateDestinationWithLocation:[self getPointOnMapForActor:_nomNomMon]];
    }
    
    // Moves ghosts across the map
    [_map updateGhostPositions];
    
    // Checks for collisions with Nom Nom Mon
    [self checkForCollisions];
    
    [_scoreLabel setText:[NSString stringWithFormat:@"%i", _game.player.score]];
    
    // if game is over:
    if ([_game isGameOver])
    {
        //  segue to scoreboard or display "Game Over" alert
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"Nom Nom Mon has fallen." delegate:self cancelButtonTitle:@"kk bro" otherButtonTitles:nil];
        [alert show];
        // game stops automatically
    }
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
            // Send message to affected actors
            if ([[_ghosts objectAtIndex:i] state] == ACGhostPanicking)
            {
                [[_ghosts objectAtIndex:i] didGetEaten];
            }
            else
            {
                // Tell the game controller that Nom Nom Mon died
                [_nomNomMon animateDeath];
                
                // Tell the game controller that Nom Nom Mon died
                [_game playerDidDie];
            }
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

// Methods to respond to swipes
// swipeLeft: change NNM's direction to West if possible
// swipeRight: change NNM's direction to East if possible
// swipeUp: change NNM's direction to North if possible
// swipeDown: change NNM's direction to South if possible

@end
