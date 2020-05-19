//
//  photoCategoryViewController.h
//  TabTutorial
//
//  Created by Crystal Hansen on 11-04-10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PhotoCategoryViewController : UIViewController {
	
	IBOutlet UILabel *authTitle;
	IBOutlet UILabel *authLink;
	IBOutlet UILabel *authName;
	IBOutlet UIImageView *imgView;
	IBOutlet UITextView	*photoDescription;
	
	
}
@property (nonatomic, retain) IBOutlet UILabel *authTitle;
@property (nonatomic, retain) IBOutlet UILabel *authLink;
@property (nonatomic, retain) IBOutlet UIImageView *imgView;
@property (nonatomic, retain) IBOutlet UILabel *authName;
@property (nonatomic, retain) IBOutlet UITextView *photoDescription;

@end
