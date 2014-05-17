//
//  STPMyView.m
//  WhoAmI
//
//  Created by Nanook on 17/05/2014.
//  Copyright (c) 2014 SaveThePlan. All rights reserved.
//

#import "STPMyView.h"

@interface STPMyView() {
    
    UILabel *textLabel;
    UILabel *responseLabel;
    UIButton *myButton;
    UIImageView *myBg, *myLogo;
    BOOL isIpad;
    
}
@end

@implementation STPMyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //terminal type
        isIpad = ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad);
        
        //background
        myBg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_2048.jpg"]];
        [self addSubview:myBg];
        
        //init textLabel
        textLabel = [[UILabel alloc] initWithFrame: CGRectMake(
                                                               ([self bounds].size.width - 300) / 2,
                                                               30,
                                                               300, 20)];
        [textLabel setTextAlignment:NSTextAlignmentCenter];
        [textLabel setTextColor:[UIColor whiteColor]];
        [textLabel setBackgroundColor:[UIColor clearColor]];
        [textLabel setText:@"Quel est le type du terminal ?"];
        [self addSubview:textLabel];
        
        //init empty responseLabel
        responseLabel = [[UILabel alloc] initWithFrame:CGRectMake(
                                                                  ([self bounds].size.width - 300) / 2,
                                                                  70,
                                                                  300, 20)];
        [responseLabel setTextAlignment:NSTextAlignmentCenter];
        [responseLabel setTextColor:[UIColor whiteColor]];
        [responseLabel setBackgroundColor:[UIColor clearColor]];
        [self addSubview:responseLabel];
        
        //init button
        myButton = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
        [myButton setTitle:@"montrer" forState:UIControlStateNormal];
        [myButton setBackgroundColor:[UIColor whiteColor]];
        [myButton addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchDown];
        [myButton setFrame:CGRectMake(
                                      ([self bounds].size.width - 300) / 2,
                                      110,
                                      300, 20)];
        [self addSubview:myButton];
        
        //logo
        myLogo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Apple_logo.png"]];
        [myLogo setFrame:CGRectMake(
                                    ([self bounds].size.width - 221) / 2,
                                    150,
                                    221, 241)];
        [self addSubview:myLogo];
        
        //clear ref memory
        [myBg release]; [myLogo release];
        [textLabel release]; [responseLabel release];
        [myButton release];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)buttonAction{
    NSString *result = (isIpad)? @"iPad" : @"iPhone";
    [responseLabel setText:[NSString stringWithFormat:@"Bonjour, le terminal est un %@", result]];
}

@end
