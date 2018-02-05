//
//  Operations.m
//  Program 21
//
//  Created by Michael Cordero on 2/4/18.
//  Copyright © 2018 codec software. All rights reserved.
//

#import "Operations.h"
#import "Calculator.h"

@implementation Operations

+ (void) operate: (NSNumber *) accumulator opd:(NSString *)current_operand opr:(NSString *) current_operator {
//    NSScanner *scanner = [NSScanner scannerWithString: current_operand];
//    int value;
//    if ([scanner scanInt: &value] && [scanner isAtEnd] && [current_operator isEqualToString: @"" ]) {
//
//        accumulator = [[NSNumber alloc] initWithLong: [current_operand doubleValue] ];
//    }
    Calculator *calculator = [Calculator new];
    [calculator setAccumulator:  [accumulator doubleValue]];
    
    NSDictionary *dictionary = @{
                                 @"AC" : ^{
                                     
                                 },
                                 @"+/-" : ^{
                                     
                                 },
                                 @"%" : ^ {
                                     
                                 },
                                 @"÷" : ^ {
                                     
                                 },
                                 @"×" : ^{
                                     
                                 },
                                 @"-" : ^ {
                                     
                                 },
                                 
                                 @"+" : ^ {
                                     
                                 },
                                 @"." : ^{
                                     
                                 },
                                 @"n/d" : ^{
                                     
                                 },
                                 @"=" : ^{
                                     
                                 }
                                 
                                 };
}
@end
