//
//  moreViewController.h
//  TabTutorial
//
//  Created by Crystal Hansen on 11-04-10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoCategoryViewController.h"
#import "navigationController.h"


@interface moreViewController : UITableViewController {

	
	PhotoCategoryViewController *photoView;
	NSMutableArray *photos;
	NSArray *tableData;
	navigationController *moreNavController;
	

}
@property (nonatomic, retain) NSArray *tableData;
@property (nonatomic, retain) PhotoCategoryViewController *photoView;
@property (nonatomic, retain) navigationController *moreNavController;

@property (nonatomic, retain) NSMutableArray *photos;

@end
