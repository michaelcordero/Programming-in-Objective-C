//
//  Rectangle.m
//  Program-10
//
//  Created by Michael Cordero on 1/11/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

static int init_counter;

@implementation Rectangle {
    Coordinate *origin;
}

@synthesize width, height;

- (id) init {
   return [self initWithWidth: 0 andHeight: 0];
}

- (id) initWithWidth: (int) w andHeight: (int) h {
    extern int init_counter;
    init_counter++;
    self.width = w;
    self.height = h;
    return self;
}

- (void) setWidth: (int) w andHeight: (int) h {
    width = w;
    height = h;
}

- (void) setOrigin:(Coordinate *) pt {
    origin = pt;
}

- (int) area {
    return width * height;
}

- (int) perimeter {
    return (width + height) * 2;
}

- (Coordinate *) origin {
    return origin;
}

- (void) print {
    printf("Rectangle: [width = %d, height = %d] \n", width, height);
}

/* Notice this method has a + prefix, not a - prefix. This is because - marks
 instance methods, whereas +, marks static methods. */

+ (int) count {
    extern int init_counter;
    return init_counter;
}

@end
