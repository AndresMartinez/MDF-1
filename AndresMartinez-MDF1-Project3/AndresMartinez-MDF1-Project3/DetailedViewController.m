//
//  DetailedViewController.m
//  AndresMartinez-MDF1-Project3
//
//  Created by Andres Martinez on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailedViewController.h"
#import "FirstViewController.h"
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"
#import "AppDelegate.h"
#import "DetailedViewController.m"

@implementation DetailedViewController
@synthesize MyMapView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (IBAction)mapIt:(CLLocationCoordinate2D)coord title:(NSString *)title
{
    NSString *MyCoord = [[NSString alloc] initWithFormat:@"Long: %f Lat: %f", coord.longitude , coord.latitude];
    
    name.text = title;
    gymLocation.text = MyCoord;
    
    MKCoordinateRegion myRegion;
    myRegion.center.latitude = coord.latitude;
    myRegion.center.longitude = coord.longitude;
    myRegion.span.latitudeDelta = 20.0f;
    myRegion.span.longitudeDelta = 20.0f;
    
    self.MyMapView.delegate = (id)self;
    
    self.title = title;
    
    [self.MyMapView setRegion:myRegion animated:YES];
    
    CLLocationCoordinate2D location;
    location.latitude = coord.latitude;
    location.longitude = coord.longitude;
    
    giveAnnotaion = [[MyAnnotation alloc]init];
    giveAnnotaion.coordinate = location;
    giveAnnotaion.title = title;
    giveAnnotaion.subtitle = @"eat";
    
    [MyMapView addAnnotation:giveAnnotaion];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation 
{
  if ([annotation isKindOfClass:[MKUserLocation class]])
      return nil;
    
    MKPinAnnotationView * pinView = (MKPinAnnotationView *)[self.MyMapView dequeueReusableAnnotationViewWithIdentifier:@"MyAnnotion"];
    
    
    if (!pinView) 
        pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPinAnnotation"];
    else 
        pinView.enabled = YES;
    pinView.canShowCallout = YES;
    
    return pinView;

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

-(IBAction)toClose:(id)sender
{
    [self dismissModalViewControllerAnimated:TRUE];
}












@end
