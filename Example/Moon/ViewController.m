//
//  ViewController.m
//  Moon
//
//  Created by 李博 on 2017/2/27.
//  Copyright © 2017年 Joygo. All rights reserved.
//

#import "ViewController.h"
#import "SFLiveKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100.f, 100.f, 100.f, 100.f)];
    [btn setBackgroundColor:[UIColor purpleColor]];
    [btn setTitle:@"Live" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(taponLive:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)taponLive:(id)sender
{
    __weak typeof(self) wself = self;
    [SFLiveKit startSessionWithUId:@"308360425" nickname:@"你好" male:YES photo:@"http://touxiang.qqzhi.com/uploads/2012-11/1111005112862.jpg" comletion:^(UIViewController *viewController, NSString *errorMsg) {
        __strong typeof(wself) strongSelf = wself;
        if (strongSelf) {
            if (viewController) {
                [strongSelf.navigationController pushViewController:viewController animated:YES];
            } else {
                //show erorrMsg;
            }
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
