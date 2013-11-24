//
//  MyTableViewViewController.m
//  test
//
//  Created by imtapps on 11/24/13.
//  Copyright (c) 2013 imtapps. All rights reserved.
//

#import "MyTableViewViewController.h"

@interface MyTableViewViewController ()

@end

@implementation MyTableViewViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] init];
    }
    UILabel *label = [cell viewWithTag:1];
    label.text = @"Hello?";
    return cell;
}

@end
