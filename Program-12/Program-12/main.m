//
//  main.m
//  Program-12
//
//  Created by Michael Cordero on 1/14/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Preprocessor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        printf("Chapter 12 - The Preprocessor\n");
        printf("--------------------------------------\n");
        /* Exercise #2 */
        printf("Test MINIMUM Macro: \n");
        float value1, value2;
        printf("Please enter two numbers.\n");
        printf("Pressing enter after each number.\n");
        scanf("%f %f", &value1, &value2 );
        float result = MINIMUM(value1, value2);
        if ( result == value1){
        printf("Result: %g is less than %g \n\n", value1, value2);
        } else {
            printf("Result: %g is less than %g \n\n", value2, value1);
        }
        
         /* Exercise #3 */
        printf("Test MAXIMUM3 Macro: \n");
        float x, y, z;
        printf("Please enter 3 numbers.\n");
        printf("Pressing enter after each number.\n");
        scanf("%f %f %f", &x, &y, &z);
        printf("The maximum of the 3 values: %g, %g, %g is = %g \n\n", x, y, z, MAXIMUM3(x, y, z));
        
         /* Exercise #4 */
        printf("Test IS_UPPER_CASE Macro: \n");
        printf("Please enter a character: ");
        char c;
        scanf(" %c", &c);
        printf("Is %c uppercase? %s \n\n", c, IS_UPPER_CASED(c) ? "true" : "false");
        
        /* Exercise #7 */
        printf("Test ABSOLUTE_VALUE Macro: \n");
        printf("Please enter one number.\n");
        printf("Pressing enter after the number.\n");
        int t;
        scanf("%i", &t);
        printf("The absolute value of: %i is = %i \n\n", t, ABSOLUTE_VALUE(t));
    }
    return 0;
}
