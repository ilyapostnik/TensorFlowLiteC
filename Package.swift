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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250215/TensorFlowLiteC.xcframework.zip", checksum: "896007bad64f0d03a0fa7a38147d2e27b7789196decf04e533ac55ef66a7f4c1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250215/TensorFlowLiteCCoreML.xcframework.zip", checksum: "adf7996a75982e9ba3e7213fd6e4e1e0b4acb1a36085a89ed9287c020e91326d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250215/TensorFlowLiteCMetal.xcframework.zip", checksum: "1dd6f1a5eab0a7862d8f648a4d371b440806fd5073a8991ab19de830d0488d9a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
