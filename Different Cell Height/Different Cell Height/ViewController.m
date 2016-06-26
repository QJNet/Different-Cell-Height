//
//  ViewController.m
//  Different Cell Height
//
//  Created by 权建星 on 16/6/26.
//  Copyright © 2016年 权建星. All rights reserved.
//

#import "ViewController.h"
#import "QJTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor redColor];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleSubtitle) reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = @"qjx";
    cell.detailTextLabel.text = @"niubi";
    cell.backgroundColor = [UIColor grayColor];
    
    return cell;
}

@end
