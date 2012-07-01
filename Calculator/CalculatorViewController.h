//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Brian Jones on 9/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorModel.h"

@interface CalculatorViewController : UIViewController{
    IBOutlet UILabel *display;
    CalculatorModel *brain;
    BOOL userIsTyping;
}
- (IBAction)DigitPressed:(UIButton *)sender;
- (IBAction)OperatorPressed:(UIButton *)sender;
@end
