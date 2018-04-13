//
//  Player.m
//  Snakes & Ladders
//
//  Created by Alejandro Zielinsky on 2018-04-13.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "Player.h"

@interface Player()

@property NSDictionary* gameLogic;
@end

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameOver = NO;
        _gameLogic = [[NSDictionary alloc] init];
        _gameLogic = @{
                            @4: @14,
                              @9: @31,
                              @17: @7,
                              @20: @38,
                             @28: @84,
                             @40: @89,
                             @51: @67,
                             @63: @81,
                             @64: @60,
                              @89: @26,
                              @95: @75,
                              @99: @78,
                              };
    }
    return self;
}

-(void)rollDice
{
    NSInteger roll = [Dice rollDice];
    NSLog(@"You rolled : %ld",(long)roll);
    self.currentSquare += roll;
    
    if(self.currentSquare >= 100)
    {
        _gameOver = YES;
        return;
    }
    if([_gameLogic objectForKey:@(self.currentSquare)] != nil)
    {
        NSNumber *goToSquare = [self.gameLogic objectForKey:@(self.currentSquare)];
        if(self.currentSquare < [goToSquare integerValue])
        {
            NSLog(@"You landed on : %ld,Climb the ladder to %@",(long)self.currentSquare,goToSquare);
            self.currentSquare = [goToSquare integerValue];
        }
        else
        {
            NSLog(@"You landed on : %ld,Slide down the snake to %@",(long)self.currentSquare,goToSquare);
            self.currentSquare = [goToSquare integerValue];
        }
    }
    
    NSLog(@"Current Square : %ld",self.currentSquare);
}
@end
