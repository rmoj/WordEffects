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
        char inputChar[2];
    //    char userInput[2];
      //  NSMutableString *responseNewOperation = @"Y";
        
        long myNumber;
        
        printf("Enter a string:\n");
        fgets(myString,255,stdin);
        
        NSString *convertedString = [NSString stringWithUTF8String:myString];
        //NSMutableString *mymutableString = [[[convertedString mutableCopy] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]copy];
        NSMutableString *mymutableString = [[convertedString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]copy];
        NSInteger myInteger = [convertedString integerValue];
        
        NSLog(@"Input was: %@", convertedString);
        
        while (true) // infinite loop
        {
            
            printf("\nWhat would you like to do?\n");
            printf("(1) Uppercase \n");
            printf("(2) Lowercase \n");
            printf("(3) Numberize \n");
            printf("(4) Canadianize \n");
            printf("(5) Respond \n");
            printf("(6) Despace it \n");
            
            fgets(inputChar,255,stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChar];
            
            //return [[inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]] mutableCopy];
            //myNumber = [[NSString stringWithFormat:@"%s", inputChar] integerValue];
            myNumber = [inputString integerValue];
            //myNumber = (int) inputString;
            //myNumber = (int)inputChar;
            
            //NSLog(@"myNumber is %ld",myNumber);
            
            switch (myNumber) {
                    
                case 1:
                    NSLog(@"Result is: %@\n", [mymutableString uppercaseString]);
                    break;
         
                case 2:
                    NSLog(@"Result is: %@\n", [convertedString lowercaseString]);
                    break;
                    
                case 3:
                    
                    NSLog(@"Result is: %ld\n", myInteger);
                    break;
                    
                case 4:
                    mymutableString = [[mymutableString stringByReplacingOccurrencesOfString:@"\n" withString:@""]mutableCopy];
                    NSLog(@"Result is: %@\n", [mymutableString stringByAppendingString:@" eh?"]);
                    break;
                    
                case 5:
                    
                    if (([convertedString characterAtIndex:[convertedString length] - 2]) == '?') {
                        printf("I don't know\n");
                    } else if (([convertedString characterAtIndex:[convertedString length] - 2]) == '!'){
                        printf("Whoa, calm down!\n");
                    }
                    break;
                    
                case 6:
                    NSLog(@"Result is: %@\n", [mymutableString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                    break;
                    
                default:
                    break;
            }
            
        }
        
    }
    return 0;
}
