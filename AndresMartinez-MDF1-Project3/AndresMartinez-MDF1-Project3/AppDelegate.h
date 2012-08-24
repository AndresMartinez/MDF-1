//
//  AppDelegate.h
//  AndresMartinez-MDF1-Project3
//
//  Created by Andres Martinez on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@property (nonatomic, retain) NSMutableArray *myArray;

-(void)getArray;
@end
