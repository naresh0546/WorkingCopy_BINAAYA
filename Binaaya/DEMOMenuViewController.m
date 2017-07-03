//
//  DEMOMenuViewController.m
//  REFrostedViewControllerExample
//
//  Created by Roman Efimov on 9/18/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMOMenuViewController.h"
#import "ViewController.h"
#import "UIViewController+REFrostedViewController.h"
#import "DataTableViewController.h"
#import "AppointmentsViewController.h"
#import "MyNeighboursViewController.h"
#import "BoardMemberTableViewController.h"
#import "CommunicationTableViewController.h"
#import "ApprovalTableViewController.h"
#import "ComplaintsTableViewController.h"
#import "WallTableViewController.h"
#import "CommunityTableViewController.h"

@implementation DEMOMenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.separatorColor = [UIColor colorWithRed:150/255.0f green:161/255.0f blue:177/255.0f alpha:1.0f];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.opaque = NO;
    self.tableView.separatorStyle=NO;
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.tableHeaderView = ({
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 184.0f)];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 40, 240, 100)];
        imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        imageView.image = [UIImage imageNamed:@"Logo"];
//        imageView.layer.masksToBounds = YES;
//        imageView.layer.cornerRadius = 50.0;
//        imageView.layer.borderColor = [UIColor whiteColor].CGColor;
//        imageView.layer.borderWidth = 3.0f;
//        imageView.layer.rasterizationScale = [UIScreen mainScreen].scale;
//        imageView.layer.shouldRasterize = YES;
//        imageView.clipsToBounds = YES;
        view.backgroundColor=[UIColor colorWithRed:0/255.0f green:37/255.0f blue:99/255.0f alpha:1.0f];
        
        
        imageView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(tapGesture:)];
        tapGesture1.numberOfTapsRequired = 1;
        [tapGesture1 setDelegate:self];
        [imageView addGestureRecognizer:tapGesture1];
        

        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 0, 24)];
        label.text = @"";
        label.font = [UIFont fontWithName:@"HelveticaNeue" size:21];
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor colorWithRed:199/255.0f green:170/255.0f blue:44/255.0f alpha:1.0f];
        [label sizeToFit];
        label.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        
        [view addSubview:imageView];
        [view addSubview:label];
        view;
        
        
        
    });
    
    
}
- (void) tapGesture: (id)sender
{
    [self.frostedViewController hideMenuViewController];
    ViewController * homeVC=[[ViewController alloc]init];
    homeVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"home"];
    self.frostedViewController.contentViewController = homeVC;

}

#pragma mark -
#pragma mark UITableView Delegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor colorWithRed:62/255.0f green:68/255.0f blue:75/255.0f alpha:1.0f];
    cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:17];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)sectionIndex
{
    if (sectionIndex == 0)
        return nil;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 34)];
    view.backgroundColor = [UIColor colorWithRed:167/255.0f green:167/255.0f blue:167/255.0f alpha:0.6f];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 8, 0, 0)];
    label.text = @"Friends Online";
    label.font = [UIFont systemFontOfSize:15];
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor clearColor];
    [label sizeToFit];
    [view addSubview:label];
    
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)sectionIndex
{
    if (sectionIndex == 0)
        return 0;
    
    return 34;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.frostedViewController hideMenuViewController];
    
    if (indexPath.row==0)
    {
        DataTableViewController * dataVc=[[DataTableViewController alloc]initWithStyle:UITableViewStylePlain];
        dataVc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"dataTableVC"];
        self.frostedViewController.contentViewController = dataVc;
        

    }
    else if (indexPath.row==1)
    {
        ComplaintsTableViewController * complaintsVc=[[ComplaintsTableViewController alloc]initWithStyle:UITableViewStylePlain];
        complaintsVc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"complaintsVC"];
        self.frostedViewController.contentViewController = complaintsVc;
    }
    else if (indexPath.row==2)
    {
        ApprovalTableViewController * borderVC=[[ApprovalTableViewController alloc]init];
        borderVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ApprovelVC"];
        self.frostedViewController.contentViewController = borderVC;
        
    }
    else if (indexPath.row==3)
    {
        AppointmentsViewController * appointmentsVC=[[AppointmentsViewController alloc]init];
        appointmentsVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"AppointmentsVC"];
        self.frostedViewController.contentViewController = appointmentsVC;

    }
    else if (indexPath.row==4)
    {
        WallTableViewController * WallVC=[[WallTableViewController alloc]init];
        WallVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"WallVC"];
        self.frostedViewController.contentViewController = WallVC;
        
    }
    else if (indexPath.row==5)
    {
        CommunicationTableViewController * myNeighboursVC=[[CommunicationTableViewController alloc]init];
        myNeighboursVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"myCommunicationVC"];
        self.frostedViewController.contentViewController = myNeighboursVC;
        
    }

    else if (indexPath.row==7)
    {
        MyNeighboursViewController * myNeighboursVC=[[MyNeighboursViewController alloc]init];
        myNeighboursVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"myNeighboursVC"];
        self.frostedViewController.contentViewController = myNeighboursVC;
        
    }
    else if (indexPath.row==8)
    {
        CommunityTableViewController * communityVC=[[CommunityTableViewController alloc]init];
        communityVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"communityVC"];
        self.frostedViewController.contentViewController = communityVC;
        
    }
    else if (indexPath.row==9)
    {
        BoardMemberTableViewController * borderVC=[[BoardMemberTableViewController alloc]init];
        borderVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"boardMemberVC"];
        self.frostedViewController.contentViewController = borderVC;
        
    }

}

#pragma mark -
#pragma mark UITableView Datasource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 54;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    
    NSArray *titles  = @[@"My Financials", @"Complaints", @"Approvals", @"Appoinments", @"Wall", @"Communications",@"View Request",@"My Neighbours",@"Community Activities",@"Board Members"];
    
    
    NSArray *images = @[@"financials", @"complaints", @"approvals", @"appointments", @"wall", @"communication",@"request",@"request",@"request",@"request"];
    
    if (indexPath.section == 0) {
        cell.textLabel.text = titles[indexPath.row];
        cell.imageView.image=[UIImage imageNamed:[images objectAtIndex:indexPath.row]];
        cell.textLabel.textColor=[UIColor colorWithRed:0/255.0f green:37/255.0f blue:99/255.0f alpha:1.0f];
        cell.textLabel.numberOfLines=2;
        
    }
    UIView *bgColorView = [[UIView alloc] init];
    [bgColorView setBackgroundColor:[UIColor colorWithRed:0/255.0f green:37/255.0f blue:99/255.0f alpha:1.0f]];
    [cell setSelectedBackgroundView:bgColorView];

    return cell;
}

@end
