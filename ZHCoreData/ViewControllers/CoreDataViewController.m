//
//  CoreDataViewController.m
//  ZHCoreData
//
//  Created by 张浩 on 2017/4/26.
//  Copyright © 2017年 com. All rights reserved.
//

#import "CoreDataViewController.h"
#import <CoreData/CoreData.h>
#import "Student+CoreDataClass.h"
#import "AppDelegate.h"
#import <MBProgressHUD.h>
//#import "UIViewController+HUD.h"
@interface CoreDataViewController ()
{
    AppDelegate* app;
}
@end
static NSInteger studentID = 0;
@implementation CoreDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"CoreData";
    app = (AppDelegate*)[UIApplication sharedApplication].delegate;
    self.view.backgroundColor = [UIColor whiteColor];
    [self createButtons];
}
-(void)createButtons{
    NSArray* array = @[@"增",@"删",@"改",@"查",@"观察改变"];
    for (int i = 0; i<array.count; i++) {
        UIButton* button = [[UIButton alloc]initWithFrame:CGRectMake(10+60*i, 100, 50, 50)];
        [button setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        [button setTitle:[array objectAtIndex:i] forState:UIControlStateSelected];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        button.tag = i;
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
}
-(void)buttonAction:(UIButton*)button{
    switch (button.tag) {
        case 0:{
            [self addData];
        }
            break;
        case 1:{
            [self delData];
        }
            break;
        case 2:{
            [self changgeData];
        }
            break;
        case 3:{
            [self selectData];
        }
            break;
        default:
            break;
    }
}
-(void)addData{
    studentID++;
    Student* pp = [NSEntityDescription insertNewObjectForEntityForName:@"Student" inManagedObjectContext:app.persistentContainer.viewContext];
    pp.age = 19;
    pp.name = @"single";
    pp.sex = 1;
    pp.studentId = [NSString stringWithFormat:@"%d",(int)studentID];
    pp.name = [NSString stringWithFormat:@"Student%@",pp.studentId];
    NSError* error = nil;
    [app.persistentContainer.viewContext save:&error];
    if (error) {
        NSLog(@"%s error: %@",__func__, error.description);
    }else{
//        // 显示提示信息
//        UIView *view = [[UIApplication sharedApplication].delegate window];
//        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
//        hud.userInteractionEnabled = NO;
//        // Configure for text only and offset down
//        hud.mode = MBProgressHUDModeText;
//        hud.labelText = @"插入成功";
//        
//        hud.removeFromSuperViewOnHide = YES;
//        [hud hide:YES afterDelay:2.0f];

    }
}
-(void)delData{
    
}
-(void)changgeData{
    
}
-(void)selectData{
    NSEntityDescription* entity = [NSEntityDescription entityForName:@"Student" inManagedObjectContext:app.persistentContainer.viewContext];
    NSFetchRequest* request = [[NSFetchRequest alloc]init];
    [request setEntity:entity];
    NSError* error = nil;
    NSArray* array =  [app.persistentContainer.viewContext executeFetchRequest:request error:&error];
    
    if (error) {
        NSLog(@"%s error: %@",__func__, error.description);
    }
    NSLog(@"result is %@",array);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
