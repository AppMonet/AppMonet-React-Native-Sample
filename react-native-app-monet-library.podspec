require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-app-monet-library"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-app-monet-library
                   DESC
  s.homepage     = "https://appmonet.com"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Jose Portocarrero" => "jose.portocarrero@appmonet.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/AppMonet/AppMonet-React-Native-Sample.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency 'AppMonet_Mopub-universal'
  s.dependency 'mopub-ios-sdk'
end

