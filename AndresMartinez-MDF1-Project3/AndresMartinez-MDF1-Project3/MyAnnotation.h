//
//  MyAnnotation.h
//  AndresMartinez-MDF1-Project3
//
//  Created by Andres Martinez on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import  <MapKit/MapKit.H>

@interface MyAnnotation : NSObject
{
    CLLocationCoordinate2D coordiinate;
    NSString *title;
    NSString *subtitle;
    
}


@property (nonatomic, assign)	CLLocationCoordinate2D	coordinate;
@property (nonatomic, copy)		NSString*				title;
@property (nonatomic, copy)		NSString*				subtitle;

@end
