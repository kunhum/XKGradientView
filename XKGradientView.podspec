#
# Be sure to run `pod lib lint XKGradientView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XKGradientView'
  s.version          = '1.0.0'
  s.summary          = '颜色渐变'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '颜色渐变，包括label, view, textfield, textview(最近项目很多地方都要渐变，烦不胜烦)'

  s.homepage         = 'https://github.com/kunhum/XKGradientView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kunhum' => 'kunhum@163.com' }
  s.source           = { :git => 'https://github.com/kunhum/XKGradientView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'XKGradientView/Classes/XKGradientView/*.{h,m}'
  
  # s.resource_bundles = {
  #   'XKGradientView' => ['XKGradientView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
