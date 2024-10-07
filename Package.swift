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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241006/TensorFlowLiteC.xcframework.zip", checksum: "6a13705d14929b0b901be852615000c207a3f31fa537ef988e58af839874fadb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241006/TensorFlowLiteCCoreML.xcframework.zip", checksum: "933ec49d904a049322e551a25e84cb3bf8942a8db3b0248d53cb9665a1f1b79b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241006/TensorFlowLiteCMetal.xcframework.zip", checksum: "3aa1c240484e59d711a5c6048258de4c4f74ec791cbe640fde0b39bfc20a7bab"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
