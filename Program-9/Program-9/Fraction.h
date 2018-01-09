//
//  Fraction.h
//  Program-7
//
//  Created by Michael Cordero on 10/26/17.
//  Copyright © 2017 Codec Software. All rights reserved.
//

#import <Foundation/Foundation.h>

// The Fraction Class

@interface Fraction : NSObject

@property int numerator, denominator;

- (void) print;
- (double) convertToNum;
- (void) setNum: (int) n setDen: (int) d;
- (void) reduce;

- (Fraction *) add: (Fraction *) f;
- (Fraction *) subtract: (Fraction *) f;
- (Fraction *) multiply: (Fraction *) f;
- (Fraction *) divide: (Fraction *) f;

//exercise #4 from Ch. 9, pg. 195
- (id ) id_add: (id ) i;


@end
