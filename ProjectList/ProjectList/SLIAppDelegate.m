//
//  SLIAppDelegate.m
//  ProjectList
//
//  Created by Duong Huu Hieu on 5/21/14.
//  Copyright (c) 2014 Duong Huu Hieu. All rights reserved.
//

#import "SLIAppDelegate.h"
#import "SLIProjectListViewController.h"
#import <MagicalRecord/CoreData+MagicalRecord.h>
#import "Item.h"

@implementation SLIAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    [MagicalRecord setupCoreDataStack];
    [self setData];
    SLIProjectListViewController *viewController = [[SLIProjectListViewController alloc] initWithNibName:@"SLIProjectListViewController" bundle:nil];
    [self.window setRootViewController:viewController];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)setData
{
    NSManagedObjectContext *context = [NSManagedObjectContext MR_defaultContext];
    [context performBlockAndWait:^{
        NSString *date = @"15/01/2014";
        for (NSInteger index = 0; index<100; index++) {
            NSString *name = [NSString stringWithFormat:@"Project %li", (long)index];
            NSString *description = @"This is the description of items test";
            NSString *status = @"COMPLETE";
            Item *entity = [Item MR_findFirstByAttribute:@"name" withValue:name inContext:context];
            if (!entity) {
                entity = [Item MR_createInContext:context];
                entity.name = name;
                entity.status = status;
                entity.itemDescription = description;
                entity.startDate = entity.endDate = date;
            }
        }
        [context MR_saveToPersistentStoreAndWait];
    }];
}

@end
