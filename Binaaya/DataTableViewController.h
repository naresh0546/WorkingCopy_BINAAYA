//
//  DataTableViewController.h
//  Binaaya
//
//  Created by Apple on 20/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataTableViewController : UITableViewController

@property NSMutableArray * arrServiceCharges;
@property NSMutableArray * arrPerviousDues;
@property NSMutableArray * arrCurrentDues;
@property NSMutableArray * arrOutstanding;

@property NSMutableArray * arrCellSelected;






@property (weak, nonatomic) IBOutlet UILabel *lblTotalAmount;
@property (weak, nonatomic) IBOutlet UIButton *btnPayNow;


@end
