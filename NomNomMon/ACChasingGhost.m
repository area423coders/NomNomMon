//
//  ACChasingGhost.m
//  NomNomMon
//
//  Created by tgay on 5/8/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACChasingGhost.h"

@implementation ACChasingGhost

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void) updateDestinationWithLocation: (CGPoint) nomNomMonLocation
{
    self.destination = nomNomMonLocation;
    if( !([self isPointedInDirectionOf: self.destination] && [self canMove] ) )
    {
        [self changeDirection];
    }

//    self.direction
    // point in the right direction
    // are we pointed in the right direction?
    // if we aren't, can we point in the right direction (are we surrounded by walls)?



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
