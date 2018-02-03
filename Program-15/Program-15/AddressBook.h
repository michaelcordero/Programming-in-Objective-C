//
//  AddressBook.h
//  Program-15
//
//  Created by Michael Cordero on 2/2/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property (nonatomic, copy) NSString *book_name;
@property (nonatomic, strong) NSMutableArray *book;

- (instancetype) initWithName: (NSString *) name;

- (void) addCard: (AddressCard *) the_card;
- (void) removeCard: (AddressCard *) the_card;
- (void) addCards: (NSArray *) the_cards;
- (AddressCard *) lookup: (NSString *) the_name;
- (NSUInteger) lookupIndex: (NSString *) the_name;
- (NSArray *) lookupAll: (NSString *) the_name;
- (BOOL) removeName: (NSString *) the_name;
- (NSUInteger) entries;
- (void) list;

@end
