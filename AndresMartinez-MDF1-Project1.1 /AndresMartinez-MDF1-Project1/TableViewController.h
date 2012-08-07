//
//  TableViewController.h
//  AndresMartinez-MDF1-Project1
//
//  Created by Andres Martinez on 8/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailedViewController.h"

@interface TableViewController : UIViewController
{
        IBOutlet UITableView *OriginalTableView;
        NSMutableArray *gymArray;
        NSMutableArray *styleArray;
        DetailedViewController *DetailedView; 
        
}

-(IBAction)ClickForEdit:(id)sender;

@property (nonatomic , retain) DetailedViewController *DetailedView;


@end
