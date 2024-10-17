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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241016/TensorFlowLiteC.xcframework.zip", checksum: "35c4cf901bb96cee92f5f53ea56e3573d84764144e60c5cc03c9545a9b2c9e06"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241016/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9d1502a2a95f04216559541fd1eb048cfbb07f2417200d9c766f5f100e4a3b6b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241016/TensorFlowLiteCMetal.xcframework.zip", checksum: "f443d121dd9a6d5beb1571a0eadc4ecf1c75e5303b2972fc7fc970e97d651712"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
