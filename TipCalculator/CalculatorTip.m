//
//  CalculatorTip.m
//  TipCalculator
//
//  Created by Jaison Bhatti on 2017-09-15.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "CalculatorTip.h"

@implementation CalculatorTip


//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        _tip = 0.15;
//    }
//    return self;
//}

- (float) calculateTip:(NSUInteger) billAmount {
    float total;
    
    total = billAmount*(self.tip);
    
    return total;
}

@end
