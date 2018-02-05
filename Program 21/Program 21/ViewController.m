//
//  ViewController.m
//  Program 21
//
//  Created by Michael Cordero on 2/4/18.
//  Copyright © 2018 codec software. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController ()
@end

@implementation ViewController

@synthesize display, vertical_stack_view, buttons, button_symbols, push, accumulator, current_operator, current_operand, calculator;

- (void)viewDidLoad {
    calculator = [Calculator new];
    current_operator = @"";
    push = @selector(push_button: );
    button_symbols = @[ @"AC", @"+/-", @"%", @"÷",
                        @"7", @"8", @"9", @"×",
                        @"4", @"5", @"6", @"-",
                        @"1", @"2", @"3", @"+",
                        @"0", @".", @"n/d", @"=" ];
    buttons = [self initializeButtons];
    [super viewDidLoad];
    [self setupDisplay];
    [self setupStackView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) prefersStatusBarHidden {
    return NO;
}

- (void) click {
    
}

- (void) setupDisplay {
    
    // Super View
    self.view.backgroundColor = UIColor.whiteColor;
    
    // Display Label
    display = [[UILabel alloc ] init];
    display.translatesAutoresizingMaskIntoConstraints = false;
    display.text = @"0";
    display.font = [UIFont systemFontOfSize: 50.0f];
    display.adjustsFontSizeToFitWidth = true;
    display.textAlignment = NSTextAlignmentRight;
    display.textColor = UIColor.whiteColor;
    display.backgroundColor = UIColor.grayColor;
    //display.clipsToBounds = YES;
    
    [self.view addSubview: display];
    
    // Display Constraints
    NSLayoutConstraint *displayTopConstraint = [NSLayoutConstraint
                                                  constraintWithItem: self.display attribute:NSLayoutAttributeTop
                                                  relatedBy:NSLayoutRelationGreaterThanOrEqual toItem: self.view
                                                  attribute:NSLayoutAttributeTop multiplier:1.0 constant: 30.0f];
    NSLayoutConstraint *displayBottomConstraint = [NSLayoutConstraint
                                                     constraintWithItem:self.display attribute: NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationGreaterThanOrEqual toItem: self.view
                                                     attribute:NSLayoutAttributeTop multiplier: 1.0 constant:-30.0f];
    NSLayoutConstraint *displayLeftConstraint = [NSLayoutConstraint
                                                   constraintWithItem: self.display attribute: NSLayoutAttributeLeft
                                                   relatedBy:NSLayoutRelationEqual toItem: self.view attribute:
                                                   NSLayoutAttributeLeft multiplier:1.0 constant: 10.0f];
    NSLayoutConstraint *displayRightConstraint = [NSLayoutConstraint
                                                    constraintWithItem: self.display attribute: NSLayoutAttributeRight
                                                    relatedBy: NSLayoutRelationEqual toItem: self.view attribute:
                                                    NSLayoutAttributeRight multiplier:1.0 constant: -10.0f];

    [self.view addConstraints: @[displayTopConstraint, displayBottomConstraint, displayLeftConstraint, displayRightConstraint]];
}

- (void) setupStackView {

    // Vertical Stack View
    vertical_stack_view = [[UIStackView alloc] initWithArrangedSubviews: [self rows] ];
    vertical_stack_view.translatesAutoresizingMaskIntoConstraints = false;
    [vertical_stack_view setAxis: UILayoutConstraintAxisVertical];
    [vertical_stack_view setDistribution: UIStackViewDistributionFillEqually];
    [vertical_stack_view setAlignment: UIStackViewAlignmentFill];
    [vertical_stack_view setSpacing: 10.0];
    [self.view addSubview: vertical_stack_view];
    [self.view bringSubviewToFront: vertical_stack_view];
    
    // Constraints
    NSLayoutConstraint *verticalTopConstraint = [NSLayoutConstraint
                                                 constraintWithItem: vertical_stack_view attribute: NSLayoutAttributeTop
                                                 relatedBy: NSLayoutRelationGreaterThanOrEqual toItem: self.display
                                                attribute: NSLayoutAttributeTop multiplier: 1.0 constant: 90.0f];
    
    NSLayoutConstraint *verticalBottomConstraint = [NSLayoutConstraint
                                                    constraintWithItem: vertical_stack_view attribute: NSLayoutAttributeBottom
                                                    relatedBy: NSLayoutRelationGreaterThanOrEqual toItem: self.display
                                                    attribute: NSLayoutAttributeBottom multiplier: 1.0 constant: -0.0f];
    
    NSLayoutConstraint *verticalLeftConstraint = [NSLayoutConstraint constraintWithItem: vertical_stack_view attribute:
                                                 NSLayoutAttributeLeft relatedBy: NSLayoutRelationEqual toItem: self.display
                                                attribute: NSLayoutAttributeLeft multiplier: 1.0 constant: 0.0f];
    
    NSLayoutConstraint *verticalRightConstraint = [NSLayoutConstraint
                                                  constraintWithItem: vertical_stack_view attribute: NSLayoutAttributeRight
                                                  relatedBy: NSLayoutRelationEqual toItem: self.display
                                                  attribute: NSLayoutAttributeRight multiplier: 1.0 constant: -0.0f];
    
    [self.view addConstraints: @[verticalTopConstraint, verticalBottomConstraint, verticalLeftConstraint, verticalRightConstraint] ];
    
}

- (NSArray *) rows {
    NSMutableArray *array = [[NSMutableArray alloc] init ];
    for (int i=0; i<=4; i++) {
        UIStackView *current_row = [[UIStackView alloc] init];
        [current_row setTranslatesAutoresizingMaskIntoConstraints: false];
        [current_row setSpacing: 5.0];
        [current_row setAxis: UILayoutConstraintAxisHorizontal];
        [current_row setDistribution: UIStackViewDistributionFillEqually];
        [current_row setAlignment: UIStackViewAlignmentFill];
        switch (i) {
            case 0:
                [current_row addArrangedSubview: buttons[0]];
                [current_row addArrangedSubview: buttons[1]];
                [current_row addArrangedSubview: buttons[2]];
                [current_row addArrangedSubview: buttons[3]];
                break;
            case 1:
                [current_row addArrangedSubview: buttons[4]];
                [current_row addArrangedSubview: buttons[5]];
                [current_row addArrangedSubview: buttons[6]];
                [current_row addArrangedSubview: buttons[7]];
                break;
            case 2:
                [current_row addArrangedSubview: buttons[8]];
                [current_row addArrangedSubview: buttons[9]];
                [current_row addArrangedSubview: buttons[10]];
                [current_row addArrangedSubview: buttons[11]];
                break;
            case 3:
                [current_row addArrangedSubview: buttons[12]];
                [current_row addArrangedSubview: buttons[13]];
                [current_row addArrangedSubview: buttons[14]];
                [current_row addArrangedSubview: buttons[15]];
                break;
            case 4:
                [current_row addArrangedSubview: buttons[16]];
                [current_row addArrangedSubview: buttons[17]];
                [current_row addArrangedSubview: buttons[18]];
                [current_row addArrangedSubview: buttons[19]];
                break;
            default:
                break;
        
        }
        [array addObject: current_row];
    }
    return array;
}

- (NSArray *) initializeButtons {
    NSMutableArray *button_array = [[NSMutableArray alloc] init];
    for (NSString *button in button_symbols) {
        UIButton *current_button = [[UIButton alloc] init];
        [current_button setTitle: button forState: UIControlStateNormal];
        [current_button setTranslatesAutoresizingMaskIntoConstraints: false];
        [current_button setBackgroundColor: UIColor.grayColor];
        [[current_button layer] setBorderWidth: 1.0 ];
        [current_button addTarget: self action: push forControlEvents: UIControlEventTouchUpInside];
        [button_array addObject: current_button];
    }
    return button_array;
}

- (void) push_button: (id) sender {
    UIButton *button_clicked = (UIButton *) sender;
    current_operand = [button_clicked currentTitle];
    if ([ self isNumber: current_operand] && [current_operator isEqualToString: @""]) {
        printf("Number Found!\n");
        if ([[display text] isEqualToString: @"0"]) {
            [display setText: current_operand];
            [[self calculator] setAccumulator: [[display text] doubleValue] ];
             }
        else {
                 [display setText: [[display text] stringByAppendingString: current_operand]];
                 [[self calculator] setAccumulator: [[display text] doubleValue] ];
             }
    } else if (![ self isNumber: current_operand]) {
        current_operator = current_operand;
    } else if ([self isNumber: current_operand] && ![current_operator isEqualToString: @""]) {
        if( [current_operator isEqualToString: @"AC"] ){
            [display setText: @"0"];
            [[self calculator] setAccumulator: 0.0 ];
        } else if ( [current_operator isEqualToString: @"+/-"] ) {
            [display setText: [[display text] doubleValue] > 0 ? [[display text] stringByAppendingString: @"-"] : [[display text] stringByReplacingOccurrencesOfString: @"-" withString: @""] ];
            [[self calculator] changeSign ];
        } else if ( [current_operator isEqualToString: @"%"] ) {
            
        } else if ( [current_operator isEqualToString: @"÷"] ) {
            [[self calculator] divide: [current_operand doubleValue] ];
            [display setText: [ [[NSNumber alloc] initWithDouble: [calculator accumulator] ] stringValue] ];
        } else if ( [current_operator isEqualToString: @"×"] ) {
            [[self calculator] multiply: [current_operand doubleValue] ];
            [display setText: [ [[NSNumber alloc] initWithDouble: [calculator accumulator] ] stringValue] ];
        } else if ( [current_operator isEqualToString: @"-"] ) {
            [[self calculator] subtract: [current_operand doubleValue] ];
            [display setText: [ [[NSNumber alloc] initWithDouble: [calculator accumulator] ] stringValue] ];
        } else if ( [current_operator isEqualToString: @"+"] ) {
            [[self calculator] add: [current_operand doubleValue] ];
            [display setText: [ [[NSNumber alloc] initWithDouble: [calculator accumulator] ] stringValue] ];
        }  else if ( [current_operator isEqualToString: @"="] ) {
            
        } else if ( [current_operator isEqualToString: @"n/d"] ) {
            
        } else if ( [current_operator isEqualToString: @"."] ) {
            
        }
    }

}

- (BOOL) isNumber: (NSString *) operand {
    NSScanner *scanner = [NSScanner scannerWithString: current_operand];
    return [scanner scanInt: NULL] && [scanner isAtEnd];
}


@end
