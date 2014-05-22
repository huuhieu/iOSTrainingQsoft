//
//  PDProjectDetailCell.m
//  ProjectDetail
//
//  Created by Duong Huu Hieu on 5/22/14.
//  Copyright (c) 2014 Duong Huu Hieu. All rights reserved.
//

#import "PDProjectDetailCell.h"

@implementation PDProjectDetailCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(PDProjectDetailModel *)model
{
    _model = model;
    [self.name setText:_model.name];
    [self.startDate setText:_model.startDate];
    [self.endDate setText:_model.endDate];
    [self.status setText:_model.status];
}


@end
