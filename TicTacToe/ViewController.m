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
}

- (void)viewDidUnload
{
    r1c1Button = nil;
    r1c2Button = nil;
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)pushButton:(id)sender {
    if ([sender currentBackgroundImage]!=nil)
    {
        return;
    }
    if(_player==1){
        [sender setBackgroundImage:[UIImage imageNamed:@"x.png"] forState:UIControlStateNormal];
        _player = 2;
    }
    else {
        [sender setBackgroundImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        _player = 1;
    }
}
- (IBAction)pushNewGame:(id)sender {
    _player = 1;
    [r1c1Button setBackgroundImage:nil forState:UIControlStateNormal];   
    [r1c2Button setBackgroundImage:nil forState:UIControlStateNormal];     
}
@end
