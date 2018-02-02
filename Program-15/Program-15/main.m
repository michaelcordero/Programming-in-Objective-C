//
//  main.m
//  Program-15
//
//  Created by Michael Cordero on 1/23/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+ElapsedDays.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("--------------------------------------------\n");
        printf("Chapter 15: Numbers, Strings, & Collections.\n");
        printf("--------------------------------------------\n");
        printf("Test NSDate+ElapsedDays Category: \n");
        NSDate *day_one = [[NSDate alloc] initWithTimeIntervalSinceNow: 0.0];
        NSDate *day_two = [[NSDate alloc] initWithTimeIntervalSinceNow: -(  NSDate.DAYS_IN_SECONDS * 2.0) ];
        printf("Day One: %s \n", day_one.description.UTF8String);
        printf("Day Two: %s \n", day_two.description.UTF8String);
        printf("Elapsed Days: %lu \n", [day_one elapsedDays: day_two]);
    }
    return 0;
}
