#
#  Be sure to run `pod spec lint Auryc.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "Auryc"
  s.version      = "1.1.11"
  s.summary      = "A short description of Auryc."
  s.description  = "Long description of AurycSDK"
  s.homepage     = "http://auryc.com/AurycSDK"
  s.license      = "MIT"
  s.author       = { "Alcides Zelaya" => "alcides.zelaya@auryc.com" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.vendored_frameworks = 'Auryc.framework'
  s.source            = { :http => 'https://s3.amazonaws.com/auryc.sdk.framework/Auryc.framework_xcode10_4.0.0.zip' }
  # s.source_files  = "Auryc", "Auryc/SDKPrivate/**"
  s.exclude_files = "Auryc/Exclude"
  s.public_header_files = "Auryc.swift"
  # s.resource  = "Auryc/config/config.json"
  # s.resources = "config/*.json"
  s.dependency 'Alamofire'
  s.dependency 'SwiftProtobuf', '~> 0.9.903'
  s.dependency 'AurycJSONWebToken'
  s.dependency 'ProtocolBuffers-Swift'
  #s.dependency 'SwiftyJSON'
  #s.dependency 'DeviceKit'
  #s.dependency 'DeviceGuru'
  #s.dependency 'CryptoSwift', :git => "https://github.com/krzyzanowskim/CryptoSwift"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.2' }

end
