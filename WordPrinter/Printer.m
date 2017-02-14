//
//  Printer.m
//  WordPrinter
//
//  Created by Dave Augerinos on 2017-02-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Printer.h"

@implementation Printer


-(void)printWord:(NSString *)word {
    
    // Find out from delegate how many times to print
    int printTimes = [self.delegate printer:self numberOfTimesToPrint:word];
    BOOL addStars = [self.delegate printer:self addStarBeforeAndAfter:word];
    
    for(int i = 0; i < printTimes; i++) {
        
        // Add stars before and after
        if(addStars) {
            NSLog(@"✮%@✮", word);
        }
        
        else {
            NSLog(@"%@", word);
        }

    }
    
}

@end
