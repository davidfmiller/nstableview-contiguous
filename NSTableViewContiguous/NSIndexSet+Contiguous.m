//
//  NSIndexSet+Contiguous.m
//  Router
//
//  Created by David Miller on 2017-05-24.
//  Copyright © 2017 READMEANSRUN. All rights reserved.
//

#import "NSIndexSet+Contiguous.h"

@implementation NSIndexSet (Contiguous)

- (BOOL) isContiguous;
{
    __block NSInteger prev = self.firstIndex;
    __block BOOL result = YES;

    [self enumerateIndexesUsingBlock:^(NSUInteger idx, BOOL *stop)
    {
        if (idx > prev + 1)
        {
            result = NO;
            *stop = YES;
        }

        prev = idx;
    }];

    return result;
}

@end
