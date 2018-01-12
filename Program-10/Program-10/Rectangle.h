//
//  Rectangle.h
//  Program-10
//
//  Created by Michael Cordero on 1/11/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coordinate.h"

@class Coordinate;

@interface Rectangle: NSObject

@property int width, height;

- (id) initWithWidth: (int) w andHeight: (int) h;
- (Coordinate *) origin;
- (void) setOrigin: (Coordinate *) pt;
- (void) setWidth: (int) w andHeight: (int) h;
- (int) area;
- (int) perimeter;
+ (int) count;
- (void) print;

@end
