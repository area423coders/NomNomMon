//
//  ACActor.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/25/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACActor.h"

@implementation ACActor

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void) updatePositionWithTimeInterval: (NSTimeInterval) timeSinceLastUpdate
{
    NSTimeInterval idealFR = 1.0 / 60.0;
    CGFloat idealPixelMovement = 5.0;
    CGFloat actualPixelMovement = idealPixelMovement * (timeSinceLastUpdate / idealFR );
    CGFloat dx, dy;
    switch (self.direction) {
        case ACDirectionNorth:
            dx = 0;
            dy = -actualPixelMovement;
            break;
        case ACDirectionEast:
            dx = actualPixelMovement;
            dy = 0;
            break;
        case ACDirectionSouth:
            dx = 0;
            dy = actualPixelMovement;
            break;
        case ACDirectionWest:
            dx = -actualPixelMovement;
            dy = 0;
            break;
        default:
            dx = 0;
            dy = 0;
            break;
    }
    CGRect newFrame = CGRectMake(self.frame.origin.x+dx, self.frame.origin.y+dy, self.frame.size.width, self.frame.size.height);
    self.frame = newFrame;
}

- (void) changeDirectionTo: (ACDirection) newDirection
{
    [self changeDirectionTo:newDirection withRotationAnimation:YES];
}

- (void) changeDirectionTo: (ACDirection) newDirection withRotationAnimation: (BOOL) animate
{
    if( animate )
    {
        NSInteger change = self.direction - newDirection;
        [UIView animateWithDuration:ABS(change) * (0.3) delay:0.0 options:NO animations:^{
            self.transform = CGAffineTransformRotate(self.transform, change * (M_PI/2) ) ;
            
        } completion:nil ];
    }
    self.direction = newDirection;
}

+ (ACDirection) randomDirection
{
    int directionAsInt = arc4random() % 4;
    switch (directionAsInt) {
        case 0:
            return ACDirectionNorth;
            break;
        case 1:
            return ACDirectionEast;
            break;
        case 2:
            return ACDirectionSouth;
            break;
        case 3:
            return ACDirectionWest;
            break;
        default:
            return ACDirectionNorth;
            break;
    }
}

@end
