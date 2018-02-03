//
//  main.m
//  Program-15
//
//  Created by Michael Cordero on 1/23/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+ElapsedDays.h"
#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        printf("--------------------------------------------\n");
//        printf("Chapter 15: Numbers, Strings, & Collections.\n");
//        printf("--------------------------------------------\n");
//        printf("Test NSDate+ElapsedDays Category: \n");
//        NSDate *day_one = [[NSDate alloc] initWithTimeIntervalSinceNow: 0.0];
//        NSDate *day_two = [[NSDate alloc] initWithTimeIntervalSinceNow: -(  NSDate.DAYS_IN_SECONDS * 2.0) ];
//        printf("Day One: %s \n", day_one.description.UTF8String);
//        printf("Day Two: %s \n", day_two.description.UTF8String);
//        printf("Elapsed Days: %lu \n", [day_one elapsedDays: day_two]);
        
        printf("Test Address Cards: \n");
        AddressCard *card = [[AddressCard alloc] init];
        [card setName: @"Jane Doe"];
        [card setEmail: @"jdoe@email.com"];
        [card print];
        
        AddressCard *card_one = [[AddressCard alloc] init ];
        [card_one setName: @"Joanna Public"];
        [card_one setEmail: @"jpublic@email.com"];
        [card_one print];
        
        AddressCard *card_two = [[AddressCard alloc] init ];
        [card_two setName: @"Mike American" ];
        [card_two setEmail: @"mamerican@email.com"];
        [card_two print];
        
        printf("Test Address Book: \n");
        AddressBook *book = [[AddressBook alloc] initWithName: @"Chapter 15: Address Book"];
        printf("adding cards...\n");
        [book addCards: [[NSArray alloc] initWithObjects: card, card_one, card_two, nil] ];
        printf("printing cards...\n");
        [book list];
        
        printf("\n Testing lookupAll:  with: J\n");
        NSArray *array = [book lookupAll: @"J"];
        printf("printing matches: \n");
        for (AddressCard *card in array) {
            [card print];
        }
        
        printf("\n Testing lookupAll:  with: M\n");
        NSArray *array_two = [book lookupAll: @"M"];
        printf("printing matches: \n");
        for (AddressCard *card in array_two) {
            [card print];
        }
        
        printf("\n Testing removeName: Mike \n");
        BOOL result = [book removeName: @"Mike"];
        printf("Removal Successful?  %s\n\n", result == YES ? "yes" : "no");
        [book list];
        
        
        
    }
    return 0;
}
