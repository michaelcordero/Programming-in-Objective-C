//
//  AddressBook.m
//  Program-15
//
//  Created by Michael Cordero on 2/2/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import "AddressBook.h"
#import <Foundation/Foundation.h>

@implementation AddressBook
@synthesize book, book_name;

- (instancetype) initWithName: (NSString *) name {
    self = [super init];
    if (self) {
        book_name = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    return self;
}

- (instancetype) init {
    return [self initWithName: @"NoName"];
}

- (void) addCard: (AddressCard *) the_card {
    [book addObject: the_card];
}

- (void) removeCard: (AddressCard *) the_card{
    [book removeObjectIdenticalTo: the_card];
}

- (void) addCards: (NSArray *) the_cards {
    [book addObjectsFromArray: the_cards];
}

- (NSUInteger) lookupIndex: (NSString *) the_name {
    NSUInteger index = [book indexOfObjectPassingTest:
                        ^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                            if ([[obj name] containsString: the_name]) {
                                return YES;
                            } else {
                                return NO;
                            }
                        }];
    return index;
}

- (AddressCard *) lookup: (NSString *) the_name {
    return [book objectAtIndex: [self lookupIndex: the_name]];
}

- (NSArray *) lookupAll: (NSString *) the_name {
    NSIndexSet *passers = [book indexesOfObjectsPassingTest:
                          ^(id obj, NSUInteger idx, BOOL *stop) {
                              if ([[obj name] containsString: the_name ] == true ) {
                                  return YES;
                              } else {
                                  return NO;
                              }
                          }];
    NSArray *result = [book objectsAtIndexes: passers];
    return result;
}

- (BOOL) removeName: (NSString *) the_name {
    if( [self lookup: the_name] != nil) {
        [book removeObject:  [self lookup: the_name]];
        return YES;
    } else {
        return NO;
    }
}

- (NSUInteger) entries {
    return [book count];
}
- (void) list {
    printf("================= Contents of: %s ==================\n", [book_name UTF8String]);
    
    for ( AddressCard *the_card in book ) {
        [the_card print];
    }
    printf("==========================================================================\n");
}

@end
