//
//  ViewController.m
//  convertidorDolares
//
//  Created by Developer Cymetria on 17/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _convertidor = [[Converter alloc] init];
    //_convertidor = [Converter new];

}

- (IBAction)convertToDollar:(id)sender {
    _resultConvertText.text =[_convertidor convertPesosToDollars:_valueConvert.text withTRM:2580.20];
}

- (IBAction)convertToPesos:(id)sender {
    _convertidor.valueToConverter = _valueConvert.text;
    [_convertidor convertDollarsToPesos];
    _resultConvertText.text = _convertidor.resultConverter;
}
@end
