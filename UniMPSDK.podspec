Pod::Spec.new do |s|
  s.name = "UniMPSDK"
  s.version = "3.7.9"
  s.summary = "UniMPSDK."
  s.homepage     = 'https://github.com/tangchunhui/UniMPSDK'
  s.license  = { :type => "BSD", :file => "license.md" }
  s.authors = {"tangchunhui"=>"1203720671@qq.com"}
  s.source = { :git => 'https://github.com/tangchunhui/UniMPSDK.framework.git', :tag => s.version.to_s }

  s.platform = :ios, '10.0'
  s.source_files = "Core/Headers/*", "Core/Headers/**/*"
  s.frameworks = ["JavaScriptCore", "CoreMedia", "MediaPlayer", "AVFoundation", "AVKit", "GLKit", "OpenGLES", "CoreText", "QuartzCore", "CoreGraphics", "QuickLook", "CoreTelephony", "AssetsLibrary", "Photos", "MetalKit", "SystemConfiguration", "Security", "CoreMotion", "CFNetwork"]
  s.libraries = ["c++", "iconv", "sqlite3.0", "z"]

  s.ios.public_header_files = "Core/Headers/*.h", "Core/Headers/**/*.h"
  s.ios.vendored_frameworks = 'Core/Libs/*.framework'
  s.vendored_libraries = 'Core/Libs/*.a'

  s.resources = "Core/Resources/*"
  s.dependency 'SDWebImage'
  s.dependency 'AlipaySDK-iOS'
  s.dependency 'WechatOpenSDK-XCFramework'

end