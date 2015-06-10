//
//  ViewController.h
//  IB-example
//
//  Created by Vineet Sathyan on 6/10/15.
//  Copyright (c) 2015 sample. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const SmilingText;
extern NSString * const FrowningText;

extern NSString * const SmileButtonText;
extern NSString * const FrownButtonText;

@interface ViewController : UIViewController

@property (nonatomic) BOOL isSmiling;

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UIImageView *smileView;
@property (weak, nonatomic) IBOutlet UIButton *smileButton;

- (IBAction)smileButtonClicked:(id)sender;

@end

