//
//  ViewController.h
//  saveDataKeyChain
//
//  Created by Balasubramani Rajan on 1/3/17.
//  Copyright © 2017 Balasubramani Rajan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KeychainItemWrapper.h"

@interface ViewController : UIViewController

@property(nonatomic,strong) IBOutlet UITextField * uName;
@property(nonatomic,strong) IBOutlet UITextField * pwd;
@property(nonatomic,strong) IBOutlet UIButton * saveBTN;
@property(nonatomic,strong) IBOutlet UIButton * retriveBTN;
@property(nonatomic,strong) KeychainItemWrapper *key;


-(IBAction)saveBTNAction:(id)sender;
-(IBAction)retriveBTNAction:(id)sender;
@end

