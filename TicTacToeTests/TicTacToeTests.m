//
//  TicTacToeTests.m
//  TicTacToeTests
//
//  Created by Thomas Nielsen on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TicTacToeTests.h"
#import "TicTacToeGame.h"

@implementation TicTacToeTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testSimulateGamePlayer1Winner
{
    NSLog(@"Testing...");
    
    // Create TicTacToeGame instance
    TicTacToeGame *ticTacToeGame = [[TicTacToeGame alloc] init]; 
    
    STAssertNotNil(ticTacToeGame, @"Game is nil");
    int result;
    
    // Player 1 move R1C1
    result = [ticTacToeGame placeMark:R1C1];
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");

    // Player 2 move R2C1
    result = [ticTacToeGame placeMark:R2C1];
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 1 move R1C2
    result = [ticTacToeGame placeMark:R1C2];
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 2 move R2C2
    result = [ticTacToeGame placeMark:R2C2];
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");

    // Player 1 move R1C3
    result = [ticTacToeGame placeMark:R1C3];
    // Test result == GAME_IN_PROGRESS
    STAssertTrue(result == GAME_FINISHED, @"Game is not finished");
    
    STAssertTrue([ticTacToeGame winner]==1, @"Player 1 did not win");
 
}   

- (void)testSimulateGamePlayer2Winner
{
    NSLog(@"Testing...");
    
    // Create TicTacToeGame instance
    TicTacToeGame *ticTacToeGame = [[TicTacToeGame alloc] init]; 
    
    STAssertNotNil(ticTacToeGame, @"Game is nil");
    int result;
    
    // Player 1 move R1C1
    result = [ticTacToeGame placeMark:R1C1];
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 2 move R2C1
    result = [ticTacToeGame placeMark:R2C1];
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 1 move R1C2
    result = [ticTacToeGame placeMark:R1C2];
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 2 move R2C2
    result = [ticTacToeGame placeMark:R2C2];
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 1 move R3C1
    result = [ticTacToeGame placeMark:R3C1];
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 2 move R2C3
    result = [ticTacToeGame placeMark:R2C3];
    STAssertTrue(result == GAME_FINISHED, @"Game is not finished");
    
    STAssertTrue([ticTacToeGame winner]==2, @"Player 2 did not win");
    
}   

- (void)testSimulateGameDraw
{
    NSLog(@"Testing...");
    
    // Create TicTacToeGame instance
    TicTacToeGame *ticTacToeGame = [[TicTacToeGame alloc] init]; 
    
    STAssertNotNil(ticTacToeGame, @"Game is nil");
   
    int result; // Used to store each result
    
    // Player 1 move
    result = [ticTacToeGame placeMark:R1C1]; // 1 X
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 2 move
    result = [ticTacToeGame placeMark:R1C2]; // 2 O
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 1 move
    result = [ticTacToeGame placeMark:R1C3]; // 3 X
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 2 move
    result = [ticTacToeGame placeMark:R2C3]; // 4 O
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 1 move
    result = [ticTacToeGame placeMark:R2C2]; // 5 X
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 2 move
    result = [ticTacToeGame placeMark:R3C3]; // 6 O
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not finished");

    // Player 1 move
    result = [ticTacToeGame placeMark:R2C1]; // 7 X
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not finished");
    
    // Player 2 move
    result = [ticTacToeGame placeMark:R3C1]; // 8 O
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not finished");  
   
    // Player 1 move
    result = [ticTacToeGame placeMark:R3C2]; // 9 X
    STAssertTrue(result == GAME_FINISHED, @"Game is not finished"); 
    
    STAssertTrue([ticTacToeGame winner]==-1, @"It's not a draw");
    
}   
- (void)testSimulateIlligalMove
{
    NSLog(@"Testing...");
    
    // Create TicTacToeGame instance
    TicTacToeGame *ticTacToeGame = [[TicTacToeGame alloc] init]; 
    
    STAssertNotNil(ticTacToeGame, @"Game is nil");
    
    int result; // Used to store each result
    
    // Player 1 move
    result = [ticTacToeGame placeMark:R1C1]; // 1 X
    STAssertTrue(result == GAME_IN_PROGRESS, @"Game is not in progress");
    
    // Player 2 move
    result = [ticTacToeGame placeMark:R1C1]; // 2 O
    STAssertTrue(result == GAME_ILLEGAL_MOVE, @"Plase was taken");
}   

@end
