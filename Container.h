//
//  Container.h
//  RandomItems
//
//  Created by James Reinke on 7/17/15.
//  Copyright (c) 2015 Penguin Software. All rights reserved.
//

#import "Item.h"

@interface Container : Item
{
    NSMutableArray *_items;
    NSString *_containerName;
    int _totalValueInDollars;
    
}

- (void)setContainerName:(NSString *)name;
- (NSString *)containerName;

- (NSMutableArray *)items;

-(NSInteger)totalValueInDollars;

@end
