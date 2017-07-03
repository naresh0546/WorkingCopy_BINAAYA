//
//  WallTableViewController.m
//  Binaaya
//
//  Created by SmartMobile Technologies on 29/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "WallTableViewController.h"
#import "DummyTableViewCell.h"

#import "DEMOMenuViewController.h"
#import "UIViewController+REFrostedViewController.h"
#import "PostWallViewController.h"


@interface WallTableViewController ()

@end

@implementation WallTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _arrWallTitle=[[NSMutableArray alloc]initWithObjects:@"Demo",@"Short trip",@"Party", nil];
    _arrCommentsPosted=[[NSMutableArray alloc]initWithObjects:@"Demo on Binaaya",@"Short trip from our community",@"Party tomorrow at my residence", nil];
    _arrPostedBy=[[NSMutableArray alloc]initWithObjects:@"Harika",@"Harika",@"Harika", nil];
    _arrPostedOn=[[NSMutableArray alloc]initWithObjects:@"06/22/2017",@"05/25/2017",@"05/24/2017", nil];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_arrWallTitle count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DummyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WallCell" forIndexPath:indexPath];
    
    [cell.wallTitleLbl setText:[_arrWallTitle objectAtIndex:indexPath.row]];
    [cell.commentsPostedLbl setText:[_arrCommentsPosted objectAtIndex:indexPath.row]];
    [cell.commentsPostedByLbl setText:[_arrPostedBy objectAtIndex:indexPath.row]];
    [cell.commentsPostedOn setText:[_arrPostedOn objectAtIndex:indexPath.row]];
    return cell;
}

- (IBAction)showMenu:(id)sender {
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    [self.frostedViewController presentMenuViewController];
}


@end
