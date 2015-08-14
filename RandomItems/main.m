//
//  main.m
//  RandomItems
//
//  Created by James Reinke on 7/17/15.
//  Copyright (c) 2015 Penguin Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        Item *backpack = [[Item alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        Item *calculator = [[Item alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        // These objects will never be destroyed because there exists a strong reference cycle
        backpack = nil;
        calculator = nil;
        

        
        for (Item *item in items)
            NSLog(@"%@", item);
        
        NSLog(@"Setting items to nil...");
        items = nil;
        
    }
    return 0;
}
