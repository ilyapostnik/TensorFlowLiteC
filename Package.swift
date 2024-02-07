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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240206/TensorFlowLiteC.xcframework.zip", checksum: "1069532d69bac43c452d0dc57bbfb42794108a1a752e6341d8c470f186e9e012"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240206/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c724f901585b6f20ddfbc5ad6241b17d25fa9ae93da919019fe531c24fdeacfc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240206/TensorFlowLiteCMetal.xcframework.zip", checksum: "459f82ca3b1730662a6cfac14196e8a111237d2eda09c14ff6155d896a7608d1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
