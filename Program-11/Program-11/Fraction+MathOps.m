//
//  Fraction+MathOps.m
//  Program-11
//
//  Created by Michael Cordero on 1/13/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)

- (Fraction *) add: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}
- (Fraction *) subtract: (Fraction *) f {
   
    // a/b - c/d = ((a*d) - (b*c)) / (b*d)
    Fraction *result = [[Fraction alloc] init];
    [result setNumerator: (self.numerator * f.numerator) - (self.denominator * f.numerator)];
    [result setDenominator: self.denominator * f.denominator];
    [result reduce];
    return result;
}

- (Fraction *) multiply: (Fraction *) f {
    //Create new object to store product
    Fraction *result = [Fraction new];
    [result setNumerator: self.numerator * f.numerator];
    [result setDenominator: self.denominator * f.denominator];
    [result reduce];
    return result;
}

- (Fraction *) divide: (Fraction *) f {
    //Create new object to store product
    Fraction *result = [Fraction new];
    
    //Rember division is about finding the reciprocal of the divisor
    // a/b ÷ c/d = a/b × d/c = ad/bc
    [result setNumerator: self.numerator * f.denominator];
    [result setDenominator: self.denominator * f.numerator];
    [result reduce];
    return result;
}
- (Fraction *) invert:(Fraction *) f {
    Fraction *result = [Fraction new];
    [result setNumerator: f.denominator];
    [result setDenominator: f.numerator];
    return result;
}

@end
