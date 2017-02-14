//
//  Controller.m
//  WordPrinter
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Controller.h"

@implementation Controller

-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *)word {
    
    if ([word hasPrefix:@"A"]) {
        return 2;
    } else if ([word hasSuffix:@"?"]) {
        return 0;
    } else {
        return 1;
    }
}

-(BOOL)printer:(Printer *)printer addStarBeforeAndAfter:(NSString *)word {

    // Return YES if it's a question
    if ([word hasPrefix:@"A"]) {
        return YES;
    } else {
        return NO;
    }
}

@end
