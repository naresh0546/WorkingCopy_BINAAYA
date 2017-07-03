//
//  CommunicationTableViewController.h
//  Binaaya
//
//  Created by Apple on 29/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommunicationTableViewController : UITableViewController



@property NSMutableArray * arrFromEmailAddress;
@property NSMutableArray * arrSubject;
@property NSMutableArray * arrPostDate;
@property NSMutableArray * arrCellSelected;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@end
