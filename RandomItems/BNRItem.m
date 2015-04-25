//
//  BNRItem.m
//  RandomItems
//
//  Created by Sam Lozano on 4/24/15.
//  Copyright (c) 2015 Sam Lozano. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (void)setItemName:(NSString *)str
{
    _itemName = str;
}

-(void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}

-(void)setValueInDollars:(int)value
{
    _valueInDollars = value;
}

-(NSString*)itemName
{
    return _itemName;
}

-(NSString*)serialNumber
{
    return _serialNumber;
}

-(int)valueInDollars
{
    return _valueInDollars;
}

-(NSDate*)dateCreated
{
    return _dateCreated;
}

-(NSString*)description
{
    NSString *descString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                            self.itemName,
                            self.serialNumber,
                            self.valueInDollars,
                            self.dateCreated];
    return descString;
}


- (instancetype) initWithItemName : (NSString*)name
                    withValueInDollars: (int)value
                    withSerialNumber: (NSString*)serial
{
    self = [super init];
    
    if(self)
    {
        _itemName = name;
        _valueInDollars = value;
        _serialNumber = serial;
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

- (instancetype) initWithItemName:(NSString *)name
{
    return [self initWithItemName:name withValueInDollars:0 withSerialNumber:@""];
}

-(instancetype) init{
    return [self initWithItemName:@"Item"];
}

- (instancetype) initWithItemName : (NSString*)name
               andWithSerialNumber: (NSString*)serial
{
    return [self initWithItemName:name withValueInDollars:0 withSerialNumber:serial];
}

+ (instancetype) randomItem
{
    NSArray *randomArray = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    NSArray *randomNouns = @[@"Bear", @"Spork", @"Mac"];
    
    NSInteger adjectiveIndex = arc4random() % [randomArray count];
    NSInteger nounIndex = arc4random() % [randomNouns count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            randomArray[adjectiveIndex],
                            randomNouns[nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    
    BNRItem * newItem = [[self alloc] initWithItemName:randomName withValueInDollars:randomValue withSerialNumber:randomSerialNumber];
    
    return newItem;
}
@end
