//
//  SecondViewController.m
//  Andres_Martinez_MDF!_Project2
//
//  Created by Andres Martinez on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "ChildView.h"
#import "PrideView.h"

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Best of", @"Best of");
        self.tabBarItem.image = [UIImage imageNamed:@"Stats"];
    }
    return self;
}
							
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}




-(IBAction)onClick:(id)sender
{
      //creates second View **
    ChildView *childViewController = [[ChildView alloc]initWithNibName:@"ChildView" bundle:nil];
     if (childViewController != nil)
     {
         //Move to the next view/ child view **
         [self.navigationController pushViewController:childViewController animated:true ];
     }


}



-(IBAction)onPride:(id)sender
{
     //Creates Pride view
    PrideView *prideViewController = [[PrideView alloc] initWithNibName:@"PrideView" bundle:nil];
    if (prideViewController != nil) 
    {
        
        //moves to prideView
        [self.navigationController pushViewController:prideViewController animated:true  ];
    }



}








#pragma mark - View lifecycle

- (void)viewDidLoad
{
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
   
    self.navigationController.navigationBar.tintColor = [UIColor  darkGrayColor];
    
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
