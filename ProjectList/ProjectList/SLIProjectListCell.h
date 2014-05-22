//
//  SLIProjectListCell.h
//  ProjectList
//
//  Created by Duong Huu Hieu on 5/21/14.
//  Copyright (c) 2014 Duong Huu Hieu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  SLIProjectModel;

@interface SLIProjectListCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *status;
@property (weak, nonatomic) IBOutlet UILabel *description;
@property (weak, nonatomic) IBOutlet UILabel *startDate;
@property (weak, nonatomic) IBOutlet UILabel *endDate;
@property (weak, nonatomic) IBOutlet UIButton *button;

@property (nonatomic, strong) SLIProjectModel* model;
@end
