//
//  ComplaintsTableViewController.m
//  Binaaya
//
//  Created by SmartMobile Technologies on 23/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "ComplaintsTableViewController.h"
#import "DummyTableViewCell.h"
#import "ComplaintDetailTableViewController.h"
#import "DEMOMenuViewController.h"
#import "UIViewController+REFrostedViewController.h"
#import "PostComplaintViewController.h"

@interface ComplaintsTableViewController ()

@end

@implementation ComplaintsTableViewController
{
    UIButton *postComplaintBtn;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _arrTicketId=[[NSMutableArray alloc]initWithObjects:@"16186",@"55384",@"61647", nil];
    _arrName=[[NSMutableArray alloc]initWithObjects:@"Leaking of Pipeline",@"Large number of visitors",@"Noise Pollution", nil];

    _arrComplaintBy=[[NSMutableArray alloc]initWithObjects:@"Sadar",@"Sadar",@"Harika", nil];

    _arrStatus=[[NSMutableArray alloc]initWithObjects:@"Assigned",@"Progress",@"Completed", nil];

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_arrTicketId count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DummyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ComplaintsCell" forIndexPath:indexPath];
    
    [cell.ticketIdLbl setText:[_arrTicketId objectAtIndex:indexPath.row]];
    [cell.nameLbl setText:[_arrName objectAtIndex:indexPath.row]];
    [cell.complaintsByLbl setText:[_arrComplaintBy objectAtIndex:indexPath.row]];
    [cell.statusLbl setText:[_arrStatus objectAtIndex:indexPath.row]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.row==0)
    {
        ComplaintDetailTableViewController *complaintDetailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ComplainDetailVC"];
        
        complaintDetailVC.titleName=[_arrTicketId objectAtIndex:indexPath.row];
        complaintDetailVC.ComplaintByStr=[_arrComplaintBy objectAtIndex:indexPath.row];
        [self.navigationController pushViewController:complaintDetailVC animated:YES];
        
    }
    
}


- (IBAction)showMenu:(id)sender {
    
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    [self.frostedViewController presentMenuViewController];

}


@end
