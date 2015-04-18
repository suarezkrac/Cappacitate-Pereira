//
//  MapaiOSViewController.h
//  RestauranteUTP
//
//  Created by Developer Cymetria on 18/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "MiPunto.h"

@interface MapaiOSViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapa;

@property CLLocationManager * locationManager;

@end
