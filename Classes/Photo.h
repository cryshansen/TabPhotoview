//
//  photo.h
//  TabTutorial
//
//  Created by Crystal Hansen on 11-04-10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Photo : NSObject {
	NSString *name;
	NSString *bio;
	NSString *link;
	NSString *photoTitle;
	NSString *imgName;
	NSString *photoType; 

	

}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *bio;
@property (nonatomic, retain) NSString *link;
@property (nonatomic, retain) NSString *photoTitle;
@property (nonatomic, retain) NSString *imgName;
@property	(nonatomic, retain) NSString *photoType;

-(id)initWithName:(NSString *)a bio:(NSString *)b link:(NSString *)l photoTitle:(NSString *)p imgName:(NSString *)img photoType:(NSString *)ptype; 

 
@end
