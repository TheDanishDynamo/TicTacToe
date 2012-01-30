//
//  ViewController.h
//  TicTacToe
//
//  Created by Thomas Nielsen on 1/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    __weak IBOutlet UIButton *r1c1Button;
    __weak IBOutlet UIButton *r1c2Button;
    __weak IBOutlet UIButton *r1c3Button;
    __weak IBOutlet UIButton *r2c1Button;
    __weak IBOutlet UIButton *r2c2Button;
    __weak IBOutlet UIButton *r2c3Button;
    __weak IBOutlet UIButton *r3c1Button;
    __weak IBOutlet UIButton *r3c2Button;
    __weak IBOutlet UIButton *r3c3Button;
    int _player;
}
- (IBAction)pushNewGame:(id)sender;
- (IBAction)pushButton:(id)sender;
@end
