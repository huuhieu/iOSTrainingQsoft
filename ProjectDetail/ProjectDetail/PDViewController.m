//
//  PDViewController.m
//  ProjectDetail
//
//  Created by Duong Huu Hieu on 5/22/14.
//  Copyright (c) 2014 Duong Huu Hieu. All rights reserved.
//

#import "PDViewController.h"
#import "PDProjectDetailService.h"
#import "PDProjectDetailModel.h"
#import "PDProjectDetailCell.h"

@interface PDViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *projects;

@end

@implementation PDViewController

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
    [self.tableView registerNib:[UINib nibWithNibName:@"PDProjectDetailCell" bundle:nil] forCellReuseIdentifier:@"PDProjectDetailCell"];
    [self fakeModel];
}

- (void)fakeModel
{
    NSMutableArray *array = [NSMutableArray array];
    NSString *fakeDate = @"01/01/2014";
    for (NSInteger index = 0; index < 10; index++) {
        PDProjectDetailModel *model = [[PDProjectDetailModel alloc] init];
        model.name = [NSString stringWithFormat:@"Project %li", (long)index];
        model.status = @"COMPLETE";
        model.startDate = fakeDate;
        model.endDate = fakeDate;
        [array addObject:model];
    }
//    PDProjectDetailService *service = [[PDProjectDetailService alloc] init];
//    NSArray *array = [service getProjectsModel];
    self.projects = [array copy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger *)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.projects.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 105.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PDProjectDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PDProjectDetailCell"];
    PDProjectDetailModel *model = [self.projects objectAtIndex:indexPath.row];
    [cell setModel:model];
    return cell;
}

@end
