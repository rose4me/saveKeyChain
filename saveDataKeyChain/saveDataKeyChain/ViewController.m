//
//  ViewController.m
//  saveDataKeyChain
//
//  Created by Balasubramani Rajan on 1/3/17.
//  Copyright © 2017 Balasubramani Rajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)saveBTNAction:(id)sender{
    NSLog(@"Save");
    
//    [self.key setObject:[self.uName text] forKey:@"user name"];
//    [self.key setObject:[self.pwd text] forKey:@"pwd"];
    
    
    [self.key setObject:[self.uName text] forKey:(__bridge id)kSecAttrAccount];
    //NSData* passwordData = [pswd dataUsingEncoding:NSUTF8StringEncoding];
    [self.key setObject:[self.pwd text]  forKey:(__bridge id)kSecValueData];
    
    
}
-(IBAction)retriveBTNAction:(id)sender{
    
    NSLog(@"retrive");
    
    self.uName.text=[self.key objectForKey:(__bridge id)kSecAttrAccount];
    self.pwd.text=[self.key objectForKey:(__bridge id)kSecValueData];
    
    
}


@end
