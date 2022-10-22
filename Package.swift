// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "liblzma",
    products: [
        .library(name: "lzma", targets: ["liblzma"]),
        .library(
            name: "liblzma",
            targets: ["liblzma"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "lzma",
            dependencies: ["lzmac"]),
        .target(name: "lzmac", dependencies: ["liblzma"]),
        .binaryTarget(name: "liblzma", path: "Sources/liblzma/liblzma.xcframework"),
        .testTarget(
            name: "liblzma-swiftTests",
            dependencies: ["lzma"]),
    ]
)
