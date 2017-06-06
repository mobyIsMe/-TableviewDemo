//
//  ViewController.h
//  TableViewDemo
//
//  Created by hongliZhang on 17/6/6.
//  Copyright © 2017年 hongliZhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property UITableView* tableView;
@property NSMutableArray* data;

@end

