//
//  ComposeViewController.m
//  Binaaya
//
//  Created by Apple on 29/06/17.
//  Copyright © 2017 SmartMobile Technologies. All rights reserved.
//

#import "ComposeViewController.h"
#import "NIDropDown.h"

@interface ComposeViewController ()

@end

@implementation ComposeViewController
@synthesize btnBuildingSelection,btnFloorNoSelection,btnFloorSelction;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[btnBuildingSelection layer] setBorderWidth:1.0f];
    [[btnBuildingSelection layer] setBorderColor:[UIColor blackColor].CGColor];
    [[btnFloorNoSelection layer] setBorderWidth:1.0f];
    [[btnFloorNoSelection layer] setBorderColor:[UIColor blackColor].CGColor];
    [[btnFloorSelction layer] setBorderWidth:1.0f];
    [[btnFloorSelction layer] setBorderColor:[UIColor blackColor].CGColor];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)selectingBulidingAction:(id)sender {
    NSArray * arr = [[NSArray alloc] init];
    arr = [NSArray arrayWithObjects:@"Builidng", @"SBM Residency", @"Icrisat Encalve ", nil];
    if(dropDown == nil) {
        CGFloat f = 80;
        dropDown = [[NIDropDown alloc]showDropDown:sender :&f :arr :nil :@"down"];
        dropDown.delegate = self;
    }
    else {
        [dropDown hideDropDown:sender];
        [self rel];
    }
    
}

- (void) niDropDownDelegateMethod: (NIDropDown *) sender {
    [self rel];
    
}

-(void)rel{
    dropDown = nil;
    
    
    
}

- (void)viewDidUnload {
    btnFloorSelction = nil;
    btnFloorNoSelection = nil;
    btnBuildingSelection = nil;


    [super viewDidUnload];
}



- (IBAction)selectingFloorAction:(id)sender {
    NSArray * arr = [[NSArray alloc] init];
    arr = [NSArray arrayWithObjects:@"Floor", @"GF", @"FF ",@"F0 ",@"F1",nil];
    if(dropDown == nil) {
        CGFloat f = 80;
        dropDown = [[NIDropDown alloc]showDropDown:sender :&f :arr :nil :@"down"];
        dropDown.delegate = self;
    }
    else {
        [dropDown hideDropDown:sender];
        [self rel];
    }

}
- (IBAction)selectingFloorNumberAction:(id)sender {
    NSArray * arr = [[NSArray alloc] init];
    arr = [NSArray arrayWithObjects:@"100", @"101", @"102 ",nil];
    if(dropDown == nil) {
        CGFloat f = 80;
        dropDown = [[NIDropDown alloc]showDropDown:sender :&f :arr :nil :@"down"];
        dropDown.delegate = self;
    }
    else {
        [dropDown hideDropDown:sender];
        [self rel];
    }

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
