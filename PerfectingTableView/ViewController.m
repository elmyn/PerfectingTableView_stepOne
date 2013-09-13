//
//  ViewController.m
//  PerfectingTableView
//
//  Created by Michal Piwowarczyk on 13.09.2013.
//  Copyright (c) 2013 GoApps. All rights reserved.
//

#import "ViewController.h"
#import "AppRecord.h"

@interface ViewController ()

@end

@implementation ViewController


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	NSUInteger count = [self.entries count];
    
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
	static NSString *CellIdentifier = @"LazyTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    AppRecord *appRecord = [self.entries objectAtIndex:indexPath.row];
    cell.textLabel.text = appRecord.appName;
    cell.detailTextLabel.text = appRecord.artist;
    
    return cell;
}



- (void)viewDidUnload {
    [self setTableView:nil];
    [super viewDidUnload];
}
@end
