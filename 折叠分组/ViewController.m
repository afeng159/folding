//
//  ViewController.m
//  折叠分组
//
//  Created by hc1 on 15/12/29.
//  Copyright © 2015年 hc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) NSMutableArray *dataArr;
@property (strong, nonatomic) UITableView *tableView;
@end

@implementation ViewController
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}
- (NSMutableArray *)dataArr{
    NSArray *arr = @[@{@"data":@[@"1",@"2",@"3"],@"state":@"0",@"header":@"第一分区"},@{@"data":@[@"1",@"2",@"3"],@"state":@"0",@"header":@"第一分区"},@{@"data":@[@"1",@"2",@"3"],@"state":@"0",@"header":@"第一分区"}];
    return [arr mutableCopy];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self tableView];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark -- UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataArr.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
