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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250615/TensorFlowLiteC.xcframework.zip", checksum: "ad4da0e58834bbe3dfd0eaf9fba881cb1b6570ab85d74053dfac9c7b382ca1a4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250615/TensorFlowLiteCCoreML.xcframework.zip", checksum: "381c5c7da2e83e8a7755b18ccb85cee5675a88aa759173a17b6ebbe69def7d99"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250615/TensorFlowLiteCMetal.xcframework.zip", checksum: "9fdbaa02c412c83829b87c5e79cb8500e6957a8ec005865034d6f7eb725e4fd5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
