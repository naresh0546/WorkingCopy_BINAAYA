//
//  MGViewControllerDataSource.m
//  MGSpotyView
//
//  Created by Daniele Bogo on 08/08/2015.
//  Copyright (c) 2015 Matteo Gobbi. All rights reserved.
//

#import "MGViewControllerDataSource.h"
#import "MGSpotyViewController.h"
#import "DetailNeighbourViewController.h"


@implementation MGViewControllerDataSource





#pragma mark - MGSpotyViewControllerDataSource

- (NSInteger)spotyViewController:(MGSpotyViewController *)spotyViewController
           numberOfRowsInSection:(NSInteger)section
{
    return 8;
}

- (UITableViewCell *)spotyViewController:(MGSpotyViewController *)spotyViewController
                               tableView:(UITableView *)tableView
                   cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    _arrNeighbourkeys =[[NSMutableArray alloc]initWithObjects:@"Gender",@"Nationality",@"Language",@"Contact Email",@"About Me",@"Interests",@"My workplace",@"My Hobbies",nil];
    
    _arrNeighbourValues =[[NSMutableArray alloc]initWithObjects:@"Male",@"Indian",@"English",@"sachin@gmail.com",@"Cricketer",@"Social Service",@"Cricket Stadium",@"Football",nil];
    


    
    static NSString *identifier = @"CellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
        cell.backgroundColor = [UIColor whiteColor];
        cell.textLabel.textColor = [UIColor blackColor];
        
        UIView *stroke = [[UIView alloc] init];
        stroke.backgroundColor = [UIColor whiteColor];
        stroke.translatesAutoresizingMaskIntoConstraints = NO;
        [cell.contentView addSubview:stroke];
        
        NSDictionary *views = NSDictionaryOfVariableBindings(stroke);
        [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[stroke(1)]|" options:0 metrics:nil views:views]];
        [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[stroke]|" options:0 metrics:nil views:views]];
    }
    
//    UILabel *labelOne = [[UILabel alloc]initWithFrame:CGRectMake(20, 22, 140, 20)];
//    UILabel *labelTwo = [[UILabel alloc]initWithFrame:CGRectMake(160, 22, 140, 20)];
//    
//    labelOne.text = [_arrNeighbourkeys objectAtIndex:indexPath.row];
//    labelTwo.textAlignment = NSTextAlignmentRight;
//    labelTwo.text = [_arrNeighbourValues objectAtIndex:indexPath.row];
//    
//    [cell.contentView addSubview:labelOne];
//    [cell.contentView addSubview:labelTwo];
    
    cell.selectionStyle=NO;
    cell.textLabel.text = [_arrNeighbourkeys objectAtIndex:indexPath.row];
    cell.textLabel.textColor=[UIColor redColor];
    cell.textLabel.font=[UIFont systemFontOfSize:12];
    cell.detailTextLabel.text = [_arrNeighbourValues objectAtIndex:indexPath.row];
    cell.detailTextLabel.font=[UIFont fontWithName:@"ChaparraiPro-Regular" size:15];


    
    return cell;
}

@end
