//
//  BNRItem.h
//  RandomItems
//
//  Created by Sam Lozano on 4/24/15.
//  Copyright (c) 2015 Sam Lozano. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

//class methods
+ (instancetype) randomItem;

//instance methods
- (void)setItemName : (NSString* )str;
- (NSString*)itemName;

- (void)setSerialNumber : (NSString*)str;
- (NSString*)serialNumber;

-(void)setValueInDollars : (int)value;
- (int)valueInDollars;

-(NSDate*)dateCreated;

//the designated initializer for the class
- (instancetype) initWithItemName : (NSString*)name
                    withValueInDollars: (int)value
                  withSerialNumber: (NSString*)serial;

- (instancetype) initWithItemName:(NSString *)name;

- (instancetype) initWithItemName : (NSString*)name
                  andWithSerialNumber: (NSString*)serial;
@end
