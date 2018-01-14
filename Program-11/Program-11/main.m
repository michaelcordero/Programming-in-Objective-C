//
//  main.m
//  Program-11
//
//  Created by Michael Cordero on 1/13/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Fraction+MathOps.h"
#import "Fraction+Comparison.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"\n Program-11: Categories and Protocols");
        printf("---------------------------------------- \n");
        //Create & Initialize Fraction #1 values
        Fraction *fraction_1 = [[Fraction alloc] init];
        [fraction_1 setNumerator: 1];
        [fraction_1 setDenominator: 4];
        
        // Create & Initialize Fraction #2 values
        Fraction *fraction_2 = [[Fraction alloc] init];
        [fraction_2 setNumerator: 3];
        [fraction_2 setDenominator: 4];
        
        // Display
        printf("Fraction #1: %s \n", [[fraction_1 print] UTF8String]);
        printf("Fraction #2: %s \n", [[fraction_2 print] UTF8String]);
        // Test New Methods
        printf("Test New Methods \n");
        printf("-------------------- \n");
        printf("Is fraction #1 equal to fraction #2? \n Result = %s \n", [fraction_1 isEqualTo: fraction_2] ? "true" : "false");
        printf("Compare fraction#1 & fraction #2. \n  ");
        printf("Result = %d \n", [fraction_1 compare: fraction_2]);
        
        printf("Is %s less than or equal to %s ? \n Result = %s \n",[fraction_2 printUTF8String], [fraction_1 printUTF8String], [fraction_2 isLessThanOrEqualTo: fraction_1] ? "true" : "false");
        
        
    }
    return 0;
}
