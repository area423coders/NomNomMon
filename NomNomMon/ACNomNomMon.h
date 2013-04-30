//
//  ACNomNomMon.h
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ACActor.h"

@interface ACNomNomMon : ACActor

@property CGFloat speed;

- (void) animateDeath;
- (void) respawn;

@end
