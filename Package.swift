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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250209/TensorFlowLiteC.xcframework.zip", checksum: "48b1c1df17d29a0bb0050968b7acb6a1bcbb451bf4d5bafa8add09a7f8590d60"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250209/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4275cc4fe62ea73eac979321880d7cf595035edde3574195da5d470844a07595"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250209/TensorFlowLiteCMetal.xcframework.zip", checksum: "8c1aad01975182717c1a95d0b0ff795b9064543ec33012a0f9dadd845485ce6d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
