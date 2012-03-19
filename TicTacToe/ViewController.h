//
//  ViewController.h
//  TicTacToe
//
//  Created by Thomas Nielsen on 1/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TicTacToeGame.h"

@interface ViewController : UIViewController
{
    IBOutlet UIButton *r1c1Button;
    IBOutlet UIButton *r1c2Button;
    IBOutlet UIButton *r1c3Button;
    IBOutlet UIButton *r2c1Button;
    IBOutlet UIButton *r2c2Button;
    IBOutlet UIButton *r2c3Button;
    IBOutlet UIButton *r3c1Button;
    IBOutlet UIButton *r3c2Button;
    IBOutlet UIButton *r3c3Button;
    IBOutlet UIButton *newGameButton;
    IBOutlet UIImageView *infoLabel;
    TicTacToeGame *ticTacToeGame;
}
- (IBAction)pushNewGame:(id)sender;
- (IBAction)pushButton:(id)sender;
@end
