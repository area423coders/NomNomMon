//
//  ACNomNomGame.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACNomNomGame.h"
#import "ACNomNomPlayer.h"

@implementation ACNomNomGame

- (id) init
{
    self = [super init];
    self.level = 0;
    ACNomNomPlayer* player = [self.player initPlayer];
    return self;
}

@end
