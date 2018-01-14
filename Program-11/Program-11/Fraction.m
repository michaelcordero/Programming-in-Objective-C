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

- (NSString *) print {
    NSString *fraction_string = [NSString stringWithFormat: @"%d/%d", numerator, denominator];
    return fraction_string;
}

- (double) convertToNum {
    return denominator != 0 ? (double) numerator / denominator : NAN;
}

- (void) setNum: (int) n setDen: (int) d {
    numerator = n;
    denominator = d;
}

- (id ) id_add: (id ) i {
    id value = [[Fraction alloc] init];
    return value;
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

- (const char *) printUTF8String {
    return  [[self print] UTF8String];
}

@end
