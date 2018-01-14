//
//  Fraction+Reduce.h
//  Program-11
//
//  Created by Michael Cordero on 1/13/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import "Fraction.h"

@interface Fraction ()
- (void) reduce;
@end

/* pg 228: "Methods declared in a class extension are implemented
 in the main implementation section for the class and not in a
 seperate implementation section."
 Note:
 
 Class extensions are useful, because their methods are private. So,
 if you need to write a class that has data and methods that can be
 used only within the class itself, a class extension might fit the
 bill.*/

