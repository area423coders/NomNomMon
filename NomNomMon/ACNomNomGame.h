//
//  ACNomNomGame.h
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ACNomNomPlayer;
@class ACGameViewController;

@interface ACNomNomGame : NSObject

@property ACNomNomPlayer* player;
@property int highScore;
@property int level;
@property ACGameViewController* viewController;
@property NSUInteger secondsPassed;

- (id) initWithGameViewController:(ACGameViewController*) gvc;

// Called when Nom Nom Mon is eaten
- (void) playerDidDie;

// Checks if game is over
- (BOOL) isGameOver;

@end
