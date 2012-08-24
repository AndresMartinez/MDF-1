//
//  PrideView.m
//  Andres_Martinez_MDF!_Project2
//
//  Created by Andres Martinez on 8/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PrideView.h"
#import "WandView.h"
#import "JoshView.h"

@implementation PrideView

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
    // gives title
    self.title = @"Pride";
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




-(IBAction)OnWand:(id)sender
{
    WandView * WandViewController = [[WandView alloc] initWithNibName:@"WandView" bundle:nil];
    if (WandViewController != nil)
    {
        [self.navigationController pushViewController:WandViewController animated:true];
    }

}












-(IBAction)OnJosh:(id)sender
{
    JoshView * JoshViewController = [[JoshView alloc] initWithNibName:@"JoshView" bundle:nil];
    if (JoshViewController != nil)
    {
        [self.navigationController pushViewController:JoshViewController animated:true];
    }
    
}















    



@end
