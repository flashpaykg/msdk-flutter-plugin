#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint ecmpplugin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flashpay_flutter_plugin'
  s.version          = '1.0.0'
  s.summary          = 'Flutter plugin of FPAY MSDK'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/flashpaykg'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Flashpay' => 'a.khrameev@flashpay.kg' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  # s.dependency 'FlashpaySDK_UI', '3.6.1'
  s.platform = :ios, '15.6'

  s.ios.deployment_target = '15.6'
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  s.vendored_frameworks = 'Libs/flashpaySDK.xcframework' 

end
