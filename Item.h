//
//  Item.h
//  
//
//  Created by James Reinke on 7/17/15.
//
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
{
    /* Primitives are stored in the same memory space as the object */
    int _valueInDollars;
    
    /* Pointers are stored away from the heap of this object, but the class maintains references */
    NSString *_itemName;
    NSString *_serialNumber;
    NSDate *_dateCreated;
}

+ (instancetype)randomItem;

/* Additional initialization methods */
// Designated initializer
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

/* Getter and setters interface */
- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;
@end
