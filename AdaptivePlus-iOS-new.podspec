#
#  Be sure to run `pod spec lint AdaptivePlus-iOS-new.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "AdaptivePlus-iOS-new"
  spec.version="2.0.16"
  spec.summary      = "AdaptivePlus-iOS-new"
  spec.description  = <<-DESC
  Gitlab for marketing professionals.
                   DESC
  spec.homepage     = "https://adaptive.plus/"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "AdaptivePlus" => "dev@adaptive.plus" }
  spec.platform     = :ios
  spec.swift_version          = "4.2"
  spec.ios.deployment_target  = "11.0"
  spec.source       = { :git => "https://github.com/yervssle/AdaptivePlus-iOS-new", :tag => "#{spec.version}" }
  spec.vendored_frameworks    = "AdaptivePlus.xcframework"
  spec.pod_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.dependency "SDWebImage", "~> 5.10.4"

end
