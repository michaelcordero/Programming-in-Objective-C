//
//  main.m
//  Program-7
//
//  Created by Michael Cordero on 10/26/17.
//  Copyright © 2017 Codec Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
       //Fraction Class Usage
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [Fraction new];
        Fraction *resultFraction;
     
        // set fraction to 1 / 4
        [aFraction setNumerator: 3];
        [aFraction setDenominator: 5];
        
        // display fraction
        NSLog(@"The value of first fraction is: %i/%i", aFraction.numerator, aFraction.denominator);
        // new fraction
        [bFraction setNum: 2 setDen: 3];
        NSLog(@"The value of second fraction is: %i/%i", bFraction.numerator, bFraction.denominator);
        
        // add fractions
        NSLog(@"Let's add.");
        resultFraction = [aFraction add: bFraction];
        NSLog(@"%i/%i + %i/%i = %i/%i", aFraction.numerator, aFraction.denominator, bFraction.numerator, bFraction.denominator, resultFraction.numerator, resultFraction.denominator);
        
        // subtract fractions
        NSLog(@"Let's subtract.");
        resultFraction = [aFraction subtract: bFraction];
        NSLog(@"%i/%i - %i/%i = %i/%i", aFraction.numerator, aFraction.denominator, bFraction.numerator, bFraction.denominator, resultFraction.numerator, resultFraction.denominator);
        
        // multiply fractions
        NSLog(@"Let's multiply.");
        resultFraction = [aFraction multiply: bFraction];
        NSLog(@"%i/%i x %i/%i = %i/%i", aFraction.numerator, aFraction.denominator, bFraction.numerator, bFraction.denominator, resultFraction.numerator, resultFraction.denominator);
        
        // divide fractions
        NSLog(@"Let's divide.");
        resultFraction = [aFraction divide: bFraction];
        NSLog(@"%i/%i ÷ %i/%i = %i/%i", aFraction.numerator, aFraction.denominator, bFraction.numerator, bFraction.denominator, resultFraction.numerator, resultFraction.denominator);
        

    }
    return 0;
}
