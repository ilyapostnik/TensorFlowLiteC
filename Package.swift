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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250221/TensorFlowLiteC.xcframework.zip", checksum: "a534deaf37fb4ee54ebaf21078aff22b2c873459d7808c7a3798b567a51d2194"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250221/TensorFlowLiteCCoreML.xcframework.zip", checksum: "622d53cb697b32e6ed7c103c0e0344c7fc2bdff0d2f6bb5efc65b62e53b5dcb9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250221/TensorFlowLiteCMetal.xcframework.zip", checksum: "941651ab84dacd5f3b74b97b4983f84f463d59438d33ab53790bd0a84fb087cd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
