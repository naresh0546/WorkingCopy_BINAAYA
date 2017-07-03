//
//  CommunityDetailTableViewController.m
//  Binaaya
//
//  Created by SmartMobile Technologies on 22/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "CommunityDetailTableViewController.h"
#import "DummyTableViewCell.h"
#import "NIDropDown.h"


@interface CommunityDetailTableViewController ()

@end

@implementation CommunityDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=self.titleName;
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    _arrEventValue =[[NSMutableArray alloc]initWithObjects:@"SMT event 1",@"SMT event 1 - Description",@"Dubai",@"25/05/2017",@"30/06/2017",@"08:00 am",@"08:00 pm",@"Board Members,Owners,Tenants", nil];
    _dropDoenArr =[[NSMutableArray alloc]initWithObjects:@"I Will attempt",@"I Will not attempt",nil];
}
-(void)rel{
    _dropDown = nil;
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DummyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CommunityDetail" forIndexPath:indexPath];
    [cell.eventNameLbl1 setText:[_arrEventValue objectAtIndex:0]];
    [cell.eventDescLbl setText:[_arrEventValue objectAtIndex:1]];
    [cell.eventLocaLbl setText:[_arrEventValue objectAtIndex:2]];
    [cell.eventStartDateLbl setText:[_arrEventValue objectAtIndex:3]];
    [cell.eventEndDateLbl setText:[_arrEventValue objectAtIndex:4]];
    [cell.eventStartTimeLbl setText:[_arrEventValue objectAtIndex:5]];
    [cell.eventEndTimeLbl setText:[_arrEventValue objectAtIndex:6]];
    [cell.participantsLbl setText:[_arrEventValue objectAtIndex:7]];
    [cell.dropDownBtn addTarget:self action:@selector(dropDownClick:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}

-(void)dropDownClick:(UIButton*)btn
{
    if(_dropDown == nil) {
        CGFloat f = 80;
        _dropDown = [[NIDropDown alloc]showDropDown:btn :&f :_dropDoenArr :nil :@"down"];
    }
    else {
        [_dropDown hideDropDown:btn];
        [self rel];
    }

}
- (void) niDropDownDelegateMethod: (NIDropDown *) sender {
    [self rel];
}


@end
