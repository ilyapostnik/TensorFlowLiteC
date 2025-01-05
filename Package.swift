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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250104/TensorFlowLiteC.xcframework.zip", checksum: "eba2799d56394de80f63f0731c6d13557a9d8d82da11902715f0c1c9371b2700"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250104/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2e7cf2d2f5f17a8b48e4d31d36d8523701944aa2cde9d9b3320fc60e65332c96"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250104/TensorFlowLiteCMetal.xcframework.zip", checksum: "8bb07df96f2c481a6fbb68d0f98c4bca0e780b69849495a80ac39079bb667fd9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
