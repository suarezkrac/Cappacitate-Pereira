//
//  ViewController.h
//  Camara
//
//  Created by Developer Cymetria on 18/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *foto;
- (IBAction)photoCamera:(id)sender;
- (IBAction)photoAlbum:(id)sender;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *cameraButton;

@end

