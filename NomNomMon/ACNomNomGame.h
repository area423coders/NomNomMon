//
//  ACNomNomGame.h
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ACNomNomPlayer;

@interface ACNomNomGame : NSObject

@property ACNomNomPlayer* player;
@property int highScore;
@property int level;
@property NSUInteger secondsPassed;

@end
