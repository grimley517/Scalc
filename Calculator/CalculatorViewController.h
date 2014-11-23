//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Brian Jones on 9/10/11.
//  Copyright 2011, 2012  All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorModel.h"

@interface CalculatorViewController : UIViewController{
    IBOutlet UILabel *display;
    CalculatorModel *brain;
    BOOL userIsTyping;
}

//two type of actions are reqd, - one for the numbers, and one for the operators
// equals is an operator, 
- (IBAction)DigitPressed:(UIButton *)sender;
- (IBAction)OperatorPressed:(UIButton *)sender;
@end
