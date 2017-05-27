//
//  NSTableViewContiguous.m
//  Router
//
//  Created by David Miller on 2017-05-24.
//  Copyright © 2017 READMEANSRUN. All rights reserved.
//

#import "NSTableViewContiguous.h"
#import "NSIndexSet+Contiguous.h"

@implementation NSTableViewContiguous

- (void) mouseDown:(NSEvent *)event
{
    [super mouseDown:event];

    NSIndexSet *set = [self selectedRowIndexes];

    NSPoint localLocation = [self convertPoint:[event locationInWindow] fromView:nil];
    NSInteger clickedRow = [self rowAtPoint:localLocation];

    if (! set.isContiguous)
    {
        [self selectRowIndexes: [NSIndexSet indexSetWithIndex: clickedRow] byExtendingSelection:NO];
    }
}

@end
