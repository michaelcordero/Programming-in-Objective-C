//
//  main.m
//  Program-9
//
//  Created by Michael Cordero on 1/8/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        printf("---------------------------------------------------------- \n");
        printf("Test Fraction: %s","");
        Fraction *fraction = [[Fraction alloc] init];
        [fraction setNumerator: 1];
        [fraction setDenominator: 4];
        [fraction print];
        
        printf("Test Complex: %s", "");
        Complex *complex = [[Complex alloc] init];
        [complex setReal: 10];
        [complex setImaginary: 2];
        [complex print];
        
        printf("Exercise #4: %s", "");
        id x;
        id y;
        id data_value1 = [[Fraction new] id_add: x];
        id data_value2 = [[Complex new] id_add: y];
        id result = [data_value2 id_add: data_value1];
        [result print];
        
        printf("---------------------------------------------------------- \n");
        printf("Exercise #5: %s \n","");
        printf("---------------------------------------------------------- \n");
        id number = [[Complex alloc] init];
        printf("%s is a member of class: %s ? %s \n", [fraction.className UTF8String], [complex.className UTF8String], [fraction.class isMemberOfClass: complex.class] ? "true" : "false");
        printf("%s is a member of class: %s ? %s \n", [complex.className UTF8String], [NSObject.description UTF8String], [complex isMemberOfClass: [NSObject class]] ? "true" : "false");
        printf("%s is a kind of class: %s ? %s \n", [complex.className UTF8String], [NSObject.description UTF8String], [complex isKindOfClass: [NSObject class]] ? "true" : "false");
        printf("%s is a kind of class: %s ? %s \n", [fraction.className UTF8String], [fraction.className UTF8String], [fraction isKindOfClass: [Fraction class]] ? "true" : "false");
        printf("%s is a responds to selector: %s ? %s \n", [fraction.className UTF8String], "'print()'", [fraction respondsToSelector: @selector(print)] ? "true" : "false");
        printf("%s is a responds to selector: %s ? %s \n", [complex.className UTF8String], "'print()'", [complex respondsToSelector: @selector(print)] ? "true" : "false");
        printf("%s instances responds to selector: %s ? %s \n", [Fraction.description UTF8String], "'print()'", [Fraction instancesRespondToSelector: @selector(print)] ? "true" : "false");
        printf("%s responds to selector: %s ? %s \n", "id: number - ", "'print()'", [number respondsToSelector: @selector(print)] ? "true" : "false");
        printf("%s is a kind of class: %s ? %s \n", "id: number - ", [Complex.description UTF8String], [number isKindOfClass: [Complex class]] ? "true" : "false");
        printf("%s responds to selector: %s ? %s \n", "id: number - ", "'alloc()'", [number respondsToSelector: @selector(alloc)] ? "true" : "false");
        printf("---------------------------------------------------------- \n");
    }
}
