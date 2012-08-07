//
//  DetailedViewController.m
//  AndresMartinez-MDF1-Project1
//
//  Created by Andres Martinez on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailedViewController.h"
#import "ViewController.h"
#import "TableViewController.h"

@implementation DetailedViewController
@synthesize Gym;
@synthesize Gymselected;

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



- (IBAction)toClose:(id)sender
{
    [self dismissModalViewControllerAnimated:TRUE];
}



-(id) initWithTextSelected:(NSString *) text {
    self.Gymselected = text;
    [Gym setText:[self Gymselected]];
    return self;
}








-(void)viewDidLoad
{
    [Gym setText:[self Gymselected]];   
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

@end
