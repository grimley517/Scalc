//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Brian Jones on 9/10/11.
//  Copyright 2011, 2012 All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController
- (CalculatorModel *) brain {
    if (!brain) brain = [[CalculatorModel alloc] init];
    return brain;
}

- (IBAction)DigitPressed:(UIButton *)sender{
    NSString *digit = [[sender titleLabel]text];
    if (userIsTyping)
    {
        [display setText:[[display text] stringByAppendingString: digit]];
    }
    else
    {
        [display setText:digit];
         userIsTyping = YES;
    }
}
- (IBAction)OperatorPressed:(UIButton *)sender{
    if (userIsTyping){
        [[self brain] setOperand:[[display text] doubleValue]];
        userIsTyping = NO;
    }
    
    NSString *operation = [[sender titleLabel] text];
    double result = [[self brain] performOperation: operation];
    [display setText:[NSString stringWithFormat:@"%g", result]]; 
}

@end
