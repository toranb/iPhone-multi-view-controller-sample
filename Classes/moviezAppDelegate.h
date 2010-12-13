//
//  moviezAppDelegate.h
//  moviez
//
//  Created by James Bauer on 12/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class moviezViewController;
@class detailz;

@interface moviezAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    moviezViewController *viewController;
	IBOutlet UINavigationController* navController;
	IBOutlet detailz* detailedController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet moviezViewController *viewController;

- (void)movieClicked:(NSString *)movieName;

@end

