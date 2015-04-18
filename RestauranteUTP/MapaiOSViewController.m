//
//  MapaiOSViewController.m
//  RestauranteUTP
//
//  Created by Developer Cymetria on 18/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import "MapaiOSViewController.h"

@interface MapaiOSViewController ()

@end

@implementation MapaiOSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _mapa.delegate = self;
    MiPunto * pereira = [[MiPunto alloc] initInPereira];
    [_mapa addAnnotation:pereira];
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    
    [_locationManager requestAlwaysAuthorization];
    
    [_mapa setShowsUserLocation:YES];
    
}
-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    MKCoordinateRegion zonaZoom = MKCoordinateRegionMakeWithDistance([userLocation coordinate], 300, 300);
    [_mapa setRegion:zonaZoom animated:YES];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
