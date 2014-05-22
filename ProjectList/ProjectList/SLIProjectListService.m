//
//  SLIProjectListService.m
//  ProjectList
//
//  Created by Duong Huu Hieu on 5/22/14.
//  Copyright (c) 2014 Duong Huu Hieu. All rights reserved.
//

#import "SLIProjectListService.h"
#import <MagicalRecord/CoreData+MagicalRecord.h>
#import "SLIProjectModel.h"
#import "Item.h"

@implementation SLIProjectListService

- (NSArray *)getProjectsModel
{
    NSMutableArray *array = [NSMutableArray array];
    self.managedObjectContext = [NSManagedObjectContext MR_defaultContext];
    [self.managedObjectContext performBlockAndWait:^{
        NSArray *projects = [Item MR_findAllSortedBy:@"name" ascending:true inContext:self.managedObjectContext];
        for (Item *entity in projects) {
            [array addObject:[self modelFromEntity:entity]];
        }
    }];
    return array;
}

- (SLIProjectModel *)modelFromEntity:(Item *)entity
{
    SLIProjectModel *model = [[SLIProjectModel alloc] init];
    model.name = entity.name;
    model.status = entity.status;
    model.description = entity.itemDescription;
    model.startDate = entity.startDate;
    model.endDate = entity.endDate;
    return model;
}
@end
