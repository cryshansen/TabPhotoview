//
//  TabTutorialAppDelegate.h
//  TabTutorial
//
//  Created by Crystal Hansen on 11-04-10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "navigationController.h"

@interface TabTutorialAppDelegate : NSObject <UIApplicationDelegate> {
    IBOutlet UITabBarController *rootController;
	IBOutlet navigationController *navController;
	IBOutlet navigationController *moreNavController;
	UIWindow *window;
	
}

@property (nonatomic,retain) IBOutlet UITabBarController *rootController;
@property (nonatomic, retain)  navigationController *navController;
@property (nonatomic, retain)  navigationController *moreNavController;
@property (nonatomic, retain) IBOutlet UIWindow *window;



@end

