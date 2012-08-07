//
//  DetailedViewController.h
//  AndresMartinez-MDF1-Project1
//
//  Created by Andres Martinez on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailedViewController : UIViewController
{
    IBOutlet UILabel *Gym;
    NSString *GymSelected;
}


@property (nonatomic , retain) IBOutlet UILabel *Gym;
@property (nonatomic , retain) NSString *Gymselected;
 


-(id) initWithTextSelected:(NSString *) text;


-(IBAction)toClose:(id)sender;




@end
