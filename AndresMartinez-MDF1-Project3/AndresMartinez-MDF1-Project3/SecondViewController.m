//
//  SecondViewController.m
//  AndresMartinez-MDF1-Project3
//
//  Created by Andres Martinez on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "MyAnnotation.h"

@implementation SecondViewController
@synthesize mapView ;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"Map"];
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
    
    //higher number zooms out
    MKCoordinateSpan span;
    span.latitudeDelta=10.0f;
    span.longitudeDelta=10.0f;
    
    
    //give cordinates for certain area
    CLLocationCoordinate2D location;
    location.latitude = 34.07f;
    location.longitude = -118.28f;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapView.region = region;
    
    
    
    // gives coordinates ********
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
    
    
    // Adds name and adds location
    
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
    
    
   MyMapAnnotations = [[NSArray alloc] initWithObjects:myAnnotation1,myAnnotation2,myAnnotation3,myAnnotation4,
                       myAnnotation5, myAnnotation6, myAnnotation7, myAnnotation8, myAnnotation9 ,myAnnotation10 ,nil ];
    
    if (MyMapAnnotations !=nil)
    {
        [mapView addAnnotations:MyMapAnnotations];
    }

    

    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}









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
