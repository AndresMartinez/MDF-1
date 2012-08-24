//
//  ChildView.m
//  Andres_Martinez_MDF!_Project2
//
//  Created by Andres Martinez on 8/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ChildView.h"
#import "CroCopVSPatBarry.h"
#import "EddieView.h"

@implementation ChildView

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

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    self.title = @"UFC";
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


- (void)viewWillAppear:(BOOL)animated
{
    
    //allows scroll view and gives the size
    scrollView.contentSize= CGSizeMake(320.0f, 490.0f);
    
    
    [super viewWillAppear:animated];
}





-(IBAction)OnPatBarry:(id)sender
{
    //creates next View **
    CroCopVSPatBarry *PatBarryController = [[CroCopVSPatBarry alloc] initWithNibName:@"CroCopVSPatBarry" bundle:nil];
    if (PatBarryController != nil)
    {
        //Move to the next view **
        [self.navigationController pushViewController:PatBarryController animated:true];
    }
    


}



-(IBAction)OnEddie:(id)sender
{
    EddieView *EddieViewController = [[EddieView alloc]initWithNibName:@"EddieView" bundle:nil ];
    if (EddieViewController != nil)
    {
        [self.navigationController pushViewController:EddieViewController animated:true];
    }



}










@end
