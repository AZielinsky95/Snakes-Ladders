//
//  main.m
//  Snakes & Ladders
//
//  Created by Alejandro Zielinsky on 2018-04-13.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"WELCOME TO SNAKES AND LADDERS! \n TYPE roll or r to roll dice");
        Player *player = [[Player alloc] init];
        
        while(![player gameOver])
        {
            NSString* userInput = [InputHandler getUserInput];
            
            if([userInput isEqualToString:(@"roll")] ||
               [userInput isEqualToString:(@"r")])
            {
                [player rollDice];
            }
        }
    }
    return 0;
}
