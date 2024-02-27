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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240226/TensorFlowLiteC.xcframework.zip", checksum: "b9e9d09fd1acdbd9b3b7300018065f1d8c61e8c89c15a6f67b0fc0b6325039a7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240226/TensorFlowLiteCCoreML.xcframework.zip", checksum: "243fe324f329dae060427243c009822eec525766d4f1db9c83494f9cb1c2c4a8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240226/TensorFlowLiteCMetal.xcframework.zip", checksum: "d65545da563a34a260883f7c202d144011a87471c69f49cde6cd58af2fca6e6d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
