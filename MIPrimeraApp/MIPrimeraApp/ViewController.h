//
//  ViewController.h
//  MIPrimeraApp
//
//  Created by Developer Cymetria on 17/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *userTextFiel;

@property (strong, nonatomic) IBOutlet UILabel *resultText;

- (IBAction)welcomeUser:(id)sender;

@end

