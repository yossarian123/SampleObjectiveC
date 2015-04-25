//
//  main.m
//  RandomItems
//
//  Created by Sam Lozano on 4/24/15.
//  Copyright (c) 2015 Sam Lozano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
//        [items addObject:@"One"];
//        [items addObject:@"Two"];
//        [items addObject:@"Three"];
//        [items insertObject:@"Zero" atIndex:0];
//        
//        //loops through all items
//        for (NSString *item in items)
//        {
//            NSLog(@"%@", item);
//        }
//        
//        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa" withValueInDollars:100 withSerialNumber:@"A1B2"];
//        
//        BNRItem *itemNameOnly = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
//        BNRItem *itemNoName = [[BNRItem alloc] init];
//        
//        NSLog(@"%@", item);
//        NSLog(@"%@", itemNameOnly);
//        NSLog(@"%@", itemNoName);

        for (int i=0; i<10; i++) {
            BNRItem *item = [BNRItem randomItem];
            
            [items addObject:item];
            
        }
        id lastObj = [items lastObject];
        
        [lastObj count];
        
        for(BNRItem *item in items)
        {
            NSLog(@"%@", item);
        }
        items = nil;
    }
    return 0;
}
