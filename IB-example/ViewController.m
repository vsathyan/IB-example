//
//  ViewController.m
//  IB-example
//
//  Created by Vineet Sathyan on 6/10/15.
//  Copyright (c) 2015 sample. All rights reserved.
//

#import "ViewController.h"

NSString * const SmilingText = @"Yay Smiling!";
NSString * const FrowningText = @"Boo Frowning...";

NSString * const SmileButtonText = @"Smile!";
NSString * const FrownButtonText = @"Frown!";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self frown];
}


- (IBAction)smileButtonClicked:(id)sender {
    
    if (self.isSmiling)
    {
        [self frown];
    }
    
    else
    {
        [self smile];
    }
}

- (void)smile {
    
    [self.smileView setImage:[UIImage imageNamed:@"Smiley.png"]];
    [self.outputLabel setText:SmilingText];
    self.isSmiling = YES;
    [self.smileButton setTitle:SmileButtonText forState:UIControlStateNormal];
}

- (void)frown {
    
    [self.smileView setImage:[UIImage imageNamed:@"Frowny.png"]];
    [self.outputLabel setText:FrowningText];
    self.isSmiling = NO;
    [self.smileButton setTitle:FrownButtonText forState:UIControlStateNormal];
}

@end
