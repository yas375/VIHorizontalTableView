//
//  MYRootViewController.m
//  HorizontalTableView
//
//  Created by Victor Ilyukevich on 27.06.12.
//  Copyright (c) 2012. All rights reserved.
//

#import "MYRootViewController.h"
#import "HorizontalTableView.h"
#import "MYTableViewCell.h"

static NSString *const kCellIdentifier = @"kCellIdentifier";


@interface MYRootViewController () {
    __weak IBOutlet HorizontalTableView *menuTableView;
}
@end


@implementation MYRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINib *cellNib = [UINib nibWithNibName:@"MYTableViewCell" bundle:nil];
    [menuTableView registerNib:cellNib forCellReuseIdentifier:kCellIdentifier];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    cell.textLabel.text = [NSString stringWithFormat:@"cell %d", indexPath.row];
    return cell;
}

@end
