//
//  SecondViewController.h
//  AndresMartinez-MDF1-Project3
//
//  Created by Andres Martinez on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface SecondViewController : UIViewController <MKMapViewDelegate>
{
    IBOutlet MKMapView *mapView;
    
    NSArray *MyMapAnnotations;
} 



@property(nonatomic , retain) IBOutlet MKMapView * mapView;

@end
