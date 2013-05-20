//
//  ACGameViewController.h
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//  Alec
//

// DirectX is inferior to OpenGL

#import <UIKit/UIKit.h>
#import "ACMapView.h"
#import "ACNomNomMon.h"
#import "ACGhost.h"
#import "ACNomNomGame.h"
#import "ACNomNomPlayer.h"

@interface ACGameViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@property ACMapView* map;
@property ACNomNomGame* game;

@property ACNomNomMon* nomNomMon;
@property NSArray* ghosts;

- (void) startGame;
- (void) nextLevel;

- (void) updateWithDelta:(NSTimeInterval) delta;
- (void) checkForCollisions; // Checks for collisions, then notifies the objects
- (CGPoint) getPointOnMapForActor:(ACActor*)actor;

@end
