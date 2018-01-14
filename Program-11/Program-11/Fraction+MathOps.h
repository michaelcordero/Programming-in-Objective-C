//
//  Fraction+MathOps.h
//  Program-11
//
//  Created by Michael Cordero on 1/13/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)
- (Fraction *) add: (Fraction *) f;
- (Fraction *) subtract: (Fraction *) f;
- (Fraction *) multiply: (Fraction *) f;
- (Fraction *) divide: (Fraction *) f;
- (Fraction *) invert: (Fraction *) f;
@end
