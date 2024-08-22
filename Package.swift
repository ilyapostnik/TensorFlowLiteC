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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240821/TensorFlowLiteC.xcframework.zip", checksum: "330cfa990414092b6e2a8493d2a058b406cb569eddfc2f5531a9306e7cff462a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240821/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5b0bd9c2e3f88b85d6a52e680b221e244ec3667d495864b361b1b9053ac7189a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240821/TensorFlowLiteCMetal.xcframework.zip", checksum: "9f44854d8424b3d6be4adc7edec6de20ba2bb805b8839df37eaa2fbb3eec2531"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
