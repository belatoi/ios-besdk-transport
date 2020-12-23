
Pod::Spec.new do |spec|
  spec.name             = "BESDK"
  spec.version          = "1.0.2"
  spec.summary          = "BESDK is a framework use to integrate BE's service into another app."
  spec.homepage         = "https://github.com/belatoi/besdk-transport.git"
  spec.license          = "MIT"
  spec.author           = { "duongpham" => "duong.pham@be.com.vn" }
  spec.platform         = :ios, "9.0"
  spec.swift_version    = "5.0" 
  spec.source           = { :git => "https://github.com/belatoi/besdk-transport.git", :tag => "v#{spec.version}" }

  spec.source_files   = "BESDK.framework/Headers/*.{swift,h,m}"
  spec.public_header_files = "BESDK.framework/Headers/*.h"
  spec.ios.vendored_frameworks   = 'BESDK.framework'
  spec.ios.deployment_target = '9.0'

  spec.dependency 'Alamofire'
  spec.dependency 'NVActivityIndicatorView/AppExtension', '~> 4.8.0'
  spec.dependency 'NKModalViewManager'
  spec.dependency 'GoogleMaps'
  spec.dependency 'SwiftyJSON'
  spec.dependency 'SwiftDate'
  spec.dependency 'AFDateHelper'
  spec.dependency 'CryptoSwift'
  spec.dependency 'SwiftLocation', '~> 3.2'
  spec.dependency 'SwiftGen'
  spec.dependency 'Haptica'
  spec.dependency 'SwiftEntryKit'
  spec.dependency 'SwiftRichString'
  spec.dependency 'SwiftyAttributes'
  spec.dependency 'SDWebImage'
  spec.dependency 'AMPopTip'
  spec.dependency 'SwiftIcons_'
  spec.dependency 'SwiftySound'

end
