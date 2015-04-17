//
//  ViewController.m
//  MIPrimeraApp
//
//  Created by Developer Cymetria on 17/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * name = @"Giovanny Suarez";
    NSString * introName = @"Mi nombre es:";
    
    NSString * stringFull = [introName stringByAppendingString:name];
    //introName.stringByAppendingString(name);
    
    int age = 30;
    
    NSLog(@"%@ y tengo %i años", stringFull, age);
    
    NSArray * country = @[@"Colombia", @"Ecuador", @"Peru"];

    NSLog(@"%@",[country objectAtIndex:2]);
    
    NSMutableArray * cities = [[NSMutableArray alloc] initWithArray:@[@"Pereira"]];
    
    [cities addObject:@"Medellin"];
    
    NSLog(@"%@", cities);

//    [cities removeObject:@"Pereira"];
    [cities removeObjectAtIndex:0];
    
   NSLog(@"%@", cities);
    
NSDictionary * car = @{@"marca": @"mazda", @"modelo": @"2007", @"placa" : @"JJJ123", @"años" : [NSString stringWithFormat:@"%i", age]};
    
    //NSString * year = @"2015";
    //int yearInt = [year floatValue];
    
    NSLog(@"%@", car);
    
    NSMutableDictionary * user = [[NSMutableDictionary alloc] initWithDictionary:@{@"user": @"Giovanny", @"pass" : @"123"}];
    
    [user setObject:@"Medellin" forKey:@"ciudad"];
    
    NSLog(@"%@", user);
    
    [user setObject:@"Bogota" forKey:@"ciudad"];
    
    NSLog(@"%@", user);
    
    [user removeObjectForKey:@"pass"];
    
    NSLog(@"%@", user);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)welcomeUser:(id)sender {
    _resultText.text = _userTextFiel.text;
    //self.resultText.text = self.userTextFiel.text;
    
}
@end
