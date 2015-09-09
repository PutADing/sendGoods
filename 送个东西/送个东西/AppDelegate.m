//
//  AppDelegate.m
//  送个东西
//
//  Created by 蒋宽 on 15/6/3.
//  Copyright (c) 2015年 蒋宽. All rights reserved.
//

#import "AppDelegate.h"
#import "HBBaseTabBarController.h"
#import "HBBaseNavigationController.h"
#import "HBShareTableViewController.h"
#import "HBMessageTableViewController.h"
#import "HBContactsTableViewController.h"
#import "HBPersonalViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = WHITECOLOR;
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:38.0f/255 green:58.0f/255 blue:74.0f/255 alpha:1.0f]];//导航栏的颜色
    [[UINavigationBar appearance] setTintColor:THEMECOLOR];//返回按钮的颜色
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:WHITECOLOR}];//标题字体 颜色等属性
    
    HBMessageTableViewController* messageVC = [[HBMessageTableViewController alloc]init];//消息
    HBContactsTableViewController* contactsVC = [[HBContactsTableViewController alloc]init];//通讯录
    HBShareTableViewController* shareVC = [[HBShareTableViewController alloc]init];//共享
    HBPersonalViewController* personalVC = [[HBPersonalViewController alloc]init];//个人
    
    HBBaseNavigationController* messageNavi = [[HBBaseNavigationController alloc]initWithRootViewController:messageVC];//消息 导航栏
    HBBaseNavigationController* contactsNavi = [[HBBaseNavigationController alloc]initWithRootViewController:contactsVC];//通讯录 导航栏
    HBBaseNavigationController* shareNavi = [[HBBaseNavigationController alloc]initWithRootViewController:shareVC];//共享 导航栏
    HBBaseNavigationController* personalNavi = [[HBBaseNavigationController alloc]initWithRootViewController:personalVC];//个人 导航栏
    
    
    HBBaseTabBarController* tabBar = [HBBaseTabBarController new];//tabBar
    tabBar.viewControllers = @[messageNavi, contactsNavi, shareNavi, personalNavi];
    
    self.window.rootViewController = tabBar;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
