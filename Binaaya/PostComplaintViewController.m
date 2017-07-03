//
//  PostComplaintViewController.m
//  Binaaya
//
//  Created by SmartMobile Technologies on 29/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "PostComplaintViewController.h"
#import "NIDropDown.h"



@interface PostComplaintViewController ()

@end

@implementation PostComplaintViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"POST A COMPLAINT";
    _dropDownArr =[[NSMutableArray alloc]initWithObjects:@"Common",@"Private",nil];
    _arrImage = [[NSArray alloc] init];
}
- (IBAction)dropDownClick:(id)sender {
    
    if(_dropDown == nil) {
        CGFloat f = 80;
        _dropDown = [[NIDropDown alloc]showDropDown:sender :&f :_dropDownArr :nil :@"down"];
    }
    else {
        [_dropDown hideDropDown:sender];
        [self rel];
    }

}
- (void) niDropDownDelegateMethod: (NIDropDown *) sender {
    [self rel];
}
-(void)rel{
    _dropDown = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
