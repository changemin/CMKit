// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CMKit",
    products: [
        .library(
            name: "CMKit",
            targets: ["CMKit"]),
    ],
    targets: [
        .target(
            name: "CMKit",
            dependencies: []),
    ]
)
