//
//  BNRContainer.h
//  RandomItems
//
//  Created by Sam Lozano on 4/25/15.
//  Copyright (c) 2015 Sam Lozano. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray * _subitems;
}

- (void) addItem : (BNRItem *)newItem;

@end

