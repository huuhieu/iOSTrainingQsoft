//
//  Item.h
//  ProjectList
//
//  Created by Duong Huu Hieu on 5/22/14.
//  Copyright (c) 2014 Duong Huu Hieu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Item : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * endDate;
@property (nonatomic, retain) NSString * startDate;
@property (nonatomic, retain) NSString * itemDescription;
@property (nonatomic, retain) NSString * status;

@end
