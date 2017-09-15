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
@property (weak, nonatomic) IBOutlet UITextField *tipAmountTextField;


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
    float floatBillVal = [self.billAmountTextField.text floatValue];
    float floatTipVal = [self.tipAmountTextField.text floatValue];
    
    newTip.tip = (floatTipVal/100);
    
    float newTipInNumValue = [newTip calculateTip:floatBillVal];
    
    //NSString *stringNum = @(newTipInNumValue).stringValue;
    
    NSString *newStringNum = [[NSNumber numberWithFloat:newTipInNumValue]stringValue];
    
    self.displayTip.text = newStringNum;
    
    
    
    
}




@end
