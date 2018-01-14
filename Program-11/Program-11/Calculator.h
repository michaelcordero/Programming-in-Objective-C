//
//  Calculator.h
//  Calculator
//
//  Created by Michael Cordero on 10/16/17.
//  Copyright © 2017 Codec Software. All rights reserved.
//
// Class copied over from Program-4

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

//accumulator methods

- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;
- (double) memory;

//arithmetic methods
- (double) add: (double) value;
- (double) subtract: (double) value;
- (double) multiply: (double) value;
- (double) divide: (double) value;

//excercise #9
- (double) changeSign;  //change sign of accumulator
- (double) reciprocal;  //1/accumulator
- (double) squared;    //accumulator squared

//excercise #10
- (double) memoryClear;                     //clear memory
- (double) memoryStore;                     //set memory to accumulator
- (double) memoryRecall;                    //set accumulator to memory

//The last two methods set the accumulator and perform the indicated operation on memory.
//Have all the methods return the value of the accumulator.
- (double) memoryAdd: (double) value;        //add value into memory
- (double) memorySubtract: (double) value;  //subtract value from memory

@end
