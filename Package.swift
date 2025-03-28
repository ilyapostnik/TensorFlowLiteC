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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250327/TensorFlowLiteC.xcframework.zip", checksum: "fa40b8baf409ca9e166bbc821770e7c8d84499d167b03745b27b9df05e8377ae"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250327/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b82145d0b9a922aec83fc52bd492930dc99ede02fcd18cb01a32a22613a5cd8e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250327/TensorFlowLiteCMetal.xcframework.zip", checksum: "fda933d5cc365866260f5835fa3b4a953bf5492a41f894ea78312f195b646249"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
