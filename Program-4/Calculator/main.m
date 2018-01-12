//
//  main.m
//  Calculator
//
//  Created by Michael Cordero on 10/16/17.
//  Copyright © 2017 Codec Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //create object
        Calculator *calculator = [Calculator new];
        
        //classic
        [calculator setAccumulator: 100.0];
        [calculator add: 200.0];
        [calculator divide: 15.0];
        [calculator subtract: 10.0];
        [calculator multiply: 10.0];
        NSLog(@"\nResult: %g", [calculator accumulator]);
        
        //exercise #9
        printf("Reciprocal: %g\n",[calculator reciprocal]);
        printf("Squared: %g\n",[calculator squared]);
        printf("Negation: %g\n", [calculator changeSign]);
        
        //exercise #10
        printf("Memory: %g\n",[calculator memory]);
        printf("Store: %g\n",[calculator memoryStore]);
        printf("Memory: %g\n",[calculator memory]);
        printf("Clear: %g\n",[calculator memoryClear]);
        printf("Recall: %g\n",[calculator memoryRecall]);
        printf("Accumulator: %g\n", [calculator accumulator]);
        printf("MemoryAdd: %g\n", [calculator memoryAdd: 2]);
        printf("MemorySubtract: %g\n", [calculator memorySubtract: 2]);

    }
    return 0;
}
