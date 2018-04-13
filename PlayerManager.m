//
//  PlayerManager.m
//  Snakes & Ladders
//
//  Created by Alejandro Zielinsky on 2018-04-13.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _players = [[NSMutableArray alloc] init];
        _currentIndex = 0;
        _isGameOver = NO;
    }
    return self;
}

-(Player*)currentPlayer:(NSInteger)index
{
    NSInteger i = (index % self.players.count);
    return self.players[i];
}

-(NSString*)score
{
    NSMutableString *temp = [NSMutableString new];
    [temp appendString:@"score: "];
    
    for(Player *p in _players)
    {
        [temp appendString:[NSString stringWithFormat:@"%@ : %ld, ",p.name,p.currentSquare]];
    }
    NSString *result = [NSString stringWithString:temp];
    
    return result;
}

-(void)gameOver
{
    NSLog(@"%@ WINS!",[self currentPlayer:self.currentIndex].name);
    [self.players removeAllObjects];
 //   self.isGameOver = YES;
}

-(void)roll
{
    NSLog(@"%@ rolling",[self currentPlayer:self.currentIndex].name);
    [[self currentPlayer:self.currentIndex] rollDice];
    NSLog(@"%@", [self score]);
    if([self currentPlayer:self.currentIndex].gameOver)
    {
        [self gameOver];
    }
    self.currentIndex++;
}

-(void)createPlayers:(NSInteger)num
{
    for (int i = 0; i < num; i++)
    {
        Player *player = [[Player alloc] init];
        [self.players addObject:player];
        self.players[i].name = [NSString stringWithFormat:@"player %d" ,i + 1];
    }
}

@end
