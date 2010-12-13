//
//  detailz.m
//  moviez
//
//  Created by James Bauer on 12/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "detailz.h"


@implementation detailz
@synthesize item;

- (void)refreshDisplay
{
	[itemTable reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [self.item count];	
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"Cell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
	}
	cell.textLabel.text = [self.item objectAtIndex: [indexPath row]];
	//cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	return cell;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
