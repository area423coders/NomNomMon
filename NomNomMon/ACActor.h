//
//  ACActor.h
//  NomNomMon
//
//  Created by Jason Oswald on 4/25/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ACDirection) {
    ACDirectionNorth,
    ACDirectionEast,
    ACDirectionSouth,
    ACDirectionWest  // there's more
};

@interface ACActor : UIView

@property ACDirection direction;

@end
