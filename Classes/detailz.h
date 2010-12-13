//
//  detailz.h
//  moviez
//
//  Created by James Bauer on 12/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface detailz : UIViewController {
	NSArray* item;
	IBOutlet UITableView* itemTable;
}

@property (nonatomic, retain) NSArray* item;

- (void)refreshDisplay;

@end
