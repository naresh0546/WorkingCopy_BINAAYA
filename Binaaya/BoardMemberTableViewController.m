//
//  BoardMemberTableViewController.m
//  Binaaya
//
//  Created by Apple on 23/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "BoardMemberTableViewController.h"
#import "DummyTableViewCell.h"
#import "DEMOMenuViewController.h"
#import "UIViewController+REFrostedViewController.h"

@interface BoardMemberTableViewController ()
{
    UIAlertAction* okBtn;
}
@end

@implementation BoardMemberTableViewController
@synthesize arrBoardMemberName,arrMemberPosition,arrUnitNo;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrMemberPosition = [[NSMutableArray alloc]initWithObjects:@"CEO",@"MANAGER",@"TEAM MANAGER",@"iOS TEAM LEADER",@"ANDROID TEAMLEAD" ,@"UX DESGINER",@"IOS JUNIOR",@"IOS JUNIOR",@".NET JUNIOR",@".NET JUNIOR",@".NET JUNIOR",nil];
    
    arrBoardMemberName = [[NSMutableArray alloc]initWithObjects:@"ARUN KAKA",@"HARIKA",@"SAFDAR",@"BHARATH",@"ADITY" ,@"NAVEEN",@"NARESH",@"MAHESH",@"KAMAL",@"DINESH",nil];
    
    
    arrUnitNo = [[NSMutableArray alloc]initWithObjects:@"100",@"101",@"102",@"103",@"104" ,@"105",@"106",@"107",@"108",@"109",nil];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    okBtn = [UIAlertAction
             actionWithTitle:@"ok"
             style:UIAlertActionStyleDefault
             handler:^(UIAlertAction * action) {
             }];
    

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
    return arrUnitNo.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"MyIdentifier";
    DummyTableViewCell* cell1 = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    cell1.lblUnitNo.text=[arrUnitNo objectAtIndex: indexPath.row];
    cell1.lblMemberName.text=[arrBoardMemberName objectAtIndex: indexPath.row];
    cell1.lblPosition.text=[arrMemberPosition objectAtIndex: indexPath.row];

    
    [cell1.btnCall addTarget:self action:@selector(callingActionBtn) forControlEvents:UIControlEventTouchUpInside];
    [cell1.btnMsg addTarget:self action:@selector(emailActionBtn) forControlEvents:UIControlEventTouchUpInside];


        cell1.selectionStyle=NO;
        return cell1;
    

}


-(void)callingActionBtn
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://2135554321"]];

}
-(void)emailActionBtn
{
    NSString * msg = @"TESTING";
    NSString * urlWhats = [NSString stringWithFormat:@"whatsapp://send?text=%@",msg];
    
    
    NSCharacterSet *set = [NSCharacterSet URLHostAllowedCharacterSet];
    NSString *result = [urlWhats stringByAddingPercentEncodingWithAllowedCharacters:set];
    NSURL * whatsappURL = [NSURL URLWithString:result];
    if ([[UIApplication sharedApplication] canOpenURL: whatsappURL]) {
        [[UIApplication sharedApplication] openURL: whatsappURL];
    } else {
        
        
        UIAlertController * alert = [UIAlertController  alertControllerWithTitle:@"WhatsApp not installed."
                                                                         message:@"Your device has no WhatsApp installed."
                                                                  preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:okBtn];
        [self presentViewController:alert animated:YES completion:nil];

    }

}
- (IBAction)showMenu:(id)sender {
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    [self.frostedViewController presentMenuViewController];

}


@end
