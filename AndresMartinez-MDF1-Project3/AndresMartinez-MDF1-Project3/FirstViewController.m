//
//  FirstViewController.m
//  AndresMartinez-MDF1-Project3
//
//  Created by Andres Martinez on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"
#import "DetailedViewController.h"
#import "AppDelegate.h"



@implementation FirstViewController
@synthesize Barray;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Gyms", @"Gyms");
        self.tabBarItem.image = [UIImage imageNamed:@"List"];
    }
    return self;
}
							
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
    UIBarButtonItem *rightButton =[[UIBarButtonItem alloc]initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(toggleEdit)];
    self.navigationItem.rightBarButtonItem = rightButton;
    self.navigationItem.rightBarButtonItem = rightButton;
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate getArray];
    Barray = appDelegate.myArray;
    
    
    

    
    
    CLLocationCoordinate2D theCoordinate1;
    theCoordinate1.latitude = 34.07;
    theCoordinate1.longitude = - 118.28;
    
    CLLocationCoordinate2D theCoordinate2;
    theCoordinate2.latitude = 34.10;
    theCoordinate2.longitude = - 118.45;
    
    CLLocationCoordinate2D theCoordinate3;
    theCoordinate3.latitude = 33.101;
    theCoordinate3.longitude = -118.43;
	
	CLLocationCoordinate2D theCoordinate4;
    theCoordinate4.latitude = 32.10;
    theCoordinate4.longitude = -117.20;
    
    CLLocationCoordinate2D theCoordinate5;
    theCoordinate5.latitude = 34.22;
    theCoordinate5.longitude = -116.33;
    
    CLLocationCoordinate2D theCoordinate6;
    theCoordinate6.latitude = 33.602;
    theCoordinate6.longitude = -116.72;
    
    CLLocationCoordinate2D theCoordinate7;
    theCoordinate7.latitude = 32.87;
    theCoordinate7.longitude = -115.322;
    
    CLLocationCoordinate2D theCoordinate8;
    theCoordinate8.latitude = 36.22;
    theCoordinate8.longitude = -117.89;
    
    CLLocationCoordinate2D theCoordinate9;
    theCoordinate9.latitude = 34.32;
    theCoordinate9.longitude = -114.22;
    
    CLLocationCoordinate2D theCoordinate10;
    theCoordinate10.latitude = 33.222;
    theCoordinate10.longitude = -118.69;
    
    
    
    MyAnnotation* myAnnotation1=[[MyAnnotation alloc] init];
    
	myAnnotation1.coordinate=theCoordinate1;
	myAnnotation1.title=@"Black House";
	myAnnotation1.subtitle=@"Train";
	
	MyAnnotation* myAnnotation2=[[MyAnnotation alloc] init];
	
	myAnnotation2.coordinate=theCoordinate2;
	myAnnotation2.title=@"GJJ's";
	myAnnotation2.subtitle=@"Train";
	
	MyAnnotation* myAnnotation3=[[MyAnnotation alloc] init];
	
	myAnnotation3.coordinate=theCoordinate3;
	myAnnotation3.title=@"Sweet Science";
	myAnnotation3.subtitle=@"Train";
	
	MyAnnotation* myAnnotation4=[[MyAnnotation alloc] init];
	
	myAnnotation4.coordinate=theCoordinate4;
	myAnnotation4.title=@"Blackzilians";
	myAnnotation4.subtitle=@"Train";
    
    MyAnnotation* myAnnotation5=[[MyAnnotation alloc] init];
    
	myAnnotation5.coordinate=theCoordinate5;
	myAnnotation5.title=@"Ceasr Gracies";
	myAnnotation5.subtitle=@"Train";
	
	MyAnnotation* myAnnotation6=[[MyAnnotation alloc] init];
	
	myAnnotation6.coordinate=theCoordinate6;
	myAnnotation6.title=@"AKA Boxing";
	myAnnotation6.subtitle=@"Train";
	
	MyAnnotation* myAnnotation7=[[MyAnnotation alloc] init];
	
	myAnnotation7.coordinate=theCoordinate7;
	myAnnotation7.title=@"Tap Out";
	myAnnotation7.subtitle=@"Train";
	
	MyAnnotation* myAnnotation8=[[MyAnnotation alloc] init];
	
	myAnnotation8.coordinate=theCoordinate8;
	myAnnotation8.title=@"House of Pain";
	myAnnotation8.subtitle=@"Train";
    
    MyAnnotation* myAnnotation9=[[MyAnnotation alloc] init];
	
	myAnnotation9.coordinate=theCoordinate9;
	myAnnotation9.title=@"American Legends";
	myAnnotation9.subtitle=@"Train";
	
	MyAnnotation* myAnnotation10=[[MyAnnotation alloc] init];
	
	myAnnotation10.coordinate=theCoordinate10;
	myAnnotation10.title=@"Shoota box";
	myAnnotation10.subtitle=@"Train";
    
    
    
  
    
    
    
    [Barray addObject:myAnnotation1];
	[Barray addObject:myAnnotation2];
	[Barray addObject:myAnnotation3];
	[Barray addObject:myAnnotation4];
    [Barray addObject:myAnnotation5];
    [Barray addObject:myAnnotation6];
    [Barray addObject:myAnnotation7];
    [Barray addObject:myAnnotation8];
    [Barray addObject:myAnnotation9];
    [Barray addObject:myAnnotation10];

    
    NSLog(@ " their are %i  items",Barray.count);   
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}




-(void)toggleEdit
{
    [GymTableView setEditing:!GymTableView.editing animated:YES]; 
    
    if (GymTableView.editing) 
    {
        [self.navigationItem.rightBarButtonItem setTitle:@"Done"];
    }
    else 
    {
        [self.navigationItem.rightBarButtonItem setTitle:@"Edit"];  
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return Barray.count;  
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    MyAnnotation *loc = [Barray objectAtIndex:indexPath.row];
	cell.textLabel.text = loc.title;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailedViewController *details = [[DetailedViewController alloc] initWithNibName:@"DetailedViewController" bundle:nil];

    [self.navigationController pushViewController:details animated:YES];
    
    
    
    
    MyAnnotation *pinit = [Barray objectAtIndex:indexPath.row];
    
    [details mapIt:pinit.coordinate title:pinit.title];

        
}
 






















//******* Editing Stuff ********

//this turn on or off editing mode
-(IBAction)ClickForEdit:(id)sender;
{
    if (GymTableView.editing == NO)
    {
        [GymTableView setEditing:YES];
    }
    else
        [GymTableView setEditing:NO];
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
        [Barray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}











/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   static NSString *CellIndentifier = @"cell";
    
    UITableViewCell  *cell = [GymTableView  dequeueReusableCellWithIdentifier:CellIndentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIndentifier];
        
        cell.textLabel.text = @"hello";
        
       
    }
      return cell;
}
*/
















- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
