//
//  main.m
//  Word Effects
//
//  Created by Rene Mojica on 2016-06-27.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char myString[255];
        char inputChar[1];
        int myNumber;
        
        
        
        printf("Enter a string:\n");
        fgets(myString,255,stdin);
        
        NSString *convertedString = [NSString stringWithUTF8String:myString];
        NSMutableString *mymutableString = [convertedString mutableCopy];
        
        int myInteger = [convertedString integerValue];
        
        NSLog(@"Input was: %@", convertedString);

        printf("\nWhat would you like to do?\n");
        printf("(1) Uppercase \n");
        printf("(2) Lowercase \n");
        printf("(3) Numberize \n");
        printf("(4) Canadianize \n");
        printf("(5) Respond \n");
        printf("(6) Despace it \n");
        
        
        fgets(inputChar,2,stdin);
        
        myNumber = [[NSString stringWithFormat:@"%s", inputChar] integerValue];
        
        
        NSLog(@"myNumber is %d",myNumber);
        
        switch (myNumber) {
            case 1:
                NSLog(@"Result is: %@", [mymutableString uppercaseString]);
                break;
                
            case 2:
                NSLog(@"Result is: %@", [convertedString lowercaseString]);
                break;
                
            case 3:
                
                NSLog(@"Result is: %d", myInteger);
                break;
                
            case 4:
                NSLog(@"Result is: %@", [convertedString stringByAppendingString:@"eh?"]);
                break;
                
            case 5:
                
                if (([convertedString characterAtIndex:[convertedString length] - 2]) == '?') {
                    printf("I don't know\n");
                } else if (([convertedString characterAtIndex:[convertedString length] - 2]) == '!') {
                    printf("Whoa, calm down!\n");
                }
                break;
            
             case 6:
                NSLog(@"Result is: %@", [mymutableString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                break;
            
            default:
                break;
        }

        
        
    }
    return 0;
}
