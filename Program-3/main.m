//
// main.m class for testing Cartesian Class
// author: Michael Cordero
//

#import <Foundation/Foundation.h>
#import "Cartesian.h"

int main (int argc, char * argv[])
{
  @autoreleasepool
  {
    //NSLog(@"\n argv[0] = %s", argv[0]);
    //printf("argc = %i\n", argc);
    int a = argv[1] != NULL ? atoi(argv[1]) : 0;
    int b = argv[2] != NULL ? atoi(argv[2]) : 0;
    Cartesian *cartesian = [[Cartesian alloc] init];
    [cartesian setX: a];
    [cartesian setY: b];
    [cartesian print];	

  }
  return 0;

}
