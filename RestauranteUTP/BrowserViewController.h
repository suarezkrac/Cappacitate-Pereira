//
//  BrowserViewController.h
//  RestauranteUTP
//
//  Created by Developer Cymetria on 17/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BrowserViewController : UIViewController <UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UIWebView *browser;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *animacion;

@end
