// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250604/TensorFlowLiteC.xcframework.zip", checksum: "937ed518e3105d554d591ae34e7b0faae410f336e6d3ef4ca02c8a67532d353d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250604/TensorFlowLiteCCoreML.xcframework.zip", checksum: "68bc3bd6d26e036295cb9e247422c382c99d995b198835841d4b8033ae29073b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250604/TensorFlowLiteCMetal.xcframework.zip", checksum: "f218510e0cf282822f31853dff7e3f6f9fac476aebd5f6851beb40cd863815b3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
