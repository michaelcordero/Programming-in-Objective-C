//
//  NSDate+ElapsedDays.m
//  Program-15
//
//  Created by Michael Cordero on 1/23/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import "NSDate+ElapsedDays.h"

static double day_in_seconds = 86400.0;

@implementation NSDate (ElapsedDays)
+ (double) DAYS_IN_SECONDS { return day_in_seconds; }
- (unsigned long) elapsedDays: (NSDate *) theDate {
    double elapsed_time = [self timeIntervalSinceDate: theDate];
    double elapsed_days = round(elapsed_time / day_in_seconds );
    return elapsed_days;
}

@end
