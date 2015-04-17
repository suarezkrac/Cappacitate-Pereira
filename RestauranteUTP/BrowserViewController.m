//
//  BrowserViewController.m
//  RestauranteUTP
//
//  Created by Developer Cymetria on 17/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import "BrowserViewController.h"

@interface BrowserViewController ()

@end

@implementation BrowserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL * url = [NSURL URLWithString:@"http://eltiempo.com"];
    [ _browser loadRequest:[NSURLRequest requestWithURL:url ]];
    _browser.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)webViewDidStartLoad:(UIWebView *)webView{
    [_animacion startAnimating];
    _animacion.hidden = NO;
    _browser.hidden = YES;

}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [_animacion stopAnimating];
    _animacion.hidden = YES;
    _browser.hidden = NO;

}

@end
