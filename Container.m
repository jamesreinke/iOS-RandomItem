//
//  Container.m
//  RandomItems
//
//  Created by James Reinke on 7/17/15.
//  Copyright (c) 2015 Penguin Software. All rights reserved.
//

#import "Container.h"

@implementation Container

/* Returns the total value of all items in the container */
- (int)totalValue
{
    int total = 0;
    for (Item *item in self.items) {
        total += item.valueInDollars;
    }
    return total;
}

- (instancetype)initWithItems:(NSMutableArray *)items
{
    // Call the superclass's designated initializer
    self = [super init];
    
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        _items = items;
        _containerName = @"Lindsey Lohan";
        _totalValueInDollars = self.totalValue;
    }
    
    // Return the address of the newly initialized object
    return self;
}

- (instancetype)initWithItems:(NSMutableArray *)items
                         name:(NSString *)name
{
    // Call the superclass's designated initializer
    self = [super init];
    
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        _items = items;
        _containerName = name;
        _totalValueInDollars = self.totalValue;
    }
    
    // Return the address of the newly initialized object
    return self;
}

- (void)setContainerName:(NSString *)name
{
    _containerName = name;
}

- (NSString *)containerName
{
    return _containerName;
}

- (NSMutableArray *)items
{
    return _items;
}

- (NSInteger)totalValueInDollars
{
    return _totalValueInDollars;
}

@end
