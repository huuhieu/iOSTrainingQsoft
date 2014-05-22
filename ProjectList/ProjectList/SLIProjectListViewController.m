//
//  SLIProjectListViewController.m
//  ProjectList
//
//  Created by Duong Huu Hieu on 5/21/14.
//  Copyright (c) 2014 Duong Huu Hieu. All rights reserved.
//

#import "SLIProjectListViewController.h"
#import "SLIProjectListCell.h"
#import "SLIProjectModel.h"
#import "SLIProjectListService.h"
@interface SLIProjectListViewController ()<UITableViewDataSource, UITableViewDelegate>
- (void)fakeModel;
@property (nonatomic, strong) NSArray *projects;

@end

@implementation SLIProjectListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.tableView registerNib:[UINib nibWithNibName:@"SLIProjectListCell" bundle:nil] forCellReuseIdentifier:@"SLIProjectListCell"];
    [self fakeModel];
}

#pragma mark - table view datasource and delegate

- (void)fakeModel
{
//    NSMutableArray *array = [NSMutableArray array];
//    NSString *fakeDate = @"01/01/2014";
//    for (NSInteger index = 0; index < 10; index++) {
//        SLIProjectModel *model = [[SLIProjectModel alloc] init];
//        model.name = [NSString stringWithFormat:@"Project %li", (long)index];
//        model.status = @"Complete";
//        model.startDate = fakeDate;
//        model.endDate = fakeDate;
//        model.description = @"test description";
//        [array addObject:model];
//    }
    SLIProjectListService *service = [[SLIProjectListService alloc] init];
    NSArray *array = [service getProjectsModel];
    self.projects = [array copy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.projects.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 198.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SLIProjectListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SLIProjectListCell"];
    SLIProjectModel *model = [self.projects objectAtIndex:indexPath.row];
    [cell setModel:model];
    return cell;
}
@end
