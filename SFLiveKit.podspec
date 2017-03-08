#
# Be sure to run `pod lib lint SFLiveKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SFLiveKit'
  s.version          = '0.1.3'
  s.summary          = 'A short description of SFLiveKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Joygo-Technology/SFLiveKit-xh'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lee' => 'nemoleo@yeah.net' }
  s.source           = { :git => 'https://github.com/Joygo-Technology/SFLiveKit-xh.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SFLiveKit/include/*.h'

  s.resource = 'SFLiveKit/Resources/*.{bundle,xcassets}'
  # s.resource_bundles = {
  #   'SFLiveKit' => ['SFLiveKit/Assets/*.png']
  # }

  s.public_header_files = 'SFLiveKit/include/*.h'

  s.frameworks = 'UIKit','Foundation','MobileCoreServices','Photos','AVFoundation','VideoToolbox','AudioToolbox','CoreTelephony','OpenAL','OpenGLES','UIKit','CoreMotion','Accelerate'
  s.libraries = 'stdc++','c++'

  #s.ios.vendored_frameworks  = 'SFLiveKit/Frameworks/*.framework'
  s.vendored_libraries = 'SFLiveKit/Library/*.a'

  s.user_target_xcconfig = {
      # 'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
      # 'CLANG_CXX_LIBRARY' => 'libc++',
      # 'OTHER_LINKER_FLAGS' => '-ObjC',
      'ENABLE_BITCODE' => 'NO'
  }

  s.pod_target_xcconfig = { 
    'ENABLE_BITCODE' => 'NO'
  }

  s.dependency 'GPUImage', '~> 0.1.7'
  s.dependency 'LDNetDiagnoService', '~> 1.1.2'
  s.dependency 'pop', '~> 1.0.9'
  s.dependency 'IQKeyboardManager', '~> 4.0.8'
  s.dependency 'DGActivityIndicatorView', '~> 2.1.1'
  s.dependency 'TMCache', '~> 2.1.0'
  s.dependency 'MJRefresh', '~> 3.1.12'
  s.dependency 'SDWebImage', '~> 4.0.0'
  s.dependency 'MBProgressHUD', '~> 1.0.0'
  s.dependency 'HPGrowingTextView', '~> 1.1'
  s.dependency 'UMengSocialCOM', '~> 5.2.1'
  s.dependency 'YYText', '~> 1.0.7'
  s.dependency 'CVKHierarchySearcher', '~> 0.2.0'
  s.dependency 'Masonry', '~> 1.0.2'
  s.dependency 'ReactiveCocoa', '~> 2.5'
  s.dependency 'TTTAttributedLabel', '~> 2.0.0'
  
  s.dependency 'TuSdk-xh'
  s.dependency 'SFLiveManager'
  s.dependency 'SFLiveLib'

end
