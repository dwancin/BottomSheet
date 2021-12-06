// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BottomSheet",
    platforms: [
            .iOS("15.0")
        ],
    products: [
        .library(
            name: "BottomSheet",
            targets: ["BottomSheet"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "BottomSheet",
            dependencies: []),
        .testTarget(
            name: "BottomSheetTests",
            dependencies: ["BottomSheet"]),
    ]
)
