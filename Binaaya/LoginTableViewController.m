//
//  LoginTableViewController.m
//  Binaaya
//
//  Created by SmartMobile Technologies on 20/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "LoginTableViewController.h"

@interface LoginTableViewController ()

@end

@implementation LoginTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    if ([[UIDevice currentDevice] orientation] == UIDeviceOrientationLandscapeLeft || [[UIDevice currentDevice] orientation ]== UIDeviceOrientationLandscapeRight)
    {
        self.tableView.scrollEnabled = YES;
        NSLog(@"Lanscapse");
    }
    if([[UIDevice currentDevice] orientation] == UIDeviceOrientationPortrait || [[UIDevice currentDevice] orientation] == UIDeviceOrientationPortraitUpsideDown )
    {
        if ([[UIScreen mainScreen] bounds].size.height == 480)
        {
            self.tableView.scrollEnabled = YES;
        }
        else
        {
            self.tableView.scrollEnabled = NO;
            NSLog(@"UIDeviceOrientationPortrait");
        }
    }
}

-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    if ([[UIDevice currentDevice] orientation] == UIDeviceOrientationLandscapeLeft || [[UIDevice currentDevice] orientation ]== UIDeviceOrientationLandscapeRight)
    {
        self.tableView.scrollEnabled = YES;
        NSLog(@"Lanscapse");
    }
    if([[UIDevice currentDevice] orientation] == UIDeviceOrientationPortrait || [[UIDevice currentDevice] orientation] == UIDeviceOrientationPortraitUpsideDown )
    {
        if ([[UIScreen mainScreen] bounds].size.height == 480)
        {
            self.tableView.scrollEnabled = YES;
        }
        else
        {
            self.tableView.scrollEnabled = NO;
            NSLog(@"UIDeviceOrientationPortrait");
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"loginCell" forIndexPath:indexPath];
    
    return cell;
}

@end
