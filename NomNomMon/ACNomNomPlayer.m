//
//  ACNomNomPlayer.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//  Parker Diamond
//

#import "ACNomNomPlayer.h"

@implementation ACNomNomPlayer

- (id) init
{
    if (self = [super init])
    {
        [self setScore:0];
        [self setNumberOfLives:2];
    }
    return  self;
}


@end
