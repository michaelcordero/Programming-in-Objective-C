//
//  Complex.h
//  Program-9
//
//  Created by Michael Cordero on 1/8/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

// The Complex Class

@interface Complex : NSObject

@property double real, imaginary;

- (void) print;
- (double) real;
- (double) imaginary;

// operations
- (Complex *) add: (Complex *) c;
- (Complex *) subtract: (Complex *) c;
- (Complex *) multiply: (Complex *) c;
- (Complex *) divide: (Complex *) c;

//exercise #4 from Ch. 9, pg. 195
- (id) id_add: (id ) i;


@end
