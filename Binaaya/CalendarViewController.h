//
//  CalendarViewController.h
//  Binaaya
//
//  Created by SmartMobile Technologies on 19/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalendarViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableVwCalendar;


@property NSMutableArray * arrEventName;
@property NSMutableArray * arrEventDay;
@property NSMutableArray * arrEventDate;
@property NSMutableArray * arrEventTime;

@end
