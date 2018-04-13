//
//  main.m
//  Snakes & Ladders
//
//  Created by Alejandro Zielinsky on 2018-04-13.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        PlayerManager *playerManager = [[PlayerManager alloc] init];
        NSString* userInput = [NSString new];
        
        while(![playerManager isGameOver])
        {
            if(playerManager.players.count == 0)
            {
                NSLog(@"WELCOME TO SNAKES AND LADDERS! \n Input # of players!");
                userInput = [InputHandler getUserInput];
                
                if([userInput intValue])
                {
                    [playerManager createPlayers:[userInput intValue]];
                }
                else
                {
                    continue;
                }
            }
            
            NSLog(@"TYPE roll or r to roll dice");
            userInput = [InputHandler getUserInput];
            userInput = [userInput lowercaseString];
            
            if([userInput isEqualToString:(@"roll")]||[userInput isEqualToString:(@"r")])
            {
                [playerManager roll];
            }
            else if([userInput isEqualToString:(@"quit")])
            {
                NSLog(@"Would you like to 'quit or 'restart' ?");
                userInput = [InputHandler getUserInput];
                userInput = [userInput lowercaseString];
                
                if([userInput isEqualToString:(@"quit")])
                {
                    NSLog(@"Thanks for playing!");
                    break;
                }
                else if([userInput isEqualToString:(@"restart")])
                {
                    [playerManager gameOver];
                    continue;
                }
            }
        }
    }
    return 0;
}
