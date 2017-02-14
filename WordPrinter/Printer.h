//
//  Printer.h
//  WordPrinter
//
//  Created by Dave Augerinos on 2017-02-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Printer;

// Protocol

@protocol PrinterDelegate <NSObject>

-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *)word;
-(BOOL)printer:(Printer *)printer addStarBeforeAndAfter:(NSString *)word;

@end

@interface Printer : NSObject

// Properties
@property (nonatomic, weak) id <PrinterDelegate> delegate;

// Methods
-(void)printWord:(NSString *)word;

@end
