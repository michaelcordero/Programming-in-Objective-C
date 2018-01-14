//
//  Calculator+Trig.m
//  Program-11
//
//  Created by Michael Cordero on 1/13/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import "Calculator+Trig.h"
#import <Foundation/Foundation.h>

@implementation Calculator (Trig)

- (double) sin {
    return sin( self.accumulator );
}

- (double) cos {
    return cos( self.accumulator );
}

- (double) tan {
    return tan( self.accumulator );
}

@end
