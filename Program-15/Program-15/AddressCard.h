//
//  AddressCard.h
//  Program-15
//
//  Created by Michael Cordero on 2/2/18.
//  Copyright © 2018 Michael Cordero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (nonatomic, copy) NSString *name, *email;
- (void) print;
- (BOOL) isEqual: (AddressCard *) the_card;

@end
