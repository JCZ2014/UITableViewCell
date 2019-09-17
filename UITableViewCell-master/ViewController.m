//
//  ViewController.m
//  UITableViewCell-master
//
//  Created by YDD on 2017/3/25.
//  Copyright © 2017年 none. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"
#import "MyCell1.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) UITableView *myTableView;
@end

@implementation ViewController

#pragma mark - lazing
- (UITableView *)myTableView {
    if (_myTableView == nil) {
        _myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStyleGrouped];
        _myTableView.backgroundColor = [UIColor whiteColor];
        _myTableView.dataSource = self;
        _myTableView.delegate = self;
        [self.view addSubview:_myTableView];
    }
    return _myTableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"dj分支合并测试");
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 1、nib注册
    [self.myTableView registerNib:[UINib nibWithNibName:@"MyCell1" bundle:nil] forCellReuseIdentifier:@"Cell"];
    
    // 2、纯手写
//    [self.myTableView registerClass:[MyCell class] forCellReuseIdentifier:@"Cell"];
}

#pragma mark - UITableViewDataSource & UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellStr = @"Cell";
    MyCell1 *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[MyCell1 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }
    //    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:cellStr forIndexPath:indexPath];
    //    [cell initUI];
    if (indexPath.row % 2 != 0) {
        cell.contentLabel.textColor = [UIColor redColor];
    } else {
        cell.contentLabel.textColor = [UIColor greenColor];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
