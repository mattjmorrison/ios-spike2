//
//  PickerViewController.m
//  test
//
//  Created by imtapps on 11/24/13.
//  Copyright (c) 2013 imtapps. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController
@synthesize input, output;

- (void)viewDidLoad {
    [super viewDidLoad];
    _countryNames = @[@"Australia (AUD)", @"China (CNY)",
                      @"France (EUR)", @"Great Britain (GBP)", @"Japan (JPY)"];
    
    _exchangeRates = @[ @0.9922f, @6.5938f, @0.7270f,
                        @0.6206f, @81.57f];
}

- (NSInteger)numberOfComponentsInPickerView: (UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _countryNames.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSLog(_countryNames[row]);
    return _countryNames[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    float rate = [_exchangeRates[row] floatValue];
    float dollars = [input.text floatValue];
    float result = dollars * rate;
    
    NSString *resultString = [[NSString alloc] initWithFormat:
                              @"%.2f USD = %.2f %@", dollars, result,
                              _countryNames[row]];
    output.text = resultString;
}

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}
@end
