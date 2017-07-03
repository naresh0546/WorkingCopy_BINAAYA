//
//  AppointmentsViewController.h
//  Binaaya
//
//  Created by Apple on 21/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIDropDown.h"

@interface AppointmentsViewController : UITableViewController<NIDropDownDelegate,UIPickerViewDelegate, UIPickerViewDataSource,UITextFieldDelegate>
{
    NIDropDown *dropDown;
}
@property BOOL isRowHidden;
@property (nonatomic) NSIndexPath *selectedPath;
@property (weak, nonatomic) IBOutlet UIButton *btnSelect;
@property NSString * strSaveBtnTitle;




@property (weak, nonatomic) IBOutlet UIView *viewFacilityBg;

@property (strong, nonatomic)NSArray *dataSourceArray;

@property (strong, nonatomic) UIPickerView *pickerDateView;
@end
