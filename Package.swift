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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241228/TensorFlowLiteC.xcframework.zip", checksum: "7038cdb91dd9037e536c9d257efe41f26d8e6556328878ae2b1a26f2de17b3a7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241228/TensorFlowLiteCCoreML.xcframework.zip", checksum: "03681ec709faec1ee0ef9bfdc4e463158e912af0eecaf876cbdb77025420a46d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241228/TensorFlowLiteCMetal.xcframework.zip", checksum: "7c23d273b2fc198e4b2f43cf27ea5171c3330f085ea1abb9a88ab317271ea07e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
