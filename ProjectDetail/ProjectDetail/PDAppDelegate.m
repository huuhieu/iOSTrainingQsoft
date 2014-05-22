//
//  PDAppDelegate.m
//  ProjectDetail
//
//  Created by Duong Huu Hieu on 5/22/14.
//  Copyright (c) 2014 Duong Huu Hieu. All rights reserved.
//

#import "PDAppDelegate.h"
#import "PDViewController.h"

@implementation PDAppDelegate

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    PDViewController *viewController = [[PDViewController alloc] initWithNibName:@"PDViewController" bundle:nil];
    [self.window setRootViewController:viewController];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
