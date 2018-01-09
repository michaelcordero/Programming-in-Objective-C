//
//  Fraction.m
//  Program-7
//
//  Created by Michael Cordero on 10/26/17.
//  Copyright © 2017 Codec Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;     // If you omit the @synthesize directive, then the compiler will automatically name the underlying instance variables _numerator and _denominator.

- (void) print {
    printf("%i/%i \n",numerator,denominator);
}

- (double) convertToNum {
    return denominator != 0 ? (double) numerator / denominator : NAN;
}

- (void) setNum: (int) n setDen: (int) d {
    numerator = n;
    denominator = d;
}

- (Fraction *) add: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

- (void) reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /=u;
}

- (Fraction *) subtract: (Fraction *) f {
    // find the Least Common Multiple
    int LCM = f.denominator * denominator;
    
    // adjust the denominators
    denominator = LCM;
    f.denominator = LCM;
    
    // adjust the numerators
    self.numerator = numerator * f.denominator;
    f.numerator = f.numerator * self.denominator;
    
    // Create new object to store difference
    Fraction *result = [[Fraction alloc] init];
    [result setNumerator: numerator - f.numerator];
    [result setDenominator: LCM];
    [result reduce];
    return result;
}

- (Fraction *) multiply: (Fraction *) f {
    //Create new object to store product
    Fraction *result = [Fraction new];
    [result setNumerator: numerator * f.numerator];
    [result setDenominator: denominator * f.denominator];
    [result reduce];
    return result;
}

- (Fraction *) divide: (Fraction *) f {
    //Create new object to store product
    Fraction *result = [Fraction new];
    
    //Rember division is about finding the reciprocal of the divisor
    // a/b ÷ c/d = a/b × d/c = ad/bc
    [result setNumerator: numerator * f.denominator];
    [result setDenominator: denominator * f.numerator];
    [result reduce];
    return result;
}

- (id ) id_add: (id ) i {
    id value = [[Fraction alloc] init];
    return value;
}

@end
