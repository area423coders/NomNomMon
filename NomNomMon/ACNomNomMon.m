//
//  ACNomNomMon.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACNomNomMon.h"


@implementation ACNomNomMon

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSArray *animationFrames = [NSArray arrayWithObjects:
                                    [UIImage imageNamed:@"nomNomMon0.png"],
                                    [UIImage imageNamed:@"nomNomMon1.png"],
                                    [UIImage imageNamed:@"nomNomMon2.png"],
                                    [UIImage imageNamed:@"nomNomMon1.png"],
                                    nil];
        UIImageView *animation = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"nomNomMon0.png"]];
        animation.backgroundColor = [UIColor clearColor];
        animation.animationImages = animationFrames;
        animation.animationDuration = .7;
        animation.animationRepeatCount = 0;
        [animation startAnimating];
        [self addSubview:animation];
    }
    return self;
    
    
}
@end
