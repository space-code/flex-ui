// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flex-ui",
    defaultLocalization: "en",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "FlexUI", targets: ["FlexUI"]),
    ],
    targets: [
        .target(name: "FlexUI"),
        .testTarget(name: "FlexUITests", dependencies: ["FlexUI"]),
    ]
)
