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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250116/TensorFlowLiteC.xcframework.zip", checksum: "25dd9bd14f8f78b2a5ae515d957472313a347836900a2a174a313503a3ed5a6b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250116/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5f480917661409a3c84b8ea03dc00be2382110c508c39ef011515ffd89848325"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250116/TensorFlowLiteCMetal.xcframework.zip", checksum: "4e0f224661d8a5b1d554df96b397c1d8e146458b0af6d64ce9d9b8fd9da50e16"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
