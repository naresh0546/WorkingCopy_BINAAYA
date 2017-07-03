//
//  AppointmentsViewController.m
//  Binaaya
//
//  Created by Apple on 21/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "AppointmentsViewController.h"
#import "DataTableViewCell.h"
#import "DummyTableViewCell.h"
#import "NIDropDown.h"
#import "DEMOMenuViewController.h"
#import "UIViewController+REFrostedViewController.h"




@interface AppointmentsViewController ()
{
    DataTableViewCell *cell;
    DummyTableViewCell* cell1;
    UIAlertAction* okBtn;
}
@end

@implementation AppointmentsViewController
@synthesize isRowHidden,selectedPath,btnSelect,strSaveBtnTitle,dataSourceArray,pickerDateView,viewFacilityBg;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.separatorStyle=NO;
    isRowHidden=YES;
    self.tableView.scrollEnabled = NO;
    [[btnSelect layer] setBorderWidth:1.0f];
    [[btnSelect layer] setBorderColor:[UIColor blackColor].CGColor];

    [[viewFacilityBg layer] setBorderWidth:1.0f];
    [[viewFacilityBg layer] setBorderColor:[UIColor blackColor].CGColor];
    

    
     okBtn = [UIAlertAction
                            actionWithTitle:@"ok"
                            style:UIAlertActionStyleDefault
                            handler:^(UIAlertAction * action) {
                            }];

    
//    dataSourceArray = @[@"Picker Row 1", @"Picker Row 2", @"Picker Row 3", @"Picker Row 4"];
//    pickerDateView = [[UIPickerView alloc]initWithFrame:CGRectMake(0, 500, 375, 150)];
//    pickerDateView.delegate = self;
//    pickerDateView.dataSource = self;
//    pickerDateView.showsSelectionIndicator = YES;
//    pickerDateView.backgroundColor=[UIColor lightGrayColor];
//    [self.view addSubview:pickerDateView];
//    pickerDateView.hidden=YES;
    
    // Do any additional setup after loading the view.
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


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height = 0.0;
    if (isRowHidden) {
        height = 0.0;
    } else{
        return 450;
    }

    return height;
}
- (IBAction)postRequiredBtnAction:(id)sender {
    
    if ([btnSelect.titleLabel.text isEqualToString:@"Select"])
    {
        
        UIAlertController * alert = [UIAlertController  alertControllerWithTitle:@"Alert"
                                                                         message:@"Please Select Facility Type"
                                                                  preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:okBtn];
        [self presentViewController:alert animated:YES completion:nil];

    }else{
        
        isRowHidden =NO;
       strSaveBtnTitle=[NSString stringWithFormat:@"%@",btnSelect.titleLabel.text];
        selectedPath = [NSIndexPath indexPathForRow:0 inSection:0];
        [self.tableView reloadData];
 
    }
}

- (IBAction)checkAvailabilityBtnAction:(id)sender {
    isRowHidden =NO;
    selectedPath = [NSIndexPath indexPathForRow:1 inSection:0];
    [self.tableView reloadData];

}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    textField.autocorrectionType = UITextAutocorrectionTypeNo;

    return YES;
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];// this will do the trick
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if ([self.selectedPath isEqual:indexPath])
    {
        static NSString *CellIdentifier = @"MyIdentifier";
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        cell.lblFacilityName.text=strSaveBtnTitle;
        cell.lblFaciliName.text=strSaveBtnTitle;
        
        cell.txtFldFromDate.delegate=self;
        cell.txtFldToDate.delegate=self;
        cell.txtFldNoMens.delegate=self;
        cell.txtFldNoWomens.delegate=self;

        [cell.txtFldFromDate resignFirstResponder];
        [cell.txtFldToDate resignFirstResponder];
        [cell.txtFldNoMens resignFirstResponder];
        [cell.txtFldNoWomens resignFirstResponder];

        
        cell.selectionStyle=NO;
        return cell;
        
    }else
    {
    static NSString *CellIdentifier = @"MyIdentifier1";
     cell1 = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        
        
        cell1.txtFldVistorName.delegate=self;
        cell1.txtFldVistorNationality.delegate=self;
        cell1.txtFldVistorDate.delegate=self;
        cell1.txtFldVistorTimeIN.delegate=self;
        cell1.txtFldVistorTimeOut.delegate=self;

        
        
        [cell1.txtFldVistorName resignFirstResponder];
        [cell1.txtFldVistorNationality resignFirstResponder];
        [cell1.txtFldVistorDate resignFirstResponder];
        [cell1.txtFldVistorTimeIN resignFirstResponder];
        [cell1.txtFldVistorTimeOut resignFirstResponder];
        
        
        
    cell1.selectionStyle=NO;
        return cell1;

    }
      return nil;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)btnFacilityType:(id)sender {
    NSArray * arr = [[NSArray alloc] init];
    arr = [NSArray arrayWithObjects:@"Swimming pool", @"Function hall", @"Play ground ", @"Conference hall", @"Mini theater",nil];
    NSArray * arrImage = [[NSArray alloc] init];
    arrImage = [NSArray arrayWithObjects:[UIImage imageNamed:@"Swimming"], [UIImage imageNamed:@"Function"], [UIImage imageNamed:@"Play ground"], [UIImage imageNamed:@"Conference hall"], [UIImage imageNamed:@"Mini theater"], nil];
    if(dropDown == nil) {
        CGFloat f = 80;
        dropDown = [[NIDropDown alloc]showDropDown:sender :&f :arr :arrImage :@"down"];
        dropDown.delegate = self;
    }
    else {
        [dropDown hideDropDown:sender];
        [self rel];
    }

}

- (void) niDropDownDelegateMethod: (NIDropDown *) sender {
    [self rel];
    
}

-(void)rel{
    dropDown = nil;
    
   
 
    }

- (void)viewDidUnload {
    btnSelect = nil;
    [self setBtnSelect:nil];
    [super viewDidUnload];
}



#pragma mark PickerView DataSource

- (NSInteger)numberOfComponentsInPickerView: (UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return  dataSourceArray.count;
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return dataSourceArray[row];
}
#pragma mark -
#pragma mark PickerView Delegate

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
//    NSString *resultString = dataSourceArray[row];
}































@end
