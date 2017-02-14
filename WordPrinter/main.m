//
//  main.m
//  WordPrinter
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Printer.h"
#import "Controller.h"
#import "WonkyController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Printer *printer1 = [[Printer alloc] init];
        Printer *printer2 = [[Printer alloc] init];
        Controller *controller = [[Controller alloc] init];
        WonkyController *wonkController = [[WonkyController alloc] init];
        
        printer1.delegate = controller;
        printer2.delegate = wonkController;
        
        [printer1 printWord:@"Hey"];
        [printer1 printWord:@"Hey?"];
        [printer1 printWord:@"Another time"];
        
        [printer2 printWord:@"Hey"];
        [printer2 printWord:@"Hey?"];
        [printer2 printWord:@"Another time"];
        
    }
    return 0;
}
