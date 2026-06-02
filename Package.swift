// swift-tools-version:5.9

import PackageDescription

let releaseVersion = "2.6.3"
let analyticsChecksum = "32f5dd4337230e7615b281d86080ebf8604c67d60938e6f1c6c621d94abb6c95"
let messagingChecksum = "f77ec7193b27cf990c9d8e6c81416300ac20b777d99f232e17fa183c47f84305"

let releaseBase = "https://github.com/devtodev-analytics/ios-sdk-2.0/releases/download/v\(releaseVersion)"

let package = Package(
    name: "DTDAnalytics",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "DTDAnalytics",
            targets: ["DTDAnalytics"]
        ),
        .library(
            name: "DTDMessaging",
            targets: ["DTDMessaging"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "DTDAnalytics",
            url: "\(releaseBase)/DTDAnalytics.xcframework.zip",
            checksum: analyticsChecksum
        ),
        .binaryTarget(
            name: "DTDMessaging",
            url: "\(releaseBase)/DTDMessaging.xcframework.zip",
            checksum: messagingChecksum
        )
    ]
)
