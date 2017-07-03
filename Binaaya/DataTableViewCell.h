//
//  DataTableViewCell.h
//  Binaaya
//
//  Created by Apple on 20/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblServiceCharges;
@property (weak, nonatomic) IBOutlet UILabel *lblPreviousDues;
@property (weak, nonatomic) IBOutlet UILabel *lblCurrentDues;
@property (weak, nonatomic) IBOutlet UILabel *lblOutstanding;



@property (weak, nonatomic) IBOutlet UILabel *lblFacilityName;
@property (weak, nonatomic) IBOutlet UILabel *lblSpecialRequirement;
@property (weak, nonatomic) IBOutlet UILabel *lblCharges;
@property (weak, nonatomic) IBOutlet UILabel *lblMinPax;
@property (weak, nonatomic) IBOutlet UILabel *lblMinUnit;



@property (weak, nonatomic) IBOutlet UILabel *lblFaciliName;
@property (weak, nonatomic) IBOutlet UITextField *txtFldFromDate;
@property (weak, nonatomic) IBOutlet UITextField *txtFldToDate;
@property (weak, nonatomic) IBOutlet UITextField *txtFldNoMens;
@property (weak, nonatomic) IBOutlet UITextField *txtFldNoWomens;
@property (weak, nonatomic) IBOutlet UIButton *BtnBook;










@end
