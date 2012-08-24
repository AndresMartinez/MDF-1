//
//  DetailViewController.h
//  AndresMartinez_MDF1_Project4
//
//  Created by Andres Martinez on 8/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    IBOutlet UITextView *myTextView;
    NSMutableString *outputText;
    
    NSMutableArray *foodarray;
    int foodInt;
}

@property int  foodInt;

-(void)passName:(NSString*)theName type:(NSString*)theType ;



@end
