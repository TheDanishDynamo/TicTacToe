//
//  TicTacToeGame.m
//  TicTacToe
//
//  Created by Thomas Nielsen on 1/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TicTacToeGame.h"

@implementation TicTacToeGame
-(id)init {
    self = [super init];
    _boardArray = [[NSMutableArray alloc] initWithObjects:  
                   [NSNumber numberWithInt:-1],
                   [NSNumber numberWithInt:-1],
                   [NSNumber numberWithInt:-1],
                   [NSNumber numberWithInt:-1],
                   [NSNumber numberWithInt:-1],
                   [NSNumber numberWithInt:-1],
                   [NSNumber numberWithInt:-1],
                   [NSNumber numberWithInt:-1],
                   [NSNumber numberWithInt:-1], nil];
    _turns = 0;
    _player = 1; // Player 1 starts
    return self;
}

-(int)placeMark:(int)location {
    
    if ([_boardArray objectAtIndex:location]!=[NSNumber numberWithInt:-1]) {
        return GAME_ILLEGAL_MOVE;
    }
        
    [_boardArray replaceObjectAtIndex:location withObject:[NSNumber numberWithInt:_player]];  
    
    _turns++;
    
    // When the 5th turn is taken, start checking for winner
    if(_turns >= 5) {
        if([self isWinner:_player]==YES){ 
            return GAME_FINISHED;
        }
    }
    
    if(_turns == 9) {
        if([self isWinner:_player]==NO){ 
            // Draw
            _player = -1;
        }
        return GAME_FINISHED;
    }
    
    if (_player == 1) {
        _player = 2;
    }
    else {
        _player = 1;  
    }
    
    return GAME_IN_PROGRESS;
}

- (BOOL)isWinner:(int)player
{
    NSLog(@"Testing...");

    
    // row 1
    if (([_boardArray objectAtIndex:0] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:1] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:2] ==[NSNumber numberWithInt:player])) {
        return YES;
    }
    
    // row 2
    if (([_boardArray objectAtIndex:3] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:4] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:5] ==[NSNumber numberWithInt:player])) {
        return YES;
    }
    
    // row 3
    if (([_boardArray objectAtIndex:6] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:7] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:8] ==[NSNumber numberWithInt:player])) {
        return YES;
    }
    
    // col 1
    if (([_boardArray objectAtIndex:0] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:3] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:6] ==[NSNumber numberWithInt:player])) {
        return YES;
    }
    
    // col 2
    if (([_boardArray objectAtIndex:1] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:4] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:7] ==[NSNumber numberWithInt:player])) {
        return YES;
    }
    
    // col 3
    if (([_boardArray objectAtIndex:2] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:5] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:8] ==[NSNumber numberWithInt:player])) {
        return YES;
    }
    
    // across 1
    if (([_boardArray objectAtIndex:0] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:4] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:8] ==[NSNumber numberWithInt:player])) {
        return YES;
    }
    // across 2
    if (([_boardArray objectAtIndex:2] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex:4] == [NSNumber numberWithInt:player]) 
        && ([_boardArray objectAtIndex: 6] ==[NSNumber numberWithInt:player])) {
        return YES;
    }
    
    return NO;
}
@synthesize winner = _player;
@end
