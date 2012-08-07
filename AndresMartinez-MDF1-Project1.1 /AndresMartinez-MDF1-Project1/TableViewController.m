//
//  TableViewController.m
//  AndresMartinez-MDF1-Project1
//
//  Created by Andres Martinez on 8/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TableViewController.h"
#import "CustomCellView.h"
#import "DetailedViewController.h"
//import custom.h file


@implementation TableViewController
@synthesize DetailedView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
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

- (void)viewDidLoad
{
    gymArray = [[NSMutableArray alloc]initWithObjects:
                @"Gracie Academy",@"AKA",@"Blackhouse",@"Shoota-Box",@"Sweet Science",@"Ceasar Gracie 209",
                @"Jackson MMA", @"American top Team", @"Xtreme Coture",@"Minnnesota Martial Art's",@"Arizona Combat",
                @"Miletech", @"Team Noguiera MMA",@"Fairtex",@"Team Quest",@"CSW", @"Wand Fight Team",@"Loyd Irvin MMA",
                @"Hit Squad",nil];
    
    styleArray = [[NSMutableArray alloc] initWithObjects:@" Gracie Jiu-Jitsu",@"Kickboxing",@"Muaythai",@"MMA",@"Boxing",@"Akido",@"Karate",@"Judo",@"Jiu-Jitsu",@"Jiu-Jitsu",@"Jiu-Jitsu",@"Wrestleing",@"Muaythai",@"Jiu-Jitsu",@"Muaythai",@"Jiu-Jitsu",@"Judo",@"Wrestleing",@"Jiu-Jitsu",@"Wrestleing",@"Akido", nil];
    

    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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







    //tell it how many rows in table view

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    //by returning gym array instead of number you will allways get amount of cell you need
    return [gymArray count];
}



//This creates the cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    CustomCellView *cell = [OriginalTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if([view isKindOfClass:[CustomCellView class]])
            {
               
                cell = (CustomCellView*)view;
                cell.GymLabel.text = (NSString*)[gymArray objectAtIndex:indexPath.row];
                cell.DescriptionLabel.text = (NSString*)[styleArray objectAtIndex:indexPath.row];
            }
        }
    
    }
    
    //this is where data from array is pulled and presented
    cell.GymLabel.text = (NSString*)[gymArray objectAtIndex:indexPath.row];
    cell.DescriptionLabel.text = (NSString*)[styleArray objectAtIndex:indexPath.row];
    return  cell;
}


//tell us witch cell was selected 
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *GymSelected = [gymArray objectAtIndex:[indexPath row]];
    NSString *StlyeSelected = [styleArray objectAtIndex:[indexPath row]];
    
    NSString *msg = [[NSString alloc ] initWithFormat:@"%@ \n \n %@" , GymSelected , StlyeSelected];
    
    if (self.DetailedView == nil)
    {
        DetailedViewController *d = [[DetailedViewController alloc] initWithNibName:@"DetailedViewController" bundle:[NSBundle mainBundle]];
        self.DetailedView = d;
        
    }
    [self.DetailedView initWithTextSelected:msg];
    [self presentModalViewController:DetailedView animated:TRUE];
    
    
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
        NSLog(@"we want to delete gym =%d",indexPath.row ) ;
        //Removes oject from data Array
        [gymArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}











@end
