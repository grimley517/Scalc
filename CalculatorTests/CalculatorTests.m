//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by Brian Jones on 9/10/11.
//  Copyright 2011, 2012, 2013 All rights reserved.
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
    //simple addition test 1+2 = 3
    [Calc setOperand:1];//simulates pressing the 1 button
    [Calc performOperation:@"+"]; //simulates pressing the + button
    [Calc setOperand:2]; //simulates pressing the 2 button
    double result = [Calc performOperation:@"="];//result should be returned when the equal sign pressed
    double expected = 3;
    XCTAssertEqual(expected, result , @"Expected 1+2 = 3");
}

-(void)test2
{
    //simple division test 1/2 = 0.5  not too different from test 1, but tests another infix function, and a proper double produced (naote this may be affected by weird decimalto binary effects.
    [Calc setOperand:1];//simulates pressing the 1 button
    [Calc performOperation:@"/"]; //simulates pressing the + button
    [Calc setOperand:2]; //simulates pressing the 2 button
    double result = [Calc performOperation:@"="];//result should be returned when the equal sign pressed
    double expected = 0.5;
    XCTAssertEqual(expected, result , @"Expected 1/2 = 0.5");
}

-(void)test3
{
    //simple negation - ie check the negation button, also checks that negative numbers display correctly
    [Calc setOperand:1];//simulates pressing the 1 button
    double result = [Calc performOperation:@"+/-"];//result should be returned when the equal sign pressed
    double expected = -1;
    XCTAssertEqual(expected, result , @"Expected is negative 1");
}
-(void)test4
{
    //simple division test 1/0 = error  not too different from test 2, but an error should arise and be handled gracefully
    [Calc setOperand:1];//simulates pressing the 1 button
    [Calc performOperation:@"/"]; //simulates pressing the + button
    XCTAssertThrows([Calc setOperand:0]); //simulates pressing the 0 button, this should throw the wobbly exception

}

@end
