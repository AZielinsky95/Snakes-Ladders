//
//  InputHandler.m
//  Maths
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)getUserInput
{
    char inputChars[255];
    fgets(inputChars,255,stdin);
    NSString* userInput;
    
    userInput = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    userInput = [userInput stringByTrimmingCharactersInSet: NSCharacterSet.whitespaceAndNewlineCharacterSet];
    
    return userInput;
}

@end
