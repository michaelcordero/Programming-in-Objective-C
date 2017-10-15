//
// Cartesian Object Implementation
// author: Michael Cordero
//

#import <Foundation/Foundation.h>
#import "Cartesian.h"

@implementation Cartesian

{
	int x;
	int y;
}

- (void) print
{
	NSLog (@"\nCoordinates: \n x: %i, y: %i", x, y );
}

- (void) setX: (int) n
{
	x = n;
}

- (void) setY: (int) m
{
	y = m;
}


- (int) getX
{
	return x;
}

- (int) getY
{
	return y;
}

@end
