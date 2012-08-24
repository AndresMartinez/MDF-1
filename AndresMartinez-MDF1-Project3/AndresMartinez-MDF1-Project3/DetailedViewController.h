//
//  DetailedViewController.h
//  AndresMartinez-MDF1-Project3
//
//  Created by Andres Martinez on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"



@interface DetailedViewController : UIViewController
{
    IBOutlet MKMapView *MyMapView;
    MyAnnotation *giveAnnotaion;
    MyAnnotation *giveAnnotaion2;
    IBOutlet UILabel *name;
    IBOutlet UILabel *gymLocation;

}


@property (retain)IBOutlet MKMapView *MyMapView;


- (IBAction)mapIt:(CLLocationCoordinate2D)coord title:(NSString *)title;



-(IBAction)toClose:(id)sender;


@end
