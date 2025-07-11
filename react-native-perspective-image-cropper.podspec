require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name          = "ReactNativePerspectiveImageCropper"
  s.version       = package["version"]
  s.summary       = package["description"]
  s.homepage      = "https://github.com/Michaelvilleneuve/react-native-perspective-image-cropper"
  s.license       = package["license"]
  s.authors       = package["author"]
  s.platform      = :ios, "9.0"
  s.source        = { :git => "#{s.homepage}", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m,mm}"
  s.requires_arc  = true
  s.dependency 'React'
end
