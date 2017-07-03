//
//  MyNeighboursViewController.m
//  Binaaya
//
//  Created by SmartMobile Technologies on 21/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "MyNeighboursViewController.h"
#import "DEMOMenuViewController.h"
#import "UIViewController+REFrostedViewController.h"
#import "MyNeighboursTableViewCell.h"

#import "DetailNeighbourViewController.h"



@interface MyNeighboursViewController ()

@end

@implementation MyNeighboursViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   _arrMyneighbourName =[[NSMutableArray alloc]initWithObjects:@"Tendulkar",@"Hardrik",@"Dhoni",@"Shami", nil];
    _arrMyneighbourUnitNo =[[NSMutableArray alloc]initWithObjects:@"SBM Residency- 100",@"SBM Residency- 101",@"SBM Residency- 102",@"SBM Residency- 103",nil];


    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return [_arrMyneighbourName count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyNeighboursTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myNeighbours" forIndexPath:indexPath];
    
    [cell.myNeighbourNameLbl setText:[_arrMyneighbourName objectAtIndex:indexPath.row]];
    [cell.unitNoLbl setText:[_arrMyneighbourUnitNo objectAtIndex:indexPath.row]];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.row==0)
    {
        DetailNeighbourViewController *spotyViewController = [[DetailNeighbourViewController alloc] initWithMainImage:[UIImage imageNamed:@"example"]];
        
        [self.navigationController pushViewController:spotyViewController animated:YES];

    }
    
}



- (IBAction)showMenu:(id)sender {
    
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    [self.frostedViewController presentMenuViewController];

}

@end
