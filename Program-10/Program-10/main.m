//
//  main.m
//  Program-10
//
//  Created by Michael Cordero on 1/11/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Exercise #1
        NSLog(@"\n Exercise #1: Test rectangle init overrides actually work. ");
        Rectangle *rectangle = [[Rectangle alloc] init ];
        printf("Rectangle #1 - ");
        [rectangle print];
        printf("Rectangle #2 - ");
        Rectangle *rectangle_2 = [[Rectangle alloc] initWithWidth: 10 andHeight: 20];
        [rectangle_2 print];
        
        //Exercise #4
        typedef enum {
             MONDAY, TUESDAY, WEDNESDAY, THURSDAY,
             FRIDAY, SATURDAY, SUNDAY
        } Day;
        
        //Exercise #5
        typedef Rectangle *Rect;
        Rect x, y;
        x = [[Rectangle alloc] initWithWidth: 2 andHeight: 8];
        y = [[Rectangle alloc] init];
        [y print];
        [x print];
        
        //Exercise #
        printf( "Rectangle initializer count: %i \n", [Rectangle count]);
        
    }
    return 0;
}
