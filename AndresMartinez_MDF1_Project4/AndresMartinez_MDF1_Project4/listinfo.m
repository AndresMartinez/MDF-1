//
//  listinfo.m
//  AndresMartinez_MDF1_Project4
//
//  Created by Andres Martinez on 8/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "listinfo.h"

@implementation listinfo



-(id)initWithName:(NSString*)foodName theType:(NSString*)foodType 
{
    if ((self = [super init]))
    {
        name = foodName;
        type = foodType;
    }
    return self;
}

@end
