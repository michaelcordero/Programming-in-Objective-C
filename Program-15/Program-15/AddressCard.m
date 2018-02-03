//
//  AddressCard.m
//  Program-15
//
//  Created by Michael Cordero on 2/2/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

- (BOOL) isEqual: (AddressCard *) the_card {
    return [name isEqualToString: [the_card name]] == YES && [email isEqualToString: [the_card email] ]  == YES;
}
- (void) print {
    printf("===================================\n");
    printf("|                                 |\n");
    printf("|    %s         |\n", [name UTF8String]);
    printf("|    %s         |\n", [email UTF8String]);
    printf("|                                 |\n");
    printf("===================================\n");
}

@end
