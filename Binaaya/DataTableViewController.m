//
//  DataTableViewController.m
//  Binaaya
//
//  Created by Apple on 20/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "DataTableViewController.h"
#import "DataTableViewCell.h"
#import "DEMOMenuViewController.h"
#import "UIViewController+REFrostedViewController.h"

@interface DataTableViewController ()

@end

@implementation DataTableViewController
@synthesize arrCurrentDues,arrOutstanding,arrPerviousDues,arrServiceCharges,arrCellSelected,lblTotalAmount,btnPayNow;

- (void)viewDidLoad {
    [super viewDidLoad];
    

    arrServiceCharges=[[NSMutableArray alloc]initWithObjects:@"General Fund",@"CapitalLevy",@"Special Fund", nil];
    arrPerviousDues=[[NSMutableArray alloc]initWithObjects:@"414.48",@"0.00",@"0.00",nil];
    arrCurrentDues=[[NSMutableArray alloc]initWithObjects:@"558.70",@"125.00",@"58.00",nil];
    arrOutstanding=[[NSMutableArray alloc]initWithObjects:@"22.25",@"0.00",@"8.00", nil];
    arrCellSelected=[NSMutableArray array];
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
     return arrServiceCharges.count;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MyIdentifier";
    DataTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier
                                                   forIndexPath:indexPath];
    
    [cell.lblServiceCharges setText:[arrServiceCharges objectAtIndex:indexPath.row]];
    [cell.lblPreviousDues setText:[arrPerviousDues objectAtIndex:indexPath.row]];
    [cell.lblCurrentDues setText:[arrCurrentDues objectAtIndex:indexPath.row]];
    [cell.lblOutstanding setText:[arrOutstanding objectAtIndex:indexPath.row]];

    
    
    if ([arrCellSelected containsObject:indexPath])
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
        
    }


    float tot = 0.0;
    for (int i = 0; i < [arrCellSelected count]; i++)
    {
        
        tot = tot +  [[arrCurrentDues objectAtIndex:i]floatValue] +[[arrOutstanding objectAtIndex:i]floatValue]+[[arrPerviousDues objectAtIndex:i]floatValue];
    }
    NSLog(@"Total Cost : ₹ %.2f",tot);
    lblTotalAmount.text=[[NSString alloc] initWithFormat:@"Total:%f", tot];

    
    

    return cell;
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
    

    [tableView reloadData];
}



- (IBAction)showMenuAction:(id)sender {
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    [self.frostedViewController presentMenuViewController];

}







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
