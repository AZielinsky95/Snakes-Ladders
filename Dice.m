//
//  Dice.m
//  Threelow
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "Dice.h"

@implementation Dice

+(NSInteger)rollDice
{
    return arc4random_uniform(6) + 1;
}

@end
