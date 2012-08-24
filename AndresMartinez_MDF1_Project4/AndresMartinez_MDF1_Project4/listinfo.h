//
//  listinfo.h
//  AndresMartinez_MDF1_Project4
//
//  Created by Andres Martinez on 8/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface listinfo : NSObject
{
    NSString *name;
    NSString *type;
}



-(id)initWithName:(NSString*)FoodName theType:(NSString*)foodType;

@end
