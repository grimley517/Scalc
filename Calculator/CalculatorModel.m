//
//  CalculatorModel.m
//  Calculator
//
//  Created by Brian Jones on 9/10/11.
//  Copyright 2011, 2012, 2013, 2014 . All rights reserved.
//

#import "CalculatorModel.h"
#import <math.h>

@implementation CalculatorModel
- (void)performWaitingOperation
{
    if ([@"+" isEqual:waitingOperation]) {
         operand = waitingOperand + operand; 
    }
    else if ([@"x" isEqual:waitingOperation]) {
         operand = waitingOperand * operand; 
    }
    else if ([@"-" isEqual:waitingOperation]) {
        operand = waitingOperand - operand; 
    }
    else if ([@"^" isEqual:waitingOperation]){
        operand = pow(waitingOperand,  operand);
    }
    else if ([@"÷" isEqual:waitingOperation]) {
        if (operand) {
            operand = waitingOperand / operand;
        } 
        else 
        {
            operand = 0;
        }
    }
}

- (void) setOperand:(double)aDouble{
    operand = aDouble;
}

- (double) performOperation:(NSString *)Operation{
    if ([@"√" isEqual: Operation]) {
        operand = sqrt(operand);
    } 
    else if([@"+/-" isEqual:Operation]){
        operand = 0 - operand;
    }
    else if([@"1/x" isEqual:Operation]){
        if(operand){
        operand = 1/operand;
        }
    }
    
    else
    {
        [self performWaitingOperation];
        waitingOperation = Operation;
        waitingOperand = operand;
    }
    return operand;
}

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

@end
