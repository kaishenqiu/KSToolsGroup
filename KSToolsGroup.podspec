#
# Be sure to run `pod lib lint KSToolsGroup.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KSToolsGroup'
  s.version          = '0.1.15'
  s.summary          = 'some tools in common use '
  s.swift_version    = '4.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                       some tools common use from kaishenqiu
                       DESC

  s.homepage         = 'https://github.com/kaishenqiu/KSToolsGroup'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '375752785@qq.com' => 'qiuxk@example.com' }
  s.source           = { :git => 'https://github.com/kaishenqiu/KSToolsGroup.git', :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KSToolsGroup/**/*.swift'
  
  # s.resource_bundles = {
  #   'KSToolsGroup' => ['KSToolsGroup/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h's
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'MJRefresh'
end
