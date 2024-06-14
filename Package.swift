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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240613/TensorFlowLiteC.xcframework.zip", checksum: "fd498baae5dc8edc48a7f6e007fc1f73728bd97c1e9b6a47680559a923c04a3e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240613/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e9c36e87001b412fec5dcbc744b1ea60a2743db1a1b0d5c39c16b0ff5d2823ce"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240613/TensorFlowLiteCMetal.xcframework.zip", checksum: "2c225001bfa0b493e55a0cd2b8410becc4cbc853e2bc4fb25d95202b88212bd6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
