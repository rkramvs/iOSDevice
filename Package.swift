// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iOSDevice",
    platforms: [.iOS(.v14),
                .tvOS(.v14)],
    products: [
        .library(
            name: "iOSDevice",
            targets: ["iOSDevice"]),
    ],
    targets: [
        .target(
            name: "iOSDevice",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "iOSDeviceTests",
            dependencies: ["iOSDevice"],
            path: "Tests"),
    ],
    swiftLanguageModes: [.v6]
)
