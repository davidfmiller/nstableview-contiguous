//
//  ViewController.h
//  NSTableViewContiguous
//
//  Created by David Miller on 2017-05-27.
//  Copyright © 2017 READMEANSRUN. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController <NSTableViewDelegate, NSTableViewDataSource>
{
    IBOutlet NSTableView* tableView;
}

- (IBAction)tableViewDoubleClickAction:(NSTableView*)sender;

@end

