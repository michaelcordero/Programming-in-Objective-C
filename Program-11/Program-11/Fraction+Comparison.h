//
//  Fraction+Comparison.h
//  Program-11
//
//  Created by Michael Cordero on 1/13/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (Comparison)
- (BOOL) isEqualTo: (Fraction *) f;
- (int) compare: (Fraction *) f;
@end
