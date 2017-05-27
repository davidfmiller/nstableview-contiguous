//
//  NSIndexSet+Contiguous.h
//  Router
//
//  Created by David Miller on 2017-05-24.
//  Copyright © 2017 READMEANSRUN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSIndexSet (Contiguous)

/**
 * `YES` if an index set's members are all contiguous with each other; `NO` otherwise
 */
@property (readonly) BOOL isContiguous;

@end
