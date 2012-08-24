//
//  FirstViewController.m
//  AndresMartinez_MDF1_Project4
//
//  Created by Andres Martinez on 8/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "DetailViewController.h"
#import "listinfo.h"

@implementation FirstViewController
@synthesize DetailedView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Foodlist", @"Foodlist");
        self.tabBarItem.image = [UIImage imageNamed:@"Food.png"];
    }
    return self;
}
							
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    numItems = 0;
    
    foods = [[NSMutableArray alloc] init];
    
    
    
    
    
    //Create Our URL
    url = [[NSURL alloc]initWithString:@"http://andresmartinez427.net76.net/MyXMLDoc.xml"];
    
    request = [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    }
    //this will creat mutable data object
    requestData = [NSMutableData alloc];
    
   
    
    
    
    
    NSData *xmlData = [self GetFileDataFromFile:@"MyXMLDoc.xml" ];
    
    NSXMLParser *parser = [[NSXMLParser alloc]initWithData:xmlData];
    if (parser != nil)
    {
        [parser setDelegate:self];
        [parser parse];
    }
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}





- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
  if ([elementName isEqualToString:@"FoodList"])
  {
      NSString *numItemsStr = [attributeDict valueForKey:@"NumItems"];
      if (numItemsStr != nil)
      {
          numItems = [numItemsStr intValue]; 
      }
  }
  else if ([elementName isEqualToString:@"item"])  
  {
      NSString *name = [attributeDict valueForKey:@"Name"];
      NSString *type = [attributeDict valueForKey:@"Type"];
      
      listinfo *item = [[listinfo alloc] initWithName:name theType:type];
      if (item != nil)
      {
          [foods addObject:item];
      }
  }

}












- (NSData*)GetFileDataFromFile:(NSString*)filename
{
    NSString *filePath = nil;
   
    //Create file manager
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    //get path to application documents directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    //create the full path to the data file
    filePath = [documentsDirectory stringByAppendingPathComponent:filename];
   
    
    //does the file name exists?
    if ([fileManager fileExistsAtPath:filePath])
    {
        //returns nsdata for the file
        return  [NSData dataWithContentsOfFile:filePath];
    }
    return nil;
}













- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
   //Check if we have Valid Data?
    if (data != nil)
   {
       //add this data to existing data
       [requestData appendData:data];
   }
}


- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *requestString = [[NSString alloc]initWithData:requestData encoding:NSASCIIStringEncoding ];
    if (requestString != nil)
    {
        //get path to application directory
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        if (documentsDirectory != nil)
        {
            NSString *fullPath = [[NSString alloc] initWithFormat:@"%@/%@", documentsDirectory ,@"MyXMLDoc.xml"];
            if (fullPath != nil)
            {
                [requestData writeToFile:fullPath atomically:true];
            }
        }
        
    }
   
}









- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return foods.count;  
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    listinfo *foodName = [foods objectAtIndex:indexPath.row];
    NSString *theName = [foodName valueForKey:@"name"];
    // NSLog(@"%@",theName);
	cell.textLabel.text = theName;
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detailedViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    [self.navigationController pushViewController:detailedViewController animated:true];
    
    listinfo *foodName = [foods objectAtIndex:indexPath.row];
    NSString *theName = [foodName valueForKey:@"name"];
    NSString *theType = [foodName valueForKey:@"type"];
     NSLog(@"%@/%@",theName, theType);
    [detailedViewController passName:theName type:theType];
}











- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
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
