//
//  main.m
//  RandomItems
//
//  Created by Sam Lozano on 4/24/15.
//  Copyright (c) 2015 Sam Lozano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *items = [[NSMutableArray alloc] init];
        BNRContainer *theContainer = [[BNRContainer alloc]initWithItemName:@"Big Daddy" withValueInDollars:45 withSerialNumber:@"ABCDEDFG"];
        BNRContainer *subContainer = [[BNRContainer alloc]initWithItemName:@"SubContainer" withValueInDollars:100 withSerialNumber:@"ABCDEDFG"];

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

        
        for (int i=0; i<20; i++) {
            
            //uncomment for randomized selection
            BNRItem *item = [BNRItem randomItem];
            
            if( i % 2 == 0)
            {
                [theContainer addItem:item];
            }
            else
            {
                [subContainer addItem:item];
            }
//            BNRItem *item = [BNRItem randomItem];
//            
//            [items addObject:item];
//            
        }
        
        [theContainer addItem:subContainer];
        [theContainer addItem:[[BNRItem alloc] initWithItemName:@"Bruce Jenner" andWithSerialNumber:@"F2A2"]];
        
        NSLog(@"%@", theContainer);
        
        items = nil;
    }
    return 0;
}
