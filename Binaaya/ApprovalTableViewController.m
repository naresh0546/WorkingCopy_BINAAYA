//
//  ApprovalTableViewController.m
//  Binaaya
//
//  Created by Apple on 29/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "ApprovalTableViewController.h"
#import "DEMOMenuViewController.h"
#import "UIViewController+REFrostedViewController.h"
#import "DummyTableViewCell.h"
#import "ApprovalDetailsViewController.h"
@interface ApprovalTableViewController ()

@end

@implementation ApprovalTableViewController
@synthesize arrCellSelected,arrActionProcess,arrBudgetName,arrSubmittedDate;

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    arrBudgetName = [[NSMutableArray alloc]initWithObjects:@"SMT Parties",@"SMT",@"SMT",@"SMT" ,@"SMT",nil];
    
    arrSubmittedDate = [[NSMutableArray alloc]initWithObjects:@"25/05/2017",@"25/05/2017",@"25/05/2017",@"25/05/2017",@"25/05/2017" ,nil];
    
    arrActionProcess = [[NSMutableArray alloc]initWithObjects:@"YES",@"NO",@"YES",@"YES" ,@"NO",nil];
    
    
    arrCellSelected=[NSMutableArray array];
    self.tableView.separatorStyle=NO;

}
- (IBAction)showMenu:(id)sender {
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    [self.frostedViewController presentMenuViewController];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrBudgetName.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"MyIdentifier";
    DummyTableViewCell* cell1 = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    cell1.lblBudgetName.text=[arrBudgetName objectAtIndex: indexPath.row];
    cell1.lblSUbmittedDate.text=[arrSubmittedDate objectAtIndex: indexPath.row];
    cell1.lblActionProcess.text=[arrActionProcess objectAtIndex: indexPath.row];

    cell1.selectionStyle=NO;
    
    
    if ([arrCellSelected containsObject:indexPath])
    {
        cell1.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
    {
        cell1.accessoryType = UITableViewCellAccessoryNone;
        
        
    }
    return cell1;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if ([arrCellSelected containsObject:indexPath])
    {
        [arrCellSelected removeObject:indexPath];
    }
    else
    {
        [arrCellSelected addObject:indexPath];
    }
    ApprovalDetailsViewController * approvalDetailsVC=[[ApprovalDetailsViewController alloc]init];
    approvalDetailsVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ApprovalDetailsVC"];
    [self.navigationController pushViewController:approvalDetailsVC animated:YES];

    
    [tableView reloadData];
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return YES if you want the specified item to be editable.
    return YES;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //add code here for when you hit delete
    }
}


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
