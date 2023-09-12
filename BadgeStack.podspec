#
# Be sure to run `pod lib lint BadgeStack.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BadgeStack'
  s.version          = '0.1.2'
  s.summary          = 'BadgeStack is a UIKit extension for easy badge management in iOS apps.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'BadgeStack is a versatile and lightweight UIKit extension that facilitates the easy integration and management of badge systems within your iOS applications. Utilize BadgeStack to dynamically add, arrange, and style badges with seamless layout handling, enhancing the visual feedback and user experience of your app with minimal setup and code complexity. Take control of your badge systems with BadgeStack.'
                       DESC

  s.homepage         = 'https://github.com/kvngwxxk/BadgeStack'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kvngwxxk' => 'kngwk.bsns@gmail.com' }
  s.source           = { :git => 'https://github.com/kvngwxxk/BadgeStack.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.swift_version = '5.0'
  s.ios.deployment_target = '13.0'

  s.source_files = 'BadgeStack/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BadgeStack' => ['BadgeStack/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
