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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240626/TensorFlowLiteC.xcframework.zip", checksum: "3fd41e9b1ce6eaddd93568526a682f587e85a95da0a0f54e42ac9e15c69845fd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240626/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3de8668e0b2fd879f11703c49f04f7056d1db62d40e93cd8d9598aa8d5f0e6fd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240626/TensorFlowLiteCMetal.xcframework.zip", checksum: "1cfce40f5a4844a8289006d335ec25c33db2e9dc9384eef0edc8903652bfb4c5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
