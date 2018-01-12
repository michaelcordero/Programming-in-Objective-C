// Interface for Cartesian Object
//
// author: Michael Cordero
//

#import <Foundation/Foundation.h>

@interface Cartesian: NSObject

- (void) print;
- (void) setX: (int) n;
- (void) setY: (int) m;
- (int)  getX;
- (int)  getY;

@end
