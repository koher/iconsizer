// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iconsizer",
    dependencies: [
        .package(url: "https://github.com/koher/EasyImagy.git", from: "0.4.0-alpha"),
    ],
    targets: [
        .target(
            name: "iconsizer",
            dependencies: ["EasyImagy"]),
    ]
)
