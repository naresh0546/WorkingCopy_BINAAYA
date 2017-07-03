//
//  DummyTableViewCell.h
//  Binaaya
//
//  Created by Apple on 22/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DummyTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UITextField *txtFldVistorName;
@property (weak, nonatomic) IBOutlet UITextField *txtFldVistorNationality;
@property (weak, nonatomic) IBOutlet UITextField *txtFldVistorDate;
@property (weak, nonatomic) IBOutlet UITextField *txtFldVistorTimeIN;
@property (weak, nonatomic) IBOutlet UITextField *txtFldVistorTimeOut;




@property (weak, nonatomic) IBOutlet UILabel *lblEventName;
@property (weak, nonatomic) IBOutlet UILabel *lblEventDate;
@property (weak, nonatomic) IBOutlet UILabel *lblEventDay;
@property (weak, nonatomic) IBOutlet UILabel *lblEventTime;



@property (weak, nonatomic) IBOutlet UILabel *lblUnitNo;
@property (weak, nonatomic) IBOutlet UILabel *lblMemberName;
@property (weak, nonatomic) IBOutlet UILabel *lblPosition;

@property (weak, nonatomic) IBOutlet UIButton *btnCall;

@property (weak, nonatomic) IBOutlet UIButton *btnMsg;



@property (weak, nonatomic) IBOutlet UILabel *lblFromAddresEmail;
@property (weak, nonatomic) IBOutlet UILabel *lblSubject;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;



@property (weak, nonatomic) IBOutlet UILabel *lblActionProcess;
@property (weak, nonatomic) IBOutlet UILabel *lblBudgetName;
@property (weak, nonatomic) IBOutlet UILabel *lblSUbmittedDate;






@property (weak, nonatomic) IBOutlet UILabel *ticketIdLbl;
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;
@property (weak, nonatomic) IBOutlet UILabel *complaintsByLbl;
@property (weak, nonatomic) IBOutlet UILabel *statusLbl;




@property (weak, nonatomic) IBOutlet UILabel *complaintNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *complaintDateLbl;
@property (weak, nonatomic) IBOutlet UILabel *complaintByLbl;
@property (weak, nonatomic) IBOutlet UITextView *complaintDescTxtVw;




@property (weak, nonatomic) IBOutlet UILabel *eventNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *eventDateLbl;
@property (weak, nonatomic) IBOutlet UILabel *eventNameLbl1;

@property (weak, nonatomic) IBOutlet UILabel *leftLbl;
@property (weak, nonatomic) IBOutlet UILabel *eventDescLbl;
@property (weak, nonatomic) IBOutlet UILabel *eventLocaLbl;
@property (weak, nonatomic) IBOutlet UILabel *eventStartDateLbl;
@property (weak, nonatomic) IBOutlet UILabel *eventEndDateLbl;
@property (weak, nonatomic) IBOutlet UILabel *eventStartTimeLbl;
@property (weak, nonatomic) IBOutlet UILabel *eventEndTimeLbl;
@property (weak, nonatomic) IBOutlet UILabel *participantsLbl;
@property (weak, nonatomic) IBOutlet UIButton *dropDownBtn;
@property (weak, nonatomic) IBOutlet UIButton *submitBtn;
@property (weak, nonatomic) IBOutlet UILabel *rsvpLbl;

@property (weak, nonatomic) IBOutlet UILabel *wallTitleLbl;
@property (weak, nonatomic) IBOutlet UILabel *commentsPostedLbl;
@property (weak, nonatomic) IBOutlet UILabel *commentsPostedByLbl;
@property (weak, nonatomic) IBOutlet UILabel *commentsPostedOn;






















@end
