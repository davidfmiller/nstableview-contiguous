//
//  ViewController.m
//  NSTableViewContiguous
//
//  Created by David Miller on 2017-05-27.
//  Copyright © 2017 READMEANSRUN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()

@property NSDictionary* tableData;

@end

@implementation ViewController
{
    //NSDictionary *tableData;
}

@synthesize tableData;

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tableData = @{
                  @"Mainframe" : @"https://readmeansrun.com/",
                  @"Blog" : @"https://readmeansrun.com/blog/",
                  @"Router" : @"https://readmeansrun.com/router/",
                  @"Pictographs" : @"https://readmeansrun.com/pictographs/",
                  @"Souvenir" : @"https://readmeansrun.com/souvenir/",
                  @"READMEANSAFARI" : @"https://readmeansrun.com/code/readmeansafari",
                  @"Archive" : @"http://archive.readmeansrun.com"
                  };
}


- (void)setRepresentedObject:(id)representedObject
{
    [super setRepresentedObject:representedObject];
}

#pragma mark - IBActions

- (IBAction)tableViewDoubleClickAction:(NSTableView*)sender;
{
    if (tableView.clickedRow < 0)
    {
        return;
    }
    
    NSURL *url = [NSURL URLWithString: [self.tableData.allValues objectAtIndex: tableView.clickedRow]];

    [[NSWorkspace sharedWorkspace] openURL:url];
}

#pragma mark - NSTableViewDataSource

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView;
{
    return tableData.allKeys.count;
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)rowIndex;
{
    return [tableData.allKeys objectAtIndex: rowIndex];
}





@end
