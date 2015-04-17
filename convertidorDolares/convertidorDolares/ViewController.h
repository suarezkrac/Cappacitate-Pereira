//
//  ViewController.h
//  convertidorDolares
//
//  Created by Developer Cymetria on 17/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Converter.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *valueConvert;
- (IBAction)convertToDollar:(id)sender;
- (IBAction)convertToPesos:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *resultConvertText;

@property Converter * convertidor;

@end

