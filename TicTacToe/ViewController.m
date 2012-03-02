//
//  ViewController.m
//  TicTacToe
//
//  Created by Thomas Nielsen on 1/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    _player = 1; 
    [newGameButton setHidden:NO];
}

- (void)viewDidUnload
{
    r1c1Button = nil;
    r1c2Button = nil;
    r1c3Button = nil;
    r2c1Button = nil;
    r2c2Button = nil;
    r2c3Button = nil;
    r2c1Button = nil;
    r3c2Button = nil;
    r3c3Button = nil;
    r3c1Button = nil;
    r2c1Button = nil;
    newGameButton = nil;
    infoLabel = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)pushButton:(id)sender {
    if ([sender currentBackgroundImage]!=nil)
    {
        return;
    }
    if(_player==1){
        [sender setBackgroundImage:[UIImage imageNamed:@"ipad-x.png"] forState:UIControlStateNormal];
        _player = 2;
    }
    else {
        [sender setBackgroundImage:[UIImage imageNamed:@"ipad-o.png"] forState:UIControlStateNormal];
        _player = 1;
    }
    [newGameButton setHidden:NO];
    [infoLabel setHidden:YES];
}
- (IBAction)pushNewGame:(id)sender {
    _player = 1;
    [r1c1Button setBackgroundImage:nil forState:UIControlStateNormal];   
    [r1c2Button setBackgroundImage:nil forState:UIControlStateNormal];   
    [r1c3Button setBackgroundImage:nil forState:UIControlStateNormal]; 
    [r2c1Button setBackgroundImage:nil forState:UIControlStateNormal]; 
    [r2c2Button setBackgroundImage:nil forState:UIControlStateNormal]; 
    [r2c3Button setBackgroundImage:nil forState:UIControlStateNormal]; 
    [r3c1Button setBackgroundImage:nil forState:UIControlStateNormal]; 
    [r3c2Button setBackgroundImage:nil forState:UIControlStateNormal]; 
    [r3c3Button setBackgroundImage:nil forState:UIControlStateNormal]; 
    [newGameButton setHidden:YES];
    [infoLabel setHidden:NO];
}
@end
