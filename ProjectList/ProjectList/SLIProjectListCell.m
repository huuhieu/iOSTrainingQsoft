//
//  SLIProjectListCell.m
//  ProjectList
//
//  Created by Duong Huu Hieu on 5/21/14.
//  Copyright (c) 2014 Duong Huu Hieu. All rights reserved.
//

#import "SLIProjectListCell.h"
#import "SLIProjectModel.h"

@implementation SLIProjectListCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(SLIProjectModel *)model
{
    _model = model;
    [self.name setText:_model.name];
    [self.startDate setText:_model.startDate];
    [self.endDate setText:_model.endDate];
    [self.description setText:_model.description];
    [self.status setText:_model.status];
}

@end
