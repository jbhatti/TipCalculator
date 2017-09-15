//
//  CalculatorTip.h
//  TipCalculator
//
//  Created by Jaison Bhatti on 2017-09-15.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorTip : NSObject

@property (nonatomic, assign) NSUInteger billAmount;
@property (nonatomic, assign) float tip;

- (float) calculateTip:(NSUInteger) billAmount;


@end
