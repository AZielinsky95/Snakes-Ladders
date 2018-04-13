//
//  PlayerManager.h
//  Snakes & Ladders
//
//  Created by Alejandro Zielinsky on 2018-04-13.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
@interface PlayerManager : NSObject

@property NSMutableArray<Player*> *players;
@property NSInteger currentIndex;
@property BOOL isGameOver;

-(void)createPlayers:(NSInteger)num;

-(Player*)currentPlayer:(NSInteger)index;

-(void)roll;

-(void)gameOver;

-(NSString*)score;

@end
