//
//  MapaGoogleViewController.m
//  RestauranteUTP
//
//  Created by Developer Cymetria on 18/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import "MapaGoogleViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface MapaGoogleViewController ()

@end

@implementation MapaGoogleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    GMSMapView * mapa;
    GMSCameraPosition * camera = [GMSCameraPosition cameraWithLatitude: 4.81321 longitude:-75.6946 zoom:11];
    
    mapa = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapa.myLocationEnabled = YES;
    self.view = mapa;
    
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
