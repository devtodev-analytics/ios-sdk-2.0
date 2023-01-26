Pod::Spec.new do |s|
  s.name         = "DTDAnalytics"
  s.version      = "2.2.3"
  s.summary      = "DTDAnalytics for iOS"
  s.description  = <<-DESC
  DTDAnalytics is a powerful analytical and marketing platform for mobile and web applications. Gather all the data of your application in one simple interface and analyze every bite of it. With devtodev, it is easy to find the weak points, to improve traffic source efficiency and to build strong communications with the customers.
                   DESC

  s.homepage     = "https://devtodev.com/"
  s.license      = { :type => "Apache License, Version 2.0", :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
  s.author       = { "devtodev" => "info@devtodev.com" }
  s.source       = {
    :git => "https://github.com/devtodev-analytics/ios-sdk-2.0.git",
    :branch => "main",
    :tag => "v" + s.version.to_s
  }

  s.requires_arc = true
  s.cocoapods_version = ">= 1.10.0"
  s.platform = :ios
  s.ios.deployment_target  = "9.0"
  s.swift_versions = "5.0"
  s.frameworks = "AdSupport", "AppTrackingTransparency", "StoreKit"

  s.default_subspecs = "Main"

  s.subspec "Main" do |ss|
    ss.ios.preserve_paths = "DTDAnalytics-iOS " + s.version.to_s + "/DTDAnalytics.xcframework"
    ss.ios.vendored_frameworks = "DTDAnalytics-iOS " + s.version.to_s + "/DTDAnalytics.xcframework"
    ss.ios.xcconfig = {
        "LIBRARY_SEARCH_PATHS" => "$(inherited) $(SDKROOT)/usr/lib/swift $(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME) $(TOOLCHAIN_DIR)/usr/lib/swift-5.0/$(PLATFORM_NAME)" }
  end

end
