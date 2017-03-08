# SFLiveKit

[![CI Status](http://img.shields.io/travis/lee/SFLiveKit.svg?style=flat)](https://travis-ci.org/lee/SFLiveKit)
[![Version](https://img.shields.io/cocoapods/v/SFLiveKit.svg?style=flat)](http://cocoapods.org/pods/SFLiveKit)
[![License](https://img.shields.io/cocoapods/l/SFLiveKit.svg?style=flat)](http://cocoapods.org/pods/SFLiveKit)
[![Platform](https://img.shields.io/cocoapods/p/SFLiveKit.svg?style=flat)](http://cocoapods.org/pods/SFLiveKit)

## Demo

Example目录下是我们直播库的引用示例项目，依赖库使用cocoapod集成，在运行前请先执行 pod install 下载依赖库.

## 集成步骤

我们的直播库以及相关依赖库需要使用cocoapod集成，所以如果您的项目并未集成请先移步[CocoaPods安装和使用教程 ](http://code4app.com/article/cocoapods-install-usage)  

由于部分第三方库文件不支持 BitCode，请把您项目的**BitCode**功能关掉。

####* 添加pod库

在项目工程的Podfile文件中加载SFLiveKit库： 
	
	pod 'SFLiveKit', :git => 'https://github.com/Joygo-Technology/SFLiveKit-xh.git', :tag => '0.1.3'

由于目录体积较大，因而执行pod install 命令时会比较费时，请耐心等待。
	
###* 修改info.plist
直播的模块会使用到相机、定位等等权限，因而需要在plist里面加入提示语。若您之前已有添加则不需要重复此步骤。  
	
	<key>NSCameraUsageDescription</key>
	<string>是否允许应用使用您的照相机</string>
	<key>NSLocationWhenInUseUsageDescription</key>
	<string>是否允许应用使用期间获取您当前的地理位置信息</string>
	<key>NSMicrophoneUsageDescription</key>
	<string>是否允许应用使用您的麦克风</string>
	<key>NSPhotoLibraryUsageDescription</key>
	<string>是否允许应用访问您的相册</string>

用户进入后台时仍需要播放音频，因而要添加后台音频播放。  

	<key>UIBackgroundModes</key>
	<array>
		<string>audio</string>
	</array>

**另外我们的分享功能使用了UMeng的社会化分享组件，若您之前集成过则不用重复操作。若没有请移步[友盟Share初始化设置](http://dev.umeng.com/social/ios/quick-integration#2)**

##使用
SDK初始化需要在APPdelegate中的几个代理方法进行
请参照Demo工程自行添加。  

	- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
      [SFLiveLib setAppId:@"LZZB201610" appSecret:@"F9CD40118F8311E6B50B6C92BF2CD7B1" serverAddrs:@[@"http://sgs.joygo-dev.com/"] authDelegate:nil];
      [SFLiveManager liveManagerInit];
      [SFLiveKit appDidFinishLaunching];
    
	  // Your Code Here
    }
    
    - (void)applicationDidEnterBackground:(UIApplication *)application {
    	[SFLiveKit applicationDidEnterBackground];
    }
    
    - (void)applicationWillEnterForeground:(UIApplication *)application {
    	[SFLiveKit applicationWillEnterForeground];
    }
    
    - (void)applicationDidBecomeActive:(UIApplication *)application {
	    [SFLiveKit applicationDidBecomeActive];
	}
	
	- (void)applicationWillTerminate:(UIApplication *)application {
	    [SFLiveManager liveManagerDeinit];
	}

当需要进入SDK首页时调用以下方法，传入用户ID，昵称，性别，以及头像，若发成错误block中返回的viewcontroller为nil 此时请对errorMsg做合适的呈现。  

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
	
## Author

lee, libo@joygo.com  
_有任何问题，欢迎联系我们_

## License

SFLiveKit is available under the MIT license. See the LICENSE file for more info.
