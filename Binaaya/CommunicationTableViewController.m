//
//  CommunicationTableViewController.m
//  Binaaya
//
//  Created by Apple on 29/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "CommunicationTableViewController.h"
#import "DEMOMenuViewController.h"
#import "UIViewController+REFrostedViewController.h"
#import "DummyTableViewCell.h"
#import "ComposeViewController.h"
@interface CommunicationTableViewController ()

@end

@implementation CommunicationTableViewController
@synthesize arrFromEmailAddress,arrPostDate,arrSubject,arrCellSelected,segmentController;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrFromEmailAddress = [[NSMutableArray alloc]initWithObjects:@"admin@binaaya.com",@"admin@binaaya.com",@"admin@binaaya.com",@"admin@binaaya.com" ,@"admin@binaaya.com",nil];
    
    arrPostDate = [[NSMutableArray alloc]initWithObjects:@"25/05/2017",@"25/05/2017",@"25/05/2017",@"25/05/2017",@"25/05/2017" ,nil];
    
    
    arrSubject = [[NSMutableArray alloc]initWithObjects:@"Invoice details",@"Welcome to Mobility Community",@"Welcome to Mobility Community",@"Welcome to Mobility Community",@"Welcome to Mobility Community" ,nil];
    
    arrCellSelected=[NSMutableArray array];
    self.tableView.separatorStyle=NO;
    [[UISegmentedControl appearance] setTintColor:[UIColor whiteColor]];
    segmentController.selectedSegmentIndex=0;
    [[UISegmentedControl appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                             [UIColor orangeColor],NSForegroundColorAttributeName, nil]
                                                   forState:UIControlStateSelected];

}
- (IBAction)showMenu:(id)sender {
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    [self.frostedViewController presentMenuViewController];

}
- (IBAction)segementAction:(id)sender {
    if (segmentController.selectedSegmentIndex==1)
    {
        
        ComposeViewController * composeVC=[[ComposeViewController alloc]init];
        composeVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"composeVC"];
        [self.navigationController pushViewController:composeVC animated:YES];
        
    }
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
    return arrFromEmailAddress.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"MyIdentifier";
    DummyTableViewCell* cell1 = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    cell1.lblFromAddresEmail.text=[arrFromEmailAddress objectAtIndex: indexPath.row];
    cell1.lblSubject.text=[arrSubject objectAtIndex: indexPath.row];
    cell1.lblDate.text=[arrPostDate objectAtIndex: indexPath.row];
    
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
