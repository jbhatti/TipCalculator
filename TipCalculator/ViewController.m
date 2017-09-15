//
//  ViewController.m
//  TipCalculator
//
//  Created by Jaison Bhatti on 2017-09-15.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorTip.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *displayTip;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)calculateTip:(id)sender {
    CalculatorTip *newTip = [[CalculatorTip alloc] init];
    float intVal = [self.billAmountTextField.text floatValue];
    
    newTip.tip = 0.15;
    float newTipInNumValue = [newTip calculateTip:intVal];
    
    float displayTipInNum = [self.displayTip.text floatValue];
    
    displayTipInNum = newTipInNumValue;
}




@end
