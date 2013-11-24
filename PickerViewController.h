//
//  PickerViewController.h
//  test
//
//  Created by imtapps on 11/24/13.
//  Copyright (c) 2013 imtapps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController
 <UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong, nonatomic) NSArray *countryNames;
@property (weak, nonatomic) IBOutlet UITextField *input;
@property (weak, nonatomic) IBOutlet UILabel *output;
@property (strong, nonatomic) NSArray *exchangeRates;
- (IBAction)textFieldReturn:(id)sender;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@end
