//
//  SLIProjectListService.h
//  ProjectList
//
//  Created by Duong Huu Hieu on 5/22/14.
//  Copyright (c) 2014 Duong Huu Hieu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SLIProjectModel, Item;

@interface SLIProjectListService : NSObject

@property (nonatomic, strong) NSManagedObjectContext* managedObjectContext;

- (NSArray *)getProjectsModel;

- (SLIProjectModel *)modelFromEntity:(Item *)entity;

@end
