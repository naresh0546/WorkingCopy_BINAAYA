//
//  ViewController.m
//  Binaaya
//
//  Created by Apple on 13/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "ViewController.h"
#import "DEMOMenuViewController.h"
#import "UIViewController+REFrostedViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)showMenu:(id)sender {
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    [self.frostedViewController presentMenuViewController];
}

@end
