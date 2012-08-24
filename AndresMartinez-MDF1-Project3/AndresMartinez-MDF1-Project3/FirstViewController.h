//
//  FirstViewController.h
//  AndresMartinez-MDF1-Project3
//
//  Created by Andres Martinez on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyAnnotation.h"

@interface FirstViewController : UIViewController
{
    IBOutlet  UITableView *GymTableView;
    NSMutableArray *Barray;
    MyAnnotation *pullAnnot;
    

}

@property (nonatomic, retain) NSMutableArray *Barray ;

-(IBAction)ClickForEdit:(id)sender;


@end
