//
//  ThirdViewController.m
//  Andres_Martinez_MDF!_Project2
//
//  Created by Andres Martinez on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ThirdViewController.h"

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Videos", @"Videos");
        self.tabBarItem.image = [UIImage imageNamed:@"Videos"];
        
        
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.






- (void)viewDidLoad
{
    
    FightsArray = [[NSMutableArray alloc]initWithObjects:@"The Highlights",@"Pride Days", @"Dream",@"K-1",@"Bushido",@"Total Conflict",@"Affliction",@"Strikeforce", nil ];
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [FightsArray count];

}



- (UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIndentifier = @"Cell";
    
    UITableViewCell *cell = [OriginalTableView dequeueReusableCellWithIdentifier:CellIndentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIndentifier];
        
    }
    cell.textLabel.text = [FightsArray objectAtIndex:indexPath.row];
    return  cell;
}





//******* Editing Stuff ********

//this turn on or off editing mode
-(IBAction)ClickForEdit:(id)sender;
{
    if (OriginalTableView.editing == NO)
    {
        [OriginalTableView setEditing:YES];
    }
    else
        [OriginalTableView setEditing:NO];
}


//this pick the style of editng wether add/delete or non
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //currently in delete mode
    return UITableViewCellEditingStyleDelete;
}

//This deletes the cell i want from tableView when in edit mode/ also can add
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
     
        //Removes oject from data Array
        [FightsArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}
















@end
