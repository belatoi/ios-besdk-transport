
Pod::Spec.new do |spec|
  spec.name             = "BESDK"
  spec.version          = "1.0.9"
  spec.summary          = "BESDK is a framework use to integrate BE's service into another app."
  spec.homepage         = "https://github.com/belatoi/besdk-transport.git"
  spec.license          = "MIT"
  spec.author           = { "duongpham" => "duong.pham@be.com.vn" }
  spec.platform         = :ios, "11.0"
  spec.swift_version    = "5.0" 
  spec.source           = { :git => "https://github.com/belatoi/besdk-transport.git", :tag => "v#{spec.version}" }

  spec.source_files   = "BESDK.framework/Headers/*.{swift,h,m}"
  spec.public_header_files = "BESDK.framework/Headers/*.h"
  spec.ios.vendored_frameworks   = 'BESDK.framework'
  spec.ios.deployment_target = '11.0'
spec.static_framework = true
 spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
 spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.dependency 'Alamofire', '~> 5.0'
  spec.dependency 'NVActivityIndicatorView/AppExtension', '~> 4.8.0'
  spec.dependency 'NKModalViewManager'
  spec.dependency 'SwiftyJSON'
 spec.dependency 'GoogleMaps'
  spec.dependency 'SwiftDate', '~> 6.1.0'
  spec.dependency 'AFDateHelper'
  spec.dependency 'CryptoSwift'
  spec.dependency 'SwiftLocation', '~> 3.2.3'
  spec.dependency 'SwiftGen'
  spec.dependency 'Haptica'
  spec.dependency 'SwiftEntryKit', '~> 1.2.7'
  spec.dependency 'SwiftyAttributes'
  spec.dependency 'SDWebImage'
  spec.dependency 'AMPopTip'
  spec.dependency 'SwiftySound'

end
