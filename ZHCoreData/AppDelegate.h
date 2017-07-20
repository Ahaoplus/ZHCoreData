//
//  AppDelegate.h
//  ZHCoreData
//
//  Created by 张浩 on 2017/4/26.
//  Copyright © 2017年 com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

