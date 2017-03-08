//
//  AppDelegate.m
//  Moon
//
//  Created by 李博 on 2017/2/27.
//  Copyright © 2017年 Joygo. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SFLiveKit.h"
#import <SFLiveLib/SFLiveLib.h>
#import <SFLiveManager/SFLiveManager.h>
#import <UMengSocialCOM/UMSocial.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [SFLiveLib setAppId:@"LZZB201610" appSecret:@"F9CD40118F8311E6B50B6C92BF2CD7B1" serverAddrs:@[@"http://sgs.joygo-dev.com/"] authDelegate:nil];
    [SFLiveManager liveManagerInit];
    [SFLiveKit appDidFinishLaunching];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    ViewController *mainViewContorller = [[ViewController alloc] init];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:mainViewContorller];
    [self.window setRootViewController:navi];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    [SFLiveKit applicationDidEnterBackground];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    [SFLiveKit applicationWillEnterForeground];
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    [SFLiveKit applicationDidBecomeActive];
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    [SFLiveManager liveManagerDeinit];
}


@end
