//
//  STPViewController.m
//  WhoAmI
//
//  Created by Nanook on 17/05/2014.
//  Copyright (c) 2014 SaveThePlan. All rights reserved.
//

#import "STPViewController.h"
#import "STPMyView.h"

@interface STPViewController () {
    
    UIView *mainView;
    
}

@end

@implementation STPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //construct view
    mainView = [[STPMyView alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
    [[self view] addSubview:mainView];
    [mainView release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
