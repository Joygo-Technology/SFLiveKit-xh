//
//  SFLiveKit.h
//  SFLiveKit
//
//  Created by 李博 on 2017/2/22.
//  Copyright © 2017年 Joygo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SFLiveKit : NSObject


/**
 AppDelegate 各系统代理需要调用的方法
 */
+ (void)appDidFinishLaunching;

+ (void)applicationDidEnterBackground;

+ (void)applicationWillEnterForeground;

+ (void)applicationDidBecomeActive;


/**
 传入用户信息启动界面

 @param uID 用户唯一ID
 @param nickname 用户昵称
 @param male 性别 YES 男， NO 女
 @param photo 头像地址
 @param completion 返回block，若viewcontroller为nil 则显示 errorMsg
 */
+ (void)startSessionWithUId:(NSString *)uID nickname:(NSString *)nickname male:(BOOL) male photo:(NSString *)photo comletion:(void(^)(UIViewController *viewController, NSString *errorMsg))completion;

@end
