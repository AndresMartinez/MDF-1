//
//  FirstViewController.h
//  AndresMartinez_MDF1_Project4
//
//  Created by Andres Martinez on 8/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface FirstViewController : UIViewController  <UITableViewDelegate, UITableViewDataSource, NSURLConnectionDataDelegate, NSXMLParserDelegate>
{
   
    IBOutlet UITableView *myTableView;
    
    
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection * connection;
    
    NSMutableData *requestData;
    
    NSInteger numItems;

    NSMutableArray *foods;
    
   DetailViewController *DetailedView; 


}


@property (nonatomic , retain) DetailViewController *DetailedView;

- (NSData*)GetFileDataFromFile:(NSString*)filename;


@end
