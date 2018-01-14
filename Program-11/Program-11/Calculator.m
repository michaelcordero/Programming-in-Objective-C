//
//  Calculator.m
//  Calculator
//
//  Created by Michael Cordero on 10/16/17.
//  Copyright © 2017 Codec Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

@implementation Calculator

//Properties
{
    double accumulator;
    double memory;
}

//Public
- (void) setAccumulator:(double) value {
    accumulator = value;
}

- (void) clear {
    accumulator = 0;
}

- (double) accumulator {
    return accumulator;
}

- (double) memory {
    return memory;
}

- (double) add:(double) value {
   return accumulator += value;
}

- (double) subtract:(double) value {
   return accumulator -= value;
}

- (double) multiply:(double) value {
   return accumulator *= value;
}

- (double) divide:(double) value {
   return accumulator /= value;
}

// excercise #9

- (double) changeSign {
    return accumulator > 0 ? -accumulator : accumulator;
}

- (double) reciprocal {
    return 1/accumulator;
}

- (double) squared {
    return accumulator * accumulator;
}

// exercise #10

- (double) memoryClear {
    return memory = 0;
}

- (double) memoryStore {
    return memory = accumulator;
}

- (double) memoryRecall {
    return accumulator = memory;
}

- (double) memoryAdd:(double) value {
    accumulator = memory;
    return memory += value;
}

- (double) memorySubtract:(double) value {
    accumulator = memory;
    return memory -= value;
}


@end

