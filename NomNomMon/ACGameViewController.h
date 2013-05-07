//
//  ACGameViewController.h
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//  Alec
//

#import <UIKit/UIKit.h>
#import "ACMapView.h"
#import "ACNomNomMon.h"
#import "ACNomNomGame.h"

@interface ACGameViewController : UIViewController

@property ACMapView* map;
@property ACNomNomGame* game;

@property ACNomNomMon* nomNomMon;
@property NSArray* ghosts;

- (void) startGame;

- (void) checkForCollisions; // Checks for collisions, then notifies the objects

@end
