//
//  ComposeViewController.h
//  Binaaya
//
//  Created by Apple on 29/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "ViewController.h"
#import "NIDropDown.h"
@interface ComposeViewController : ViewController<NIDropDownDelegate>
{
    NIDropDown *dropDown;
}
@property (weak, nonatomic) IBOutlet UIButton *btnBuildingSelection;
@property (weak, nonatomic) IBOutlet UIButton *btnFloorSelction;
@property (weak, nonatomic) IBOutlet UIButton *btnFloorNoSelection;
@end
