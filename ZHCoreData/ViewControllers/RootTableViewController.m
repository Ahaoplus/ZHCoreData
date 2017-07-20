//
//  RootTableViewController.m
//  ZHCoreData
//
//  Created by 张浩 on 2017/4/26.
//  Copyright © 2017年 com. All rights reserved.
//

#import "RootTableViewController.h"
#import "MyTableViewCell1.h"
#import "MyTableViewCell2.h"
#import "MyTableViewCell3.h"
#import "MyTableViewCell4.h"
#import "MyTableViewCell5.h"
#import "CoreDataViewController.h"
#import <MBProgressHUD.h>
@interface RootTableViewController ()
{
    NSArray* titles;
}
@end

@implementation RootTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    titles = @[@"CoreDataAdd",@"CoreDataList",@"Sqlite",@"AutoLayout",@"AAA",@"BBB",@"CCC",@"DDD",@"EEE",@"FFF",@"HHH"];
    [self registerCell];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void)registerCell{

//    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([MyTableViewCell1 class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([MyTableViewCell1 class])];
//    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([MyTableViewCell2 class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([MyTableViewCell2 class])];
//    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([MyTableViewCell3 class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([MyTableViewCell3 class])];
//    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([MyTableViewCell5 class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([MyTableViewCell5 class])];
//    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([MyTableViewCell4 class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([MyTableViewCell4 class])];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return titles.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = nil;
    switch (indexPath.row) {
            
        case 0:
        {
            cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class]) forIndexPath:indexPath];
            if (cell == nil) {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([UITableViewCell class])];
            }
            cell.textLabel.text = [titles objectAtIndex:indexPath.row];
            
        }
            break;
        case 1:
        {
            cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MyTableViewCell1 class]) forIndexPath:indexPath];
            if (cell == nil) {
                cell = [[MyTableViewCell1 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([MyTableViewCell1 class])];
            }
        }
            break;
        case 2:
        {
            cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MyTableViewCell2 class]) forIndexPath:indexPath];
            if (cell == nil) {
                cell = [[MyTableViewCell2 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([MyTableViewCell2 class])];
//                NSClassFromString([NSString stringWithFormat:@"MyTableViewCell%d",(int)indexPath.row]);
            }
        }
            break;
        case 3:
        {
            cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MyTableViewCell3 class]) forIndexPath:indexPath];
            if (cell == nil) {
                cell = [[MyTableViewCell3 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([MyTableViewCell3 class])];
            }
        }
            break;
        case 4:
        {
            cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MyTableViewCell4 class]) forIndexPath:indexPath];
            if (cell == nil) {
                cell = [[MyTableViewCell4 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([MyTableViewCell4 class])];
            }
        }
            break;
        case 5:
        {
            cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MyTableViewCell5 class]) forIndexPath:indexPath];
            if (cell == nil) {
                cell = [[MyTableViewCell5 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([MyTableViewCell5 class])];
            }
        }
            break;
            
        default:{
            cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class]) forIndexPath:indexPath];
            if (cell == nil) {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([UITableViewCell class])];
            }
        }
            break;
    }
    // Configure the cell...
    cell.textLabel.text = [titles objectAtIndex:indexPath.row];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    switch (indexPath.row) {
        case 0:
        {
            CoreDataViewController* vc = [[CoreDataViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        default:
            break;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
