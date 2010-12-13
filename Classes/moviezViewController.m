//
//  moviezViewController.m
//  moviez
//
//  Created by James Bauer on 12/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "moviezViewController.h"

@implementation moviezViewController
@synthesize movies;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [self.movies count];	
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"Cell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
	}
	cell.textLabel.text = [self.movies objectAtIndex: [indexPath row]];
	//cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[appDelegate movieClicked:[[tableView cellForRowAtIndexPath:indexPath] textLabel].text];	
}

- (void)viewDidLoad
{
	[super viewDidLoad];
	self.movies = [[NSArray alloc] initWithObjects:@"One",@"Two",@"Three",nil];	
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
