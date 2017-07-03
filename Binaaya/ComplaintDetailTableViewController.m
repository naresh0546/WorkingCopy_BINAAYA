//
//  ComplaintDetailTableViewController.m
//  Binaaya
//
//  Created by SmartMobile Technologies on 23/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "ComplaintDetailTableViewController.h"
#import "DummyTableViewCell.h"

@interface ComplaintDetailTableViewController ()

@end

@implementation ComplaintDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title=self.titleName;
    
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    
    _arrComplaintValues =[[NSMutableArray alloc]initWithObjects:@"Leaking of Pipeline",@"22/06/2017",@"Water coming into home due to leaking of pipeline.", nil];
    


    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DummyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"complaintDetailCell" forIndexPath:indexPath];
    
    [cell.complaintNameLbl setText:[_arrComplaintValues objectAtIndex:0]];
    [cell.complaintDateLbl setText:[_arrComplaintValues objectAtIndex:1]];
    [cell.complaintByLbl setText:_ComplaintByStr];
    [cell.complaintDescTxtVw setText:[_arrComplaintValues objectAtIndex:2]];

    
    return cell;
}


@end
