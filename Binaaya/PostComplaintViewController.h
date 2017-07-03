//
//  PostComplaintViewController.h
//  Binaaya
//
//  Created by SmartMobile Technologies on 29/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIDropDown.h"


@interface PostComplaintViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *complaintNameTxtField;
@property (weak, nonatomic) IBOutlet UIButton *complaintTypeDropDownBtn;
@property (weak, nonatomic) IBOutlet UITextView *complaintDescTxtView;
@property (weak, nonatomic) IBOutlet UIButton *submitBtn;

@property NSArray * dropDownArr;
@property NIDropDown *dropDown;
@property NSArray * arrImage;



@end
