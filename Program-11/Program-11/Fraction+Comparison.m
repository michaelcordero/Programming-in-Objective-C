//
//  Fraction+Comparison.m
//  Program-11
//
//  Created by Michael Cordero on 1/13/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import "Fraction+Comparison.h"

@implementation Fraction (Comparison)

- (BOOL) isEqualTo: (Fraction *) f {
    return [self numerator] * [f denominator] == ([self denominator] * [f numerator]);
}

- (int) compare: (Fraction *) f {
    // a = reciever fraction (self), cross-multiplication product
    // b = guest fraction (f), cross-multiplication product
    double a = self.numerator * f.denominator;
    double b = self.denominator * f.numerator;
    return  a > b ? 1 : a < b ? - 1 : 0;
}
@end
