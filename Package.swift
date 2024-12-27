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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241226/TensorFlowLiteC.xcframework.zip", checksum: "c12c4f033c2480fa5ef0eb0b8fcdb93edde8a568db819d925485179de5fdc88e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241226/TensorFlowLiteCCoreML.xcframework.zip", checksum: "44db3e2356e59f53269f9e63858f57cc35f341806e9bbc9c89de2b2e8ff7bc7e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241226/TensorFlowLiteCMetal.xcframework.zip", checksum: "08a8307478332d80268a8a390059277950aec291c1b60a0ff73013a25140bba9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
