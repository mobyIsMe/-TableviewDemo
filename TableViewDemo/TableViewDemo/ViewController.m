//
//  ViewController.m
//  TableViewDemo
//
//  Created by hongliZhang on 17/6/6.
//  Copyright © 2017年 hongliZhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//-(id)init{
//    self= [super init];
//    if(self){
//        _data = [[NSMutableArray alloc]init];
//        for(int i=0;i<30;i++){
//            NSString* str = [NSString stringWithFormat:@"cell %d",i];
//            [_data addObject:str];
//        }
//        self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//
//    }
//    self.tableView.dataSource = self;
//    [self.tableView setPagingEnabled:YES];
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //if(self){
        _data = [[NSMutableArray alloc]init];
        for(int i=0;i<30;i++){
            NSString* str = [NSString stringWithFormat:@"cell %d",i];
            [_data addObject:str];
        }
    
    //接下来这两行是参考了这个http://blog.csdn.net/liuxu0718/article/details/48344295
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen]bounds].size.width,self.view.frame.size.height)];
    self.tableView.clipsToBounds = NO;
    
    self.tableView.rowHeight = 300;
    self.tableView.dataSource = self;
    [self.tableView setPagingEnabled:YES];
    [self.view addSubview:_tableView];
    
    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* cellID = @"cellID";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(cell == nil){
        cell  = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = _data[indexPath.row];
    cell.backgroundColor = [UIColor redColor];
    return cell;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _data.count;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
