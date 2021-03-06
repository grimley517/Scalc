//
//  CalculatorModel.h
//  Calculator
//
//  Created by Brian Jones on 9/10/11.
//  Copyright 2011, 2012, 2013, 2014 . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorModel : NSObject{

    double operand;
    NSString *waitingOperation;
    double waitingOperand;
    
}
- (void) setOperand:(double)aDouble;
- (double) performOperation:(NSString *)Operation;

@end
