//
//  Preprocessor.h
//  Program-12
//
//  Created by Michael Cordero on 1/14/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#ifndef Preprocessor_h
#define Preprocessor_h

#define MINIMUM(a,b) (a < b ? a : b)
#define MAXIMUM3(x,y,z) (x > y && x > z ? x : y > x && y > z ? y : z > x && z > y ? z : 0)
#define IS_UPPER_CASED(c) ( ((c) >= 'A') && ((c) <= 'Z') )
#define ABSOLUTE_VALUE(t) (abs(t))

#endif /* Preprocessor_h */
