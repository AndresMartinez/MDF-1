//
//  CustomCellView.h
//  AndresMartinez-MDF1-Project1
//
//  Created by Andres Martinez on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellView : UITableViewCell
{
   //First declare your oulets
    IBOutlet UILabel *GymLabel;
    IBOutlet UILabel  *DescriptionLabel;

}
  //The give them property ect. go to .m file
@property ( strong , nonatomic) IBOutlet UILabel *GymLabel;
@property ( strong , nonatomic)  IBOutlet UILabel *DescriptionLabel;

@end
