//
//  moviezViewController.h
//  moviez
//
//  Created by James Bauer on 12/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class moviezAppDelegate;

@interface moviezViewController : UIViewController {
	NSArray* movies;
	IBOutlet moviezAppDelegate* appDelegate;
}

@property (nonatomic, retain) NSArray* movies;

@end

