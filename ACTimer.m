//
//  ACTimer.m
//  NomNomMon
//
//  Created by Parker Diamond on 5/9/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//

#import "ACTimer.h"

@implementation ACTimer

+ (NSTimer *)timerWithTimeInterval:(NSTimeInterval)seconds invocation:(NSInvocation *)invocation repeats:(BOOL)repeats
{
    if(self = [super init])
    {
        seconds = 1.0;
        invocation = [self init];
        repeats = YES;
    }
}

@end
