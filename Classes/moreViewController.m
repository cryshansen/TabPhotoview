//
//  moreViewController.m
//  TabTutorial
//
//  Created by Crystal Hansen on 11-04-10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "moreViewController.h"
#import "PhotoCategoryViewController.h"
#import "Photo.h"


@implementation moreViewController

@synthesize tableData, photos;
@synthesize photoView;
@synthesize moreNavController;


#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
	[super viewDidLoad];
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	self.navigationItem.title = @"More";
	tableData = [[NSArray alloc] initWithObjects:@"Picture of the Day",@"Picture of the Week",@"Photographer of the Month",@"Recent",@"Random",@"Inspiration",nil];
	Photo *photo1 = [[Photo alloc] initWithName:@"Steven Kovick" bio:@"Steven Kovick has engaged in art since 1999 and has introduced photography into his repertoire in the past 7yrs." link:@"skovickart.com" photoTitle:@"Laurie" imgName:@"laurie.png" photoType:@"Picture of the Day"];
	Photo *photo2 = [[Photo alloc] initWithName:@"Chace Groves" bio:@"Chace took training in video and animation production in Vancouver, BC. Since then he has explored photography through digital mediums such as photoshop." link:@"excalibruno.com" photoTitle:@"Lifeguard" imgName:@"lifeguard.png" photoType:@"Picture of the Week"];
	Photo *photo3 = [[Photo alloc] initWithName:@"Crystal Hansen" bio:@"Crystal started art with a course in sculpture. Her inspiration grew from there into an explosion of dables in various media." link:@"skovickart.com" photoTitle:@"cheerios" imgName:@"cheerios.png" photoType:@"Photographer of the Month"];
	Photo *photo4 = [[Photo alloc] initWithName:@"Steven Kovick" bio:@"Blah blah." link:@"skovickart.com" photoTitle:@"Laurie" imgName:@"laurie.png" photoType:@"Recent"];
	Photo *photo5 = [[Photo alloc] initWithName:@"Dave Wilson" bio:@"Dave is a self taught photographer." link:@"secondsightstudio.com" photoTitle:@"Laurie" imgName:@"laurie.png" photoType:@"Random"];
	moreNavController = [[UINavigationController alloc]init];
	[self.view addSubview:(UIView *)moreNavController];
	NSMutableArray *photosArray = [[NSArray alloc] initWithObjects:photo1,photo2,photo3,photo4,photo5,nil];
	//tableData = [[NSArray alloc] initWithObjects:@"Picture of the Day",@"Picture of the Week",@"Photographer of the Month",@"Recent",@"Random",@"Inspiration",nil];	
	//self.photoView = tableData; //photosArray;
	self.photos = photosArray;
	[photosArray release];

}



- (void)viewWillAppear:(BOOL)animated {
	[self.tableView reloadData];
    //[super viewWillAppear:animated];
}

/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [photos count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
	Photo *photo =  [self.photos objectAtIndex:indexPath.row];
	cell.textLabel.text = photo.photoType;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
	Photo *p = (Photo *)[self.photos objectAtIndex:indexPath.row]; 
	
	if(self.photoView == nil){
		PhotoCategoryViewController *detailViewController = [[PhotoCategoryViewController alloc] initWithNibName:@"photoCategoryViewController" bundle:[NSBundle mainBundle]];
		self.photoView = detailViewController;
		[detailViewController release];
	}
	
    
	//TabTutorialAppDelegate *delegate = (TabTutorialAppDelegate *)[[UIApplication sharedApplication] delegate];
	//TabTutorialAppDelegate *appDelegate = (TabTutorialAppDelegate *)[[[UIApplication sharedApplication] delegate]; 
    //[[[appDelegate rootViewController] flipsideViewController] myMethod];
    
    [moreNavController pushViewController:self.photoView ];
	self.photoView.title = [p photoType];
	self.photoView.authName.text = [p name];
	self.photoView.authLink.text = [p link];
	self.photoView.photoDescription.text = [p bio];
	self.photoView.authTitle.text = [p photoTitle];
	self.photoView.imgView.image = [UIImage imageNamed:p.imgName];
	//self.photoView.imgView = 
	
	
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [moreNavController release];
	[tableData release];
	[photos release];
	[photoView release];
    [super dealloc];
}


@end

