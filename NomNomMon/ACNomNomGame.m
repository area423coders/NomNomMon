//
//  ACNomNomGame.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACNomNomGame.h"
#import "ACNomNomPlayer.h"

@implementation ACNomNomGame {
    NSTimer* timer;
}

- (id) init
{
    self = [super init];
    if( self )
    {
        self.secondsPassed = 0;
        self.level = 0;
        self.player = [[ACNomNomPlayer alloc] init];
        timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timerFireMethod:) userInfo:nil repeats:YES];
    }
    return self;
}

- (void)timerFireMethod:(NSTimer*)theTimer
{
    self.secondsPassed++;
}

@end
