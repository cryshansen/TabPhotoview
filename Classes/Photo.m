//
//  photo.m
//  TabTutorial
//
//  Created by Crystal Hansen on 11-04-10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Photo.h"


@implementation Photo

@synthesize name,photoTitle,bio,link,imgName, photoType;

 
-(id)initWithName:(NSString *)a bio:(NSString *)b link:(NSString *)l photoTitle:(NSString *)p imgName:(NSString *)img photoType:(NSString *)ptype{

	self.name = a;
	self.bio= b;
	self.link=l;
	self.photoTitle = p;
	self.imgName= img;
	self.photoType=ptype;
	return self;
	
	
}

@end
