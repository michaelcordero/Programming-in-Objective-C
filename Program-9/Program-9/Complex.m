//
//  Complex.m
//  Program-9
//
//  Created by Michael Cordero on 1/8/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

- (void) print {
    //int truncated = trunc(real * 100) / 100;
    printf("%g+%gi \n",real,imaginary);
}

- (Complex *) add: (Complex *) c {
    Complex *result = [[Complex alloc] init];
    result.real = real + c.real;
    result.imaginary = imaginary + c.imaginary;
    return result;
}

- (Complex *) subtract: (Complex *) c {
    Complex *result = [[Complex alloc] init];
    [result setReal: real - [c real] ];
    [result setImaginary: imaginary - [c imaginary]];
    return result;
}

- (Complex *) multiply: (Complex *) c {
    Complex *result = [[Complex alloc] init];
    [result setReal: real * [ c real] ];
    [result setImaginary: imaginary * [c imaginary] ];
    return result;
}

- (Complex *) divide: (Complex *) c {
    Complex *result = [[Complex alloc] init];
    [result setReal: real / [c real] ];
    [result setImaginary: imaginary / [c imaginary] ];
    return result;
}

- (id) id_add: (id ) i {
    id value = [[Complex alloc] init];
    return value;
}

@end


