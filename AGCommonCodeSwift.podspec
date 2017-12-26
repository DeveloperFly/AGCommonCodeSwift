#
# Be sure to run `pod lib lint AGCommonCodeSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AGCommonCodeSwift'
  s.version          = '0.1.0'
  s.summary          = 'AGCommonCodeSwift Is used for swift UIKit extension for use by storyboard or save time.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: In this pod have diffrent types of extensions like UIButtonExteniosn, UIView Extension, UITextViewExtension, UITextFieldExtension, UILabelExtension, UICollectionVIewCellExtension, UITabelViewExtension, UIImageExtension and String Extension. In these extensions we have diffrent type of Functionality like corner radius, border width etc. and I will update this pod in future according to requirement.
                       DESC

  s.homepage         = 'https://github.com/DeveloperFly/AGCommonCodeSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aman Gupta' => 'aman19ish@gmail.com' }
  s.source           = { :git => 'https://github.com/DeveloperFly/AGCommonCodeSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'AGCommonCodeSwift/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AGCommonCodeSwift' => ['AGCommonCodeSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
