//
//  Converter.h
//  convertidorDolares
//
//  Created by Developer Cymetria on 17/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Converter : NSObject

@property NSString * resultConverter;
@property NSString * valueToConverter;

//-(NSString*)convertDollarsToPesos;
-(void)convertDollarsToPesos;
-(NSString*)convertPesosToDollars:(NSString*)pesos withTRM:(float)trm;

@end
