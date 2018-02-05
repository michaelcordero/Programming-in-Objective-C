//
//  ViewController.h
//  Program 21
//
//  Created by Michael Cordero on 2/4/18.
//  Copyright © 2018 codec software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Calculator.h"

@interface ViewController : UIViewController
@property(strong, nonatomic) UILabel *display;
@property(strong, nonatomic) UIStackView *vertical_stack_view;
@property(strong, nonatomic) NSArray *buttons;
@property(strong, nonatomic) NSArray *button_symbols;
@property NSNumber *accumulator;
@property NSString *current_operator;
@property NSString *current_operand;
@property Calculator *calculator;

@property SEL push;

- (void) setupDisplay;
- (void) setupStackView;
- (NSArray *) rows;
- (NSArray *) initializeButtons;
- (void) click;
- (BOOL) isNumber: (NSString *) operand;
@end

