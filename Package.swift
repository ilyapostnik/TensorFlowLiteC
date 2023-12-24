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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231223/TensorFlowLiteC.xcframework.zip", checksum: "cfe554e968c64042d4ed8f7e6b1cb1821bb95442590199bb286a1c9d3b9bf0b2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231223/TensorFlowLiteCCoreML.xcframework.zip", checksum: "56592746f2a5cff6b667b45afb246dd337940ed0c10fc09cf5a92ab362223695"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231223/TensorFlowLiteCMetal.xcframework.zip", checksum: "bb4cdc57ff219a8cc41fb5593d5c1feaf017465569023d6cd8cf8e9e17d09cbe"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
