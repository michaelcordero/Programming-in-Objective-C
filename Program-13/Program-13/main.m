//
//  main.m
//  Program-13
//
//  Created by Michael Cordero on 1/15/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>

//prototypes
float average ( float array[] );
int* eratosthenes( int n );
void (^exchange) (int *ptr1, int *ptr2);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        printf("Chapter 13 - Underlying C Language Features.\n");
        printf("----------------------------------------------\n\n");
        printf("Exercise #1\n");
        printf("------------------------\n");
        printf("Test avg()\n");
        float ar[] = {1.0, 2.0, 3.0, 4.0, 5.0, '\0'}; // '\0' = NULL Terminator. Prevents any further allocation of memory to empty blocks of the array. WSIWYG.
        float *ptr = &ar[0]; //sets pointer to first element in the array: ar[], also: float *ptr = ar; would've sufficed
        printf("Elements in array: ");
        while (*ptr) {
            printf("%g,", *(ptr)++ );
        }
        printf("\nAverage = %f \n", average(ar));

        printf("\nExercise #3\n");
        printf("------------------------\n");
        printf("Test eratosthenes()\n");
        int value = 150;
        printf("Passing in: %i\n", value);
        printf("Primes = ");
        int *itr = eratosthenes(value);
        int counter = 0;
        while( *itr ) {
            printf("%i,%s", *(itr)++, counter % 10 == 0 && counter != 0 ? "\n" : "");
            counter++;
        }
        printf("\n\n");
        
        printf("Exercise #10\n");
        printf("------------------------\n");
        printf("Test exchange()\n");
        int value1 = 10;
        int value2 = 20;
        printf("value 1 = %i\nvalue 2 = %i\n",value1, value2);
        exchange (&value1, &value2);
        printf("------------------------\n");
        printf("After exchange call.\n");
        printf("------------------------\n");
        printf("value 1 = %i\nvalue 2 = %i\n\n",value1, value2);
        
    }
    return 0;
}

float average ( float array[]) {
    float sum = 0;
    while ( *array ) {
        sum += *(array)++;
    }
    return sum / sizeof(*array);
}

int* eratosthenes(int n ) {
    // step #1 initialize prime numbers array w/ n #of elements
    static int ar[] = {};  //static because C doesn't recommend the return of local variables.
    bool prime[n+1];
    memset(prime, true, sizeof(prime)); // sets all values of prime[] to true
    
    //determine prime numbers
    for(int p=2; p*p<=n; p++){
        if (prime[p] == true) {
            //update all multiples of p
            for (int i=p*2; i<=n; i+=p) {
                prime[i] = false;
            }
        }
    }
    // get & store prime numbers
    for(int i=0, p = 2; p<=n; p++){
        if (prime[p]) {
            ar[i] = p;
            i++; //only increment i, if element added.
        }
    }
    // C functions can't return an arrays, but can return pointers.
    int *ptr = ar;
    return ptr;
}

// Blocks
void (^exchange) (int *ptr1, int *ptr2) = {
    ^(int *ptr1, int *ptr2) {
        int temp = *(ptr1);
        *ptr1 = *(ptr2);
        *ptr2 = temp;
    }
};


