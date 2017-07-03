//
//  CommunityDetailTableViewController.h
//  Binaaya
//
//  Created by SmartMobile Technologies on 22/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIDropDown.h"


@interface CommunityDetailTableViewController : UITableViewController



@property NSMutableArray *arrEventKey;
@property NSMutableArray *arrEventValue;

@property NIDropDown *dropDown;

@property NSArray * arrImage;

@property NSArray * dropDoenArr;


@property NSString *titleName;

@end
