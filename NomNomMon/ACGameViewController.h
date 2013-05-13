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
#import "ACNomNomPlayer.h"

@interface ACGameViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@property ACMapView* map;
@property ACNomNomGame* game;
@property NSTimer* timer;

@property ACNomNomMon* nomNomMon;
@property NSArray* ghosts;

- (void) startGame;
- (void) nextLevel;

- (void) update;
- (void) checkForCollisions; // Checks for collisions, then notifies the objects
- (CGPoint) getPointOnMap:(CGPoint)point;

@end
