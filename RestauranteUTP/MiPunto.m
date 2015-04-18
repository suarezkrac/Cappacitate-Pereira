//
//  MiPunto.m
//  RestauranteUTP
//
//  Created by Developer Cymetria on 18/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import "MiPunto.h"

@implementation MiPunto

-(id)initInPereira{
    self= [super init];
    if (self) {
        _coordinate = CLLocationCoordinate2DMake(4.81321, -75.6946);
        _title = @"Pereira";
    }
    return self;

}


@end
