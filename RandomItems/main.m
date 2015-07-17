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
        
        for (int i = 0; i < 10; i++){
            Item *item = [Item randomItem];
            [items addObject:item];
        }
        
        for (Item *item in items){
            NSLog(@"%@", item);
        }
        
        items = nil;
        
    }
    return 0;
}
