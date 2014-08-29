//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by Brian Jones on 9/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorTests.h"

@implementation CalculatorTests

-(void)setUp
{
    Calc = [[CalculatorModel alloc]init];
    
}

-(void)tearDown
{
    [Calc release];
}

-(void)test1
{
    //simple addition test 1=2 = 3
    [Calc setOperand:1];//simulates pressing the 1 button
    [Calc performOperation:@"+"]; //simulates pressing the + button
    [Calc setOperand:2]; //simulates pressing the 2 button
    double result = [Calc performOperation:@"="];//result should be returned when the equal sign pressed
    double expected = 3;
    XCTAssertEqual(expected, result , @"Expected 1+2 = 3");
}

@end
