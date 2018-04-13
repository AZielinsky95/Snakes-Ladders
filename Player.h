//
//  Player.h
//  Snakes & Ladders
//
//  Created by Alejandro Zielinsky on 2018-04-13.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface Player : NSObject

@property (nonatomic) NSInteger currentSquare;
@property BOOL gameOver;
@property NSString* name;
-(void)rollDice;

@end
