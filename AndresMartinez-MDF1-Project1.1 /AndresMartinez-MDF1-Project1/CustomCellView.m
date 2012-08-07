//
//  CustomCellView.m
//  AndresMartinez-MDF1-Project1
//
//  Created by Andres Martinez on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomCellView.h"

@implementation CustomCellView

//Here synthesize what you gave a property / so your labels

@synthesize  GymLabel;
@synthesize  DescriptionLabel;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
