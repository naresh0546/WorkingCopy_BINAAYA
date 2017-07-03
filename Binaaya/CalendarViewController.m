//
//  CalendarViewController.m
//  Binaaya
//
//  Created by SmartMobile Technologies on 19/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "CalendarViewController.h"
#import "BSIslamicCalendar.h"
#import "DummyTableViewCell.h"

@interface CalendarViewController ()<BSIslamicCalendarDelegate>
{
    BSIslamicCalendar *newCalendar;
    
}

@end

@implementation CalendarViewController
@synthesize arrEventDate,arrEventName,arrEventDay,tableVwCalendar,arrEventTime;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    newCalendar=[[BSIslamicCalendar alloc] initWithFrame:CGRectMake(10, 5, 355, 270)];
    newCalendar.delegate=self;
    newCalendar.layer.borderWidth=1;
    newCalendar.layer.borderColor=[UIColor colorWithRed:0/255.0f green:37/255.0f blue:99/255.0f alpha:1.0f].CGColor;
    
    [newCalendar setIslamicDatesInArabicLocale:NO];
    [newCalendar setShowIslamicMonth:NO];
    
    
    tableVwCalendar.delegate=self;
    tableVwCalendar.dataSource=self;

    self.edgesForExtendedLayout = UIRectEdgeNone;
    [tableVwCalendar setContentInset:UIEdgeInsetsMake(0,0,65,0)];
    tableVwCalendar.separatorStyle = UITableViewCellSeparatorStyleNone;

    arrEventDate = [[NSMutableArray alloc]initWithObjects:@"17",@"09",@"02",@"27",@"26" ,@"12",nil];
    
    arrEventDay = [[NSMutableArray alloc]initWithObjects:@"Sat",@"Fri",@"Fri",@"Tue",@"Mon",@"Mon",nil];

    arrEventName = [[NSMutableArray alloc]initWithObjects:@"Alcohol Buffet",@"Ramadan Gathering",@"Summer Workshop",@"Meeting",@"Night Dance" ,@"Community Dinner",nil];

    arrEventTime = [[NSMutableArray alloc]initWithObjects:@"6:30 am to 6:30 am",@"6:30 am to 6:30 am",@"9:30 am to 3:30 am",@"11:30 am to 12:30 pm",@"6:30 pm to 6:30 am" ,@"7:30 am to 9:30 pm",nil];

  
    // Do any additional setup after loading the view.
}
-(void)viewDidLayoutSubviews{
    [self.view addSubview:newCalendar];
}
-(void)viewWillAppear:(BOOL)animated
{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Calendar Delegate
-(BOOL)islamicCalendar:(BSIslamicCalendar *)calendar shouldSelectDate:(NSDate *)date{
    
    if ([calendar compareDate:date withDate:[NSDate date]]) {
        
        return NO;
    }else{
        
        return YES;
    }
}
-(void)islamicCalendar:(BSIslamicCalendar *)calendar dateSelected:(NSDate *)date withSelectionArray:(NSArray *)selectionArry{
    
    NSLog(@"selections: %@",selectionArry);
}

#pragma mark -
#pragma mark UITableView Datasource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return arrEventName.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MyIdentifier";
    DummyTableViewCell* cell1 = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell1.lblEventName.text=[arrEventName objectAtIndex:indexPath.row];
    cell1.lblEventDate.text=[arrEventDate objectAtIndex:indexPath.row];
    cell1.lblEventDay.text=[arrEventDay objectAtIndex:indexPath.row];
    cell1.lblEventTime.text=[arrEventTime objectAtIndex:indexPath.row];

    

    cell1.selectionStyle=NO;
    return cell1;
}




@end
