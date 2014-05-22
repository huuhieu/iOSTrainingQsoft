//
//  PDProjectDetailCell.h
//  ProjectDetail
//
//  Created by Duong Huu Hieu on 5/22/14.
//  Copyright (c) 2014 Duong Huu Hieu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PDProjectDetailModel.h"

@interface PDProjectDetailCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *status;
@property (weak, nonatomic) IBOutlet UILabel *startDate;
@property (weak, nonatomic) IBOutlet UILabel *endDate;

@property (nonatomic, strong) PDProjectDetailModel* model;

@end
