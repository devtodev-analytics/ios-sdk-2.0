// swift-tools-version:5.9

import PackageDescription

let releaseVersion = "2.6.2"
let analyticsChecksum = "253648d3f9874037a21e75d9d3ed94ef92740ce36207b43be1444755553ae4ca"
let messagingChecksum = "215aca3cc3772496a59759477431d3410755cf2a5d23652329be7ecbe087db73"

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
