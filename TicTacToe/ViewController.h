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
    int _player;
}
@property (nonatomic) int player;
- (IBAction)pushButton:(id)sender;
@end
