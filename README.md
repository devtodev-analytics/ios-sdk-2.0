Latest Version
--------------
##### _June 2, 2026_ - [v2.6.3](https://github.com/devtodev-analytics/ios-sdk-2.0/releases/latest)


Installation
------------

## Install via Swift Package Manager

1. In Xcode, open your project and go to **File → Add Package Dependencies…**
2. Enter the repository URL:
https://github.com/devtodev-analytics/ios-sdk-2.0
3. Choose the version rule — **Up to Next Major Version** from `2.6.2` is recommended.
4. Select the products you need:
   - **DTDAnalytics** — analytics SDK (required)
   - **DTDMessaging** — push notifications (optional, requires DTDAnalytics)
5. Click **Add Package**.

> ⚠️ If you use **DTDMessaging**, make sure to add **both** products to your target. SPM does not pull DTDAnalytics in automatically when DTDMessaging is selected.

## CocoaPods
```
platform :ios, '9.0'

target 'TargetName' do
	use_frameworks!
	pod 'DTDAnalytics'
end
```

Getting Started
---------------
Full description of the integration process of devtodev SDK and all the accessible features can be found on the page with [official devtodev documentation](https://docs.devtodev.com/integration/integration-of-sdk-v2/sdk-integration/ios).

Changelog
---------
See [releases](https://github.com/devtodev-analytics/ios-sdk-2.0/releases).
