//
//  TicTacToeGame.h
//  TicTacToe
//
//  Created by Thomas Nielsen on 1/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

static int const GAME_NOT_STARTED = 0;
static int const GAME_IN_PROGRESS = 1;
static int const GAME_FINISHED = 2;
static int const GAME_ILLEGAL_MOVE = 3;
static int const R1C1 = 0;
static int const R1C2 = 1;
static int const R1C3 = 2;
static int const R2C1 = 3;
static int const R2C2 = 4;
static int const R2C3 = 5;
static int const R3C1 = 6;
static int const R3C2 = 7;
static int const R3C3 = 8;
 
@interface TicTacToeGame : NSObject {
    NSMutableArray *_boardArray;
    NSMutableArray *_winnerCombinationArray;
    int _turns;
    int _player;
}
-(int)placeMark:(int)location;
-(BOOL)isWinner:(int)player;
@property (nonatomic) int player;
@property (retain) NSMutableArray *winnerCombination;
@end
