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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240603/TensorFlowLiteC.xcframework.zip", checksum: "d43716bab74a0b555fc29598cc064478e83c9a86d7a5d93a1c068f38a70a01e3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240603/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3e6177b2d3815fffd6b6ded47367a78bd91fc22872df2ef8ae5829d6ffe395a6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240603/TensorFlowLiteCMetal.xcframework.zip", checksum: "0318e8d3859b7b4a70b785967b56c7448635b7cc37fc23f18788db3438147d16"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
