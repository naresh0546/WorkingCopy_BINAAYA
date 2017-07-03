//
//  CommunityTableViewController.m
//  Binaaya
//
//  Created by SmartMobile Technologies on 22/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "CommunityTableViewController.h"
#import "DummyTableViewCell.h"
#import "DEMOMenuViewController.h"
#import "UIViewController+REFrostedViewController.h"

#import "CommunityDetailTableViewController.h"


@interface CommunityTableViewController ()

@end

@implementation CommunityTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _arrEventName =[[NSMutableArray alloc]initWithObjects:@"SMT event 1",@"SMT event 2",@"SMT event 3",@"SMT event 4", nil];
    _arrEventDate =[[NSMutableArray alloc]initWithObjects:@"25/05/2017",@"28/05/2017",@"29/05/2017",@"30/05/2017",nil];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_arrEventName count];;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DummyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CommunityCell" forIndexPath:indexPath];
    
    [cell.eventNameLbl setText:[_arrEventName objectAtIndex:indexPath.row]];
    [cell.eventDateLbl setText:[_arrEventDate objectAtIndex:indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.row==0)
    {
        CommunityDetailTableViewController *entryController = [self.storyboard instantiateViewControllerWithIdentifier:@"CommunityDetailsVC"];
        
        entryController.titleName=[_arrEventName objectAtIndex:indexPath.row];
        [self.navigationController pushViewController:entryController animated:YES];
        
    }
    
}

- (IBAction)showMenu:(id)sender {
    
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    [self.frostedViewController presentMenuViewController];
    

}

@end
