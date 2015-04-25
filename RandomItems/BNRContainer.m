//
//  BNRContainer.m
//  RandomItems
//
//  Created by Sam Lozano on 4/25/15.
//  Copyright (c) 2015 Sam Lozano. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

-(instancetype) init
{
    self = [super init];
    
    if(self)
    {
        _subitems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (instancetype) initWithItemName : (NSString*)name
                withValueInDollars: (int)value
                  withSerialNumber: (NSString*)serial
{
    self = [super initWithItemName: name withValueInDollars:value withSerialNumber:serial];

    
    if(self)
    {
        _subitems = [[NSMutableArray alloc] init];
    }
    
    return self;
}


- (void) addItem : (BNRItem *)newItem
{
    [_subitems addObject:newItem];
}

-(NSString*)description
{
    NSInteger totalValue = 0;
    
    for(BNRItem* item in _subitems)
    {
        totalValue += item.valueInDollars;
    }
    
    NSMutableString *descString = [[NSMutableString alloc] initWithFormat:@"Container Name (%@) Container Serial (%@): Total Worth $%ld, recorded on %@\n",
                            self.itemName,
                            self.serialNumber,
                            (long)totalValue,
                            self.dateCreated];
    
    for(BNRItem* item in _subitems)
    {
        NSMutableString *subString = [[NSMutableString alloc] initWithString: @"Container SubItem : " ];
        [subString appendString:item.description];
        [descString appendString:subString];
        [descString appendString:@"\n"];
    }
    return descString;
}

- (int)valueInDollars
{
    int counter;
    
    //count myself
    counter += _valueInDollars;
    
    //count the container
    for(BNRItem *item in _subitems )
    {
        counter += item.valueInDollars;
    }
    return counter;
}

@end
