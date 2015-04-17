//
//  Converter.m
//  convertidorDolares
//
//  Created by Developer Cymetria on 17/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import "Converter.h"

@implementation Converter

-(void)convertDollarsToPesos{
    
    _resultConverter = [NSString stringWithFormat:@"%f", [_valueToConverter floatValue] * 2580.00];
    
}
-(NSString *)convertPesosToDollars:(NSString *)pesos withTRM:(float)trm{
    return [NSString stringWithFormat:@"%f", [pesos intValue] / trm ];

}
@end
