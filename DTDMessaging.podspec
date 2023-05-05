Pod::Spec.new do |s|
  s.name         = "DTDMessaging"
  s.version      = "2.2.5"
  s.summary      = "DTDMessaging for iOS"
  s.description  = <<-DESC
  DTDMessaging add-on for the DTDAnalytics platform allows you to work with push notifications.
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
  s.frameworks = "UserNotifications"

  s.default_subspecs = "Main"
  s.dependency "DTDAnalytics", ">= 2.1.0"

  s.subspec "Main" do |ss|
    ss.ios.preserve_paths = "DTDMessaging-iOS " + s.version.to_s + "/DTDMessaging.xcframework"
    ss.ios.vendored_frameworks = "DTDMessaging-iOS " + s.version.to_s + "/DTDMessaging.xcframework"
    ss.ios.xcconfig = {
        "LIBRARY_SEARCH_PATHS" => "$(inherited) $(SDKROOT)/usr/lib/swift $(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME) $(TOOLCHAIN_DIR)/usr/lib/swift-5.0/$(PLATFORM_NAME)" }
  end

end
