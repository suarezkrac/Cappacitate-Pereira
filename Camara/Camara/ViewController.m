//
//  ViewController.m
//  Camara
//
//  Created by Developer Cymetria on 18/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        _cameraButton.enabled = NO;
        
        
        UIAlertView * errorCamara = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Tu dispositivo no tiene camara disponible" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
        [errorCamara show];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)photoCamera:(id)sender {
    UIImagePickerController * camara = [[UIImagePickerController alloc] init];
    camara.delegate = self;
    camara.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:camara animated:YES completion:nil];
}

- (IBAction)photoAlbum:(id)sender {
    UIImagePickerController * albumFoto = [[UIImagePickerController alloc] init];
    albumFoto.delegate = self;
    
    albumFoto.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;

    [self presentViewController:albumFoto animated:YES completion:nil];
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage * imagenCapturada = info[UIImagePickerControllerOriginalImage];
    _foto.image = imagenCapturada;
    
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
