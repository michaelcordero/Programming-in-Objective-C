//
//  NSDate+ElapsedDays.h
//  Program-15
//
//  Created by Michael Cordero on 1/23/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (ElapsedDays)
+ (double) DAYS_IN_SECONDS;
- (unsigned long) elapsedDays: (NSDate *) theDate;
@end
