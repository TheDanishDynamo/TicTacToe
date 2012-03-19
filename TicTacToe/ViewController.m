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
    [newGameButton setHidden:NO];
    [newGameButton setTag:1000];
    [r1c1Button setTag:R1C1];
    [r1c2Button setTag:R1C2];
    [r1c3Button setTag:R1C3];
    [r2c1Button setTag:R2C1];
    [r2c2Button setTag:R2C2];
    [r2c3Button setTag:R2C3];
    [r3c1Button setTag:R3C1];
    [r3c2Button setTag:R3C2];
    [r3c3Button setTag:R3C3];
    ticTacToeGame = [[TicTacToeGame alloc] init];    
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
    if ([sender currentImage]!=nil)
    {
        return;
    }
    if([ticTacToeGame player] == 1){
        [sender setImage:[UIImage imageNamed:@"ipad-x.png"] forState:UIControlStateNormal];
        [newGameButton setImage:[UIImage imageNamed:@"o-turn.png"] forState:UIControlStateNormal];
    }
    else {
        [sender setImage:[UIImage imageNamed:@"ipad-o.png"] forState:UIControlStateNormal];
        [newGameButton setImage:[UIImage imageNamed:@"x-turn.png"] forState:UIControlStateNormal];
    }
    [newGameButton setHidden:NO];
    int result = [ticTacToeGame placeMark: [sender tag]];
    if (result==GAME_FINISHED){
        
        if([ticTacToeGame player] == 1){
              [newGameButton setImage:[UIImage imageNamed:@"x-win-message.png"] forState:UIControlStateNormal];
        } else if([ticTacToeGame player] == 1) {
              [newGameButton setImage:[UIImage imageNamed:@"o-win-message.png"] forState:UIControlStateNormal];
        } else {
            [newGameButton setImage:[UIImage imageNamed:@"ipad-tictactoe-tie.png"] forState:UIControlStateNormal];
        } 
      
        // Higlight the row that won by disabling the non winning moves, and enabling the winning
        for (UIControl *button in [[self view] subviews]) {
            if([button tag] >= 0 && [button tag] < 9) { 
                [button setEnabled:NO];
            }
        }
        
        for (NSNumber *tag in [ticTacToeGame winnerCombination]) {
            for (UIControl *button in [[self view] subviews]) {
                if([button tag] >= 0 && [button tag] < 9) { 
                    if([button tag]==[tag integerValue]) {
                        [button setEnabled:YES];
                    }
                }
            }
        }
     }
}
- (IBAction)pushNewGame:(id)sender {
    
    [r1c1Button setImage:nil forState:UIControlStateNormal];   
    [r1c2Button setImage:nil forState:UIControlStateNormal];   
    [r1c3Button setImage:nil forState:UIControlStateNormal]; 
    [r2c1Button setImage:nil forState:UIControlStateNormal]; 
    [r2c2Button setImage:nil forState:UIControlStateNormal]; 
    [r2c3Button setImage:nil forState:UIControlStateNormal]; 
    [r3c1Button setImage:nil forState:UIControlStateNormal]; 
    [r3c2Button setImage:nil forState:UIControlStateNormal]; 
    [r3c3Button setImage:nil forState:UIControlStateNormal]; 
    [newGameButton setImage:[UIImage imageNamed:@"ipad-new-game-button.png"] forState:UIControlStateNormal];
    ticTacToeGame = [ticTacToeGame init];
    for (UIControl *button in [[self view] subviews]) {
        if([button tag] >= 0 && [button tag] < 9) { 
            [button setEnabled:YES];
        }
    }    
}
@end
